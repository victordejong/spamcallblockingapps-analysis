package com.amazonaws.services.p101s3;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.services.p101s3.internal.S3DirectSpi;
import com.amazonaws.services.p101s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.p101s3.model.GetObjectRequest;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.p101s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.p101s3.model.PutObjectRequest;
import com.amazonaws.services.p101s3.model.PutObjectResult;
import com.amazonaws.services.p101s3.model.S3Object;
import com.amazonaws.services.p101s3.model.UploadPartRequest;
import com.amazonaws.services.p101s3.model.UploadPartResult;
/* renamed from: com.amazonaws.services.s3.AmazonS3 */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/AmazonS3.class */
public interface AmazonS3 extends S3DirectSpi {
    /* renamed from: a */
    CompleteMultipartUploadResult mo38448a(CompleteMultipartUploadRequest completeMultipartUploadRequest) throws AmazonClientException, AmazonServiceException;

    /* renamed from: a */
    InitiateMultipartUploadResult mo38446a(InitiateMultipartUploadRequest initiateMultipartUploadRequest) throws AmazonClientException, AmazonServiceException;

    /* renamed from: a */
    PutObjectResult mo38445a(PutObjectRequest putObjectRequest) throws AmazonClientException, AmazonServiceException;

    /* renamed from: a */
    S3Object mo38447a(GetObjectRequest getObjectRequest) throws AmazonClientException, AmazonServiceException;

    @Override // com.amazonaws.services.p101s3.internal.S3DirectSpi
    /* renamed from: a */
    UploadPartResult mo38419a(UploadPartRequest uploadPartRequest) throws AmazonClientException, AmazonServiceException;

    /* renamed from: a */
    void mo38449a(AbortMultipartUploadRequest abortMultipartUploadRequest) throws AmazonClientException, AmazonServiceException;
}
