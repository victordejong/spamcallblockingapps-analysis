package com.amazonaws.services.p101s3.model;
/* renamed from: com.amazonaws.services.s3.model.HeadBucketResult */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/HeadBucketResult.class */
public class HeadBucketResult {
    private String bucketRegion;

    public String getBucketRegion() {
        return this.bucketRegion;
    }

    public void setBucketRegion(String str) {
        this.bucketRegion = str;
    }

    public HeadBucketResult withBucketRegion(String str) {
        setBucketRegion(str);
        return this;
    }
}
