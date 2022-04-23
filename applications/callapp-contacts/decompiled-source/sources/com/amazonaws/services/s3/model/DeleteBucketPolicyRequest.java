package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/DeleteBucketPolicyRequest.class */
public class DeleteBucketPolicyRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    public DeleteBucketPolicyRequest(String str) {
        this.bucketName = str;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public DeleteBucketPolicyRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }
}
