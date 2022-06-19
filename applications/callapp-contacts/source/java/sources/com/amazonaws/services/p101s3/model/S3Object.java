package com.amazonaws.services.p101s3.model;

import com.amazonaws.services.p101s3.internal.S3RequesterChargedResult;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.S3Object */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/S3Object.class */
public class S3Object implements S3RequesterChargedResult, Closeable, Serializable {
    private boolean isRequesterCharged;
    private transient S3ObjectInputStream objectContent;
    private String redirectLocation;
    private Integer taggingCount;
    private String key = null;
    private String bucketName = null;
    private ObjectMetadata metadata = new ObjectMetadata();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (getObjectContent() != null) {
            getObjectContent().close();
        }
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getKey() {
        return this.key;
    }

    public S3ObjectInputStream getObjectContent() {
        return this.objectContent;
    }

    public ObjectMetadata getObjectMetadata() {
        return this.metadata;
    }

    public String getRedirectLocation() {
        return this.redirectLocation;
    }

    public Integer getTaggingCount() {
        return this.taggingCount;
    }

    public boolean isRequesterCharged() {
        return this.isRequesterCharged;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setObjectContent(S3ObjectInputStream s3ObjectInputStream) {
        this.objectContent = s3ObjectInputStream;
    }

    public void setObjectContent(InputStream inputStream) {
        setObjectContent(new S3ObjectInputStream(inputStream));
    }

    public void setObjectMetadata(ObjectMetadata objectMetadata) {
        this.metadata = objectMetadata;
    }

    public void setRedirectLocation(String str) {
        this.redirectLocation = str;
    }

    @Override // com.amazonaws.services.p101s3.internal.S3RequesterChargedResult
    public void setRequesterCharged(boolean z) {
        this.isRequesterCharged = z;
    }

    public void setTaggingCount(Integer num) {
        this.taggingCount = num;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("S3Object [key=");
        sb.append(getKey());
        sb.append(",bucket=");
        String str = this.bucketName;
        String str2 = str;
        if (str == null) {
            str2 = "<Unknown>";
        }
        sb.append(str2);
        sb.append("]");
        return sb.toString();
    }
}
