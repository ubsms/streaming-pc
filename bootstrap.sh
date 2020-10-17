#!/bin/bash

sudo apt install -y python3-venv python3-apt

python3 -m venv venv
source venv/bin/activate
pip install --upgrade pip
pip install ansible

curl -LO https://github.com/ubsms/streaming-pc-setup/archive/master.tar.gz

tar -xvzf master.tar.gz --strip-components=1

ansible-playbook build.yml