package com.amazonaws.services.s3.model;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ListObjectsV2Result.class */
public class ListObjectsV2Result {
    private String bucketName;
    private String continuationToken;
    private String delimiter;
    private String encodingType;
    private boolean isTruncated;
    private int keyCount;
    private int maxKeys;
    private String nextContinuationToken;
    private String prefix;
    private String startAfter;
    private List<S3ObjectSummary> objectSummaries = new ArrayList();
    private List<String> commonPrefixes = new ArrayList();

    public String getBucketName() {
        return this.bucketName;
    }

    public List<String> getCommonPrefixes() {
        return this.commonPrefixes;
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

    public int getKeyCount() {
        return this.keyCount;
    }

    public int getMaxKeys() {
        return this.maxKeys;
    }

    public String getNextContinuationToken() {
        return this.nextContinuationToken;
    }

    public List<S3ObjectSummary> getObjectSummaries() {
        return this.objectSummaries;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public String getStartAfter() {
        return this.startAfter;
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

    public void setContinuationToken(String str) {
        this.continuationToken = str;
    }

    public void setDelimiter(String str) {
        this.delimiter = str;
    }

    public void setEncodingType(String str) {
        this.encodingType = str;
    }

    public void setKeyCount(int i) {
        this.keyCount = i;
    }

    public void setMaxKeys(int i) {
        this.maxKeys = i;
    }

    public void setNextContinuationToken(String str) {
        this.nextContinuationToken = str;
    }

    public void setPrefix(String str) {
        this.prefix = str;
    }

    public void setStartAfter(String str) {
        this.startAfter = str;
    }

    public void setTruncated(boolean z) {
        this.isTruncated = z;
    }
}
