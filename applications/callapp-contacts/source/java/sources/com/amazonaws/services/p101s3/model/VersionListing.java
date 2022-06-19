package com.amazonaws.services.p101s3.model;

import java.util.ArrayList;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.VersionListing */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/VersionListing.class */
public class VersionListing {
    private String bucketName;
    private String delimiter;
    private String encodingType;
    private boolean isTruncated;
    private String keyMarker;
    private int maxKeys;
    private String nextKeyMarker;
    private String nextVersionIdMarker;
    private String prefix;
    private String versionIdMarker;
    private List<S3VersionSummary> versionSummaries = new ArrayList();
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

    public String getKeyMarker() {
        return this.keyMarker;
    }

    public int getMaxKeys() {
        return this.maxKeys;
    }

    public String getNextKeyMarker() {
        return this.nextKeyMarker;
    }

    public String getNextVersionIdMarker() {
        return this.nextVersionIdMarker;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public String getVersionIdMarker() {
        return this.versionIdMarker;
    }

    public List<S3VersionSummary> getVersionSummaries() {
        return this.versionSummaries;
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

    public void setKeyMarker(String str) {
        this.keyMarker = str;
    }

    public void setMaxKeys(int i) {
        this.maxKeys = i;
    }

    public void setNextKeyMarker(String str) {
        this.nextKeyMarker = str;
    }

    public void setNextVersionIdMarker(String str) {
        this.nextVersionIdMarker = str;
    }

    public void setPrefix(String str) {
        this.prefix = str;
    }

    public void setTruncated(boolean z) {
        this.isTruncated = z;
    }

    public void setVersionIdMarker(String str) {
        this.versionIdMarker = str;
    }

    public void setVersionSummaries(List<S3VersionSummary> list) {
        this.versionSummaries = list;
    }
}
