package com.amazonaws.services.p017s3;

import com.amazonaws.AmazonClientException;
import com.amazonaws.AmazonServiceException;
import com.amazonaws.regions.Region;
import com.amazonaws.services.p017s3.model.AbortMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.CompleteMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.CompleteMultipartUploadResult;
import com.amazonaws.services.p017s3.model.GetObjectRequest;
import com.amazonaws.services.p017s3.model.InitiateMultipartUploadRequest;
import com.amazonaws.services.p017s3.model.InitiateMultipartUploadResult;
import com.amazonaws.services.p017s3.model.ListPartsRequest;
import com.amazonaws.services.p017s3.model.PartListing;
import com.amazonaws.services.p017s3.model.PutObjectRequest;
import com.amazonaws.services.p017s3.model.PutObjectResult;
import com.amazonaws.services.p017s3.model.S3Object;
import com.amazonaws.services.p017s3.model.UploadPartRequest;
import com.amazonaws.services.p017s3.model.UploadPartResult;
/* renamed from: com.amazonaws.services.s3.AmazonS3 */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/AmazonS3.class */
public interface AmazonS3 {
    void abortMultipartUpload(AbortMultipartUploadRequest abortMultipartUploadRequest) throws AmazonClientException, AmazonServiceException;

    CompleteMultipartUploadResult completeMultipartUpload(CompleteMultipartUploadRequest completeMultipartUploadRequest) throws AmazonClientException, AmazonServiceException;

    S3Object getObject(GetObjectRequest getObjectRequest) throws AmazonClientException, AmazonServiceException;

    InitiateMultipartUploadResult initiateMultipartUpload(InitiateMultipartUploadRequest initiateMultipartUploadRequest) throws AmazonClientException, AmazonServiceException;

    PartListing listParts(ListPartsRequest listPartsRequest) throws AmazonClientException, AmazonServiceException;

    PutObjectResult putObject(PutObjectRequest putObjectRequest) throws AmazonClientException, AmazonServiceException;

    void setRegion(Region region) throws IllegalArgumentException;

    UploadPartResult uploadPart(UploadPartRequest uploadPartRequest) throws AmazonClientException, AmazonServiceException;
}
