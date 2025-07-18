provider "aws" {
  region = "ap-southeast-1"
}

terraform {
  required_version = ">= 1.0"

  backend "s3" {
    bucket = "sctp-ce10-tfstate"
    key    = "torwei-ce10-coaching17.tfstate"
    region = "ap-southeast-1"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}