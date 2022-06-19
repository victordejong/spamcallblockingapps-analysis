package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
/* renamed from: com.amazonaws.services.s3.model.ListVersionsRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ListVersionsRequest.class */
public class ListVersionsRequest extends AmazonWebServiceRequest {
    private String bucketName;
    private String delimiter;
    private String encodingType;
    private String keyMarker;
    private Integer maxResults;
    private String prefix;
    private String versionIdMarker;

    public ListVersionsRequest() {
    }

    public ListVersionsRequest(String str, String str2, String str3, String str4, String str5, Integer num) {
        setBucketName(str);
        setPrefix(str2);
        setKeyMarker(str3);
        setVersionIdMarker(str4);
        setDelimiter(str5);
        setMaxResults(num);
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getDelimiter() {
        return this.delimiter;
    }

    public String getEncodingType() {
        return this.encodingType;
    }

    public String getKeyMarker() {
        return this.keyMarker;
    }

    public Integer getMaxResults() {
        return this.maxResults;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public String getVersionIdMarker() {
        return this.versionIdMarker;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setDelimiter(String str) {
        this.delimiter = str;
    }

    public void setEncodingType(String str) {
        this.encodingType = str;
    }

    public void setKeyMarker(String str) {
        this.keyMarker = str;
    }

    public void setMaxResults(Integer num) {
        this.maxResults = num;
    }

    public void setPrefix(String str) {
        this.prefix = str;
    }

    public void setVersionIdMarker(String str) {
        this.versionIdMarker = str;
    }

    public ListVersionsRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public ListVersionsRequest withDelimiter(String str) {
        setDelimiter(str);
        return this;
    }

    public ListVersionsRequest withEncodingType(String str) {
        setEncodingType(str);
        return this;
    }

    public ListVersionsRequest withKeyMarker(String str) {
        setKeyMarker(str);
        return this;
    }

    public ListVersionsRequest withMaxResults(Integer num) {
        setMaxResults(num);
        return this;
    }

    public ListVersionsRequest withPrefix(String str) {
        setPrefix(str);
        return this;
    }

    public ListVersionsRequest withVersionIdMarker(String str) {
        setVersionIdMarker(str);
        return this;
    }
}
