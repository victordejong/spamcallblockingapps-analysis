package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.DeleteBucketRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/DeleteBucketRequest.class */
public class DeleteBucketRequest extends AmazonWebServiceRequest implements S3AccelerateUnsupported, Serializable {
    private String bucketName;

    public DeleteBucketRequest(String str) {
        setBucketName(str);
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }
}
