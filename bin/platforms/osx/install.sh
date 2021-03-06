#! /bin/sh
#
# install.sh
#
# Install minimal packages by homebrew.
#
# Copyright (C) 2018 yukihira1992 <hirayama@cancerscan.jp>
#
# Distributed under terms of the MIT license.
#

echo "Install to OSX."

# install Homebrew
echo "Install homebrew."
if !(type brew > /dev/null 2>&1); then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

# install brew-file
brew install rcmdnk/file/brew-file

# install vim
brew install vim --enable-interp=python,python3,ruby

# install packages by brew-file
brew file install
