package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.GetBucketLocationRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/GetBucketLocationRequest.class */
public class GetBucketLocationRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;

    public GetBucketLocationRequest(String str) {
        this.bucketName = str;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public GetBucketLocationRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }
}
