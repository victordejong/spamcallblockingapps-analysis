package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
/* renamed from: com.amazonaws.services.s3.model.ListMultipartUploadsRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ListMultipartUploadsRequest.class */
public class ListMultipartUploadsRequest extends AmazonWebServiceRequest {
    private String bucketName;
    private String delimiter;
    private String encodingType;
    private String keyMarker;
    private Integer maxUploads;
    private String prefix;
    private String uploadIdMarker;

    public ListMultipartUploadsRequest(String str) {
        this.bucketName = str;
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

    public Integer getMaxUploads() {
        return this.maxUploads;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public String getUploadIdMarker() {
        return this.uploadIdMarker;
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

    public void setMaxUploads(Integer num) {
        this.maxUploads = num;
    }

    public void setPrefix(String str) {
        this.prefix = str;
    }

    public void setUploadIdMarker(String str) {
        this.uploadIdMarker = str;
    }

    public ListMultipartUploadsRequest withBucketName(String str) {
        this.bucketName = str;
        return this;
    }

    public ListMultipartUploadsRequest withDelimiter(String str) {
        setDelimiter(str);
        return this;
    }

    public ListMultipartUploadsRequest withEncodingType(String str) {
        setEncodingType(str);
        return this;
    }

    public ListMultipartUploadsRequest withKeyMarker(String str) {
        this.keyMarker = str;
        return this;
    }

    public ListMultipartUploadsRequest withMaxUploads(int i) {
        this.maxUploads = Integer.valueOf(i);
        return this;
    }

    public ListMultipartUploadsRequest withPrefix(String str) {
        setPrefix(str);
        return this;
    }

    public ListMultipartUploadsRequest withUploadIdMarker(String str) {
        this.uploadIdMarker = str;
        return this;
    }
}
