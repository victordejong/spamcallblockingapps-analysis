package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/DeleteObjectTaggingRequest.class */
public class DeleteObjectTaggingRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;
    private String key;
    private String versionId;

    public DeleteObjectTaggingRequest(String str, String str2) {
        this.bucketName = str;
        this.key = str2;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getKey() {
        return this.key;
    }

    public String getVersionId() {
        return this.versionId;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setVersionId(String str) {
        this.versionId = str;
    }

    public DeleteObjectTaggingRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public DeleteObjectTaggingRequest withKey(String str) {
        setKey(str);
        return this;
    }

    public DeleteObjectTaggingRequest withVersionId(String str) {
        setVersionId(str);
        return this;
    }
}
