package com.amazonaws.services.s3.model;

import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/S3ObjectIdBuilder.class */
public final class S3ObjectIdBuilder implements Serializable {
    private String bucket;
    private String key;
    private String versionId;

    public S3ObjectIdBuilder() {
    }

    public S3ObjectIdBuilder(S3ObjectId s3ObjectId) {
        this.bucket = s3ObjectId.getBucket();
        this.key = s3ObjectId.getKey();
        this.versionId = s3ObjectId.getVersionId();
    }

    public final S3ObjectId build() {
        return new S3ObjectId(this.bucket, this.key, this.versionId);
    }

    public final String getBucket() {
        return this.bucket;
    }

    public final String getKey() {
        return this.key;
    }

    public final String getVersionId() {
        return this.versionId;
    }

    public final void setBucket(String str) {
        this.bucket = str;
    }

    public final void setKey(String str) {
        this.key = str;
    }

    public final void setVersionId(String str) {
        this.versionId = str;
    }

    public final S3ObjectIdBuilder withBucket(String str) {
        this.bucket = str;
        return this;
    }

    public final S3ObjectIdBuilder withKey(String str) {
        this.key = str;
        return this;
    }

    public final S3ObjectIdBuilder withVersionId(String str) {
        this.versionId = str;
        return this;
    }
}
