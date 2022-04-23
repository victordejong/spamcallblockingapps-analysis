package com.amazonaws.services.s3.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ObjectListing.class */
public class ObjectListing implements Serializable {
    private String bucketName;
    private String delimiter;
    private String encodingType;
    private boolean isTruncated;
    private String marker;
    private int maxKeys;
    private String nextMarker;
    private String prefix;
    private List<S3ObjectSummary> objectSummaries = new ArrayList();
    private List<String> commonPrefixes = new ArrayList();

    public String getBucketName() {
        return this.bucketName;
    }

    public List<String> getCommonPrefixes() {
        return this.commonPrefixes;
    }

    public String getDelimiter() {
        return this.delimiter;
    }

    public String getEncodingType() {
        return this.encodingType;
    }

    public String getMarker() {
        return this.marker;
    }

    public int getMaxKeys() {
        return this.maxKeys;
    }

    public String getNextMarker() {
        return this.nextMarker;
    }

    public List<S3ObjectSummary> getObjectSummaries() {
        return this.objectSummaries;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public boolean isTruncated() {
        return this.isTruncated;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setCommonPrefixes(List<String> list) {
        this.commonPrefixes = list;
    }

    public void setDelimiter(String str) {
        this.delimiter = str;
    }

    public void setEncodingType(String str) {
        this.encodingType = str;
    }

    public void setMarker(String str) {
        this.marker = str;
    }

    public void setMaxKeys(int i) {
        this.maxKeys = i;
    }

    public void setNextMarker(String str) {
        this.nextMarker = str;
    }

    public void setPrefix(String str) {
        this.prefix = str;
    }

    public void setTruncated(boolean z) {
        this.isTruncated = z;
    }
}
