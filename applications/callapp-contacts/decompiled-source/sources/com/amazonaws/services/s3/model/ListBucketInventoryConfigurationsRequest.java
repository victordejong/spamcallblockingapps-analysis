package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ListBucketInventoryConfigurationsRequest.class */
public class ListBucketInventoryConfigurationsRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;
    private String continuationToken;

    public String getBucketName() {
        return this.bucketName;
    }

    public String getContinuationToken() {
        return this.continuationToken;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setContinuationToken(String str) {
        this.continuationToken = str;
    }

    public ListBucketInventoryConfigurationsRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public ListBucketInventoryConfigurationsRequest withContinuationToken(String str) {
        setContinuationToken(str);
        return this;
    }
}
