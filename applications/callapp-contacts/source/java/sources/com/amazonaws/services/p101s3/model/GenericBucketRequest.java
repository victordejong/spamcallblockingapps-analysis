package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.GenericBucketRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/GenericBucketRequest.class */
public class GenericBucketRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    public GenericBucketRequest(String str) {
        this.bucketName = str;
    }

    @Deprecated
    public String getBucket() {
        return this.bucketName;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public GenericBucketRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }
}
