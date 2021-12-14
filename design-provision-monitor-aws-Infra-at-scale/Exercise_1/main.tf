provider "aws" {
  region = "us-east-1"
}


# Provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "udacity-t2" {
  ami = "ami-0ed9277fb7eb570c9"
  instance_type = "t2.micro"
  subnet_id = "subnet-00ced6420373b641a"
  count = 4
  tags = {
    Name = "Udacity T2"
  }
}


# Provision 2 m4.large EC2 instances named Udacity M4
resource "aws_instance" "udacity-m4" {
  ami = "ami-0ed9277fb7eb570c9"
  instance_type = "m4.large"
  subnet_id = "subnet-0611f25fbf764c031"
  count = 2
  tags = {
    Name = "Udacity M4"
  }
}
