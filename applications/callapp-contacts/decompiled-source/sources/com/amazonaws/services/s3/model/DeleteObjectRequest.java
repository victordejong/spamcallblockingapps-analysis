package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/DeleteObjectRequest.class */
public class DeleteObjectRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;
    private boolean isRequesterPays;
    private String key;

    public DeleteObjectRequest(String str, String str2) {
        setBucketName(str);
        setKey(str2);
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getKey() {
        return this.key;
    }

    public boolean isRequesterPays() {
        return this.isRequesterPays;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setRequesterPays(boolean z) {
        this.isRequesterPays = z;
    }

    public DeleteObjectRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public DeleteObjectRequest withKey(String str) {
        setKey(str);
        return this;
    }

    public DeleteObjectRequest withRequesterPays(boolean z) {
        setRequesterPays(z);
        return this;
    }
}
