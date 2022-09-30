#!/bin/bash

echo "**********************************************"
echo "***** Obtain Container Images for Demo *******"
echo "**********************************************"

podman login registry.ocp4.example.com:8443 -u developer -p developer

podman pull registry.ocp4.example.com:8443/ubi8/ubi

podman pull registry.ocp4.example.com:8443/ubi8/ubi-minimal:8.5

podman pull registry.ocp4.example.com:8443/ubi9/ubi:9.0.0-1468

podman pull registry.ocp4.example.com:8443/ubi8/httpd-24

podman pull registry.ocp4.example.com:8443/redhattraining/hello-world-nginx:v1.0


echo "**********************************************"
echo "******* Cloning OCP_Demo Repository **********"
echo "**********************************************"

cd ~/Github
git clone https://github.com/tmichett/OCP_Demos.git
cd 
