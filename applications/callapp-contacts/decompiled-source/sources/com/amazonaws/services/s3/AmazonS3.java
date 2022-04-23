package com.amazonaws.services.s3;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.services.s3.internal.S3DirectSpi;
import com.amazonaws.services.s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.s3.model.GetObjectRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.s3.model.PutObjectRequest;
import com.amazonaws.services.s3.model.PutObjectResult;
import com.amazonaws.services.s3.model.S3Object;
import com.amazonaws.services.s3.model.UploadPartRequest;
import com.amazonaws.services.s3.model.UploadPartResult;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/AmazonS3.class */
public interface AmazonS3 extends S3DirectSpi {
    CompleteMultipartUploadResult a(CompleteMultipartUploadRequest completeMultipartUploadRequest) throws AmazonClientException, AmazonServiceException;

    InitiateMultipartUploadResult a(InitiateMultipartUploadRequest initiateMultipartUploadRequest) throws AmazonClientException, AmazonServiceException;

    PutObjectResult a(PutObjectRequest putObjectRequest) throws AmazonClientException, AmazonServiceException;

    S3Object a(GetObjectRequest getObjectRequest) throws AmazonClientException, AmazonServiceException;

    @Override // com.amazonaws.services.s3.internal.S3DirectSpi
    UploadPartResult a(UploadPartRequest uploadPartRequest) throws AmazonClientException, AmazonServiceException;

    void a(AbortMultipartUploadRequest abortMultipartUploadRequest) throws AmazonClientException, AmazonServiceException;
}
