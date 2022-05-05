package com.amazonaws.services.p017s3.model;

import com.amazonaws.AmazonWebServiceRequest;
/* renamed from: com.amazonaws.services.s3.model.AbortMultipartUploadRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/AbortMultipartUploadRequest.class */
public class AbortMultipartUploadRequest extends AmazonWebServiceRequest {
    public String bucketName;
    public String key;
    public String uploadId;

    public AbortMultipartUploadRequest(String str, String str2, String str3) {
        this.bucketName = str;
        this.key = str2;
        this.uploadId = str3;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getKey() {
        return this.key;
    }

    public String getUploadId() {
        return this.uploadId;
    }
}
