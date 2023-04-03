# Use the official CentOS 7 image as the base image
FROM centos:7

# Install Apache and other necessary packages
RUN yum update -y && \
    yum install -y httpd && \
    yum clean all

# Expose port 80 for HTTP traffic
EXPOSE 80

# Start the Apache service
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]

