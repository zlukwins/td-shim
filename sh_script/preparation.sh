#!/bin/bash

preparation() {
    # apply the patch set for ring
    pushd library/ring
    git reset --hard 52b239c52ee7756fbc3731f59d7236ee6f4af719
    git clean -f -d
    patch -p 1 -i ../patches/ring.diff
    popd
}

preparation
