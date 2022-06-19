package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
/* renamed from: com.amazonaws.services.s3.model.ListObjectsV2Request */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ListObjectsV2Request.class */
public class ListObjectsV2Request extends AmazonWebServiceRequest {
    private String bucketName;
    private String continuationToken;
    private String delimiter;
    private String encodingType;
    private boolean fetchOwner;
    private boolean isRequesterPays;
    private Integer maxKeys;
    private String prefix;
    private String startAfter;

    public String getBucketName() {
        return this.bucketName;
    }

    public String getContinuationToken() {
        return this.continuationToken;
    }

    public String getDelimiter() {
        return this.delimiter;
    }

    public String getEncodingType() {
        return this.encodingType;
    }

    public Integer getMaxKeys() {
        return this.maxKeys;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public String getStartAfter() {
        return this.startAfter;
    }

    public boolean isFetchOwner() {
        return this.fetchOwner;
    }

    public boolean isRequesterPays() {
        return this.isRequesterPays;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setContinuationToken(String str) {
        this.continuationToken = str;
    }

    public void setDelimiter(String str) {
        this.delimiter = str;
    }

    public void setEncodingType(String str) {
        this.encodingType = str;
    }

    public void setFetchOwner(boolean z) {
        this.fetchOwner = z;
    }

    public void setMaxKeys(Integer num) {
        this.maxKeys = num;
    }

    public void setPrefix(String str) {
        this.prefix = str;
    }

    public void setRequesterPays(boolean z) {
        this.isRequesterPays = z;
    }

    public void setStartAfter(String str) {
        this.startAfter = str;
    }

    public ListObjectsV2Request withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public ListObjectsV2Request withContinuationToken(String str) {
        setContinuationToken(str);
        return this;
    }

    public ListObjectsV2Request withDelimiter(String str) {
        setDelimiter(str);
        return this;
    }

    public ListObjectsV2Request withEncodingType(String str) {
        setEncodingType(str);
        return this;
    }

    public ListObjectsV2Request withFetchOwner(boolean z) {
        setFetchOwner(z);
        return this;
    }

    public ListObjectsV2Request withMaxKeys(Integer num) {
        setMaxKeys(num);
        return this;
    }

    public ListObjectsV2Request withPrefix(String str) {
        setPrefix(str);
        return this;
    }

    public ListObjectsV2Request withRequesterPays(boolean z) {
        setRequesterPays(z);
        return this;
    }

    public ListObjectsV2Request withStartAfter(String str) {
        setStartAfter(str);
        return this;
    }
}
