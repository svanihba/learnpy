#!/bin/bash

[[ $_ != $0 ]] && echo "Setting up the devel environment" || { echo "Please source this script:\n>> source setup.sh"; exit -1; }
[[ -f ~/.bash_profile ]] && source ~/.bash_profile

export DEVEL_ROOT="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
export DEVEL_VENV="learnpy"
echo "Switching to virtualenv: $DEVEL_VENV"

# Python setup
workon $DEVEL_VENV
cd $DEVEL_ROOT
echo 'DEVEL_ROOT="'$DEVEL_ROOT'"'
export PYTHONPATH=$DEVEL_ROOT/pysrc:$DEVEL_ROOT/pysrc/pb:$PYTHONPATH

