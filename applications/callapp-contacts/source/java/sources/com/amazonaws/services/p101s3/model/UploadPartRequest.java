package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.event.ProgressListener;
import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.UploadPartRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/UploadPartRequest.class */
public class UploadPartRequest extends AmazonWebServiceRequest implements S3DataSource, SSECustomerKeyProvider, Serializable {
    private static final long serialVersionUID = 1;
    private String bucketName;
    private File file;
    private long fileOffset;

    /* renamed from: id */
    private int f12467id;
    private transient InputStream inputStream;
    private boolean isLastPart;
    private boolean isRequesterPays;
    private String key;
    private int mainUploadId;
    private String md5Digest;
    private ObjectMetadata objectMetadata;
    private int partNumber;
    private long partSize;
    private SSECustomerKey sseCustomerKey;
    private String uploadId;

    public String getBucketName() {
        return this.bucketName;
    }

    @Override // com.amazonaws.services.p101s3.model.S3DataSource
    public File getFile() {
        return this.file;
    }

    public long getFileOffset() {
        return this.fileOffset;
    }

    public int getId() {
        return this.f12467id;
    }

    @Override // com.amazonaws.services.p101s3.model.S3DataSource
    public InputStream getInputStream() {
        return this.inputStream;
    }

    public String getKey() {
        return this.key;
    }

    public int getMainUploadId() {
        return this.mainUploadId;
    }

    public String getMd5Digest() {
        return this.md5Digest;
    }

    public ObjectMetadata getObjectMetadata() {
        return this.objectMetadata;
    }

    public int getPartNumber() {
        return this.partNumber;
    }

    public long getPartSize() {
        return this.partSize;
    }

    @Deprecated
    public ProgressListener getProgressListener() {
        ProgressListener generalProgressListener = getGeneralProgressListener();
        if (generalProgressListener instanceof LegacyS3ProgressListener) {
            return ((LegacyS3ProgressListener) generalProgressListener).unwrap();
        }
        return null;
    }

    @Override // com.amazonaws.services.p101s3.model.SSECustomerKeyProvider
    public SSECustomerKey getSSECustomerKey() {
        return this.sseCustomerKey;
    }

    public String getUploadId() {
        return this.uploadId;
    }

    public boolean isLastPart() {
        return this.isLastPart;
    }

    public boolean isRequesterPays() {
        return this.isRequesterPays;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    @Override // com.amazonaws.services.p101s3.model.S3DataSource
    public void setFile(File file) {
        this.file = file;
    }

    public void setFileOffset(long j) {
        this.fileOffset = j;
    }

    public void setId(int i) {
        this.f12467id = i;
    }

    @Override // com.amazonaws.services.p101s3.model.S3DataSource
    public void setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setLastPart(boolean z) {
        this.isLastPart = z;
    }

    public void setMainUploadId(int i) {
        this.mainUploadId = i;
    }

    public void setMd5Digest(String str) {
        this.md5Digest = str;
    }

    public void setObjectMetadata(ObjectMetadata objectMetadata) {
        this.objectMetadata = objectMetadata;
    }

    public void setPartNumber(int i) {
        this.partNumber = i;
    }

    public void setPartSize(long j) {
        this.partSize = j;
    }

    @Deprecated
    public void setProgressListener(ProgressListener progressListener) {
        setGeneralProgressListener(new LegacyS3ProgressListener(progressListener));
    }

    public void setRequesterPays(boolean z) {
        this.isRequesterPays = z;
    }

    public void setSSECustomerKey(SSECustomerKey sSECustomerKey) {
        this.sseCustomerKey = sSECustomerKey;
    }

    public void setUploadId(String str) {
        this.uploadId = str;
    }

    public UploadPartRequest withBucketName(String str) {
        this.bucketName = str;
        return this;
    }

    public UploadPartRequest withFile(File file) {
        setFile(file);
        return this;
    }

    public UploadPartRequest withFileOffset(long j) {
        setFileOffset(j);
        return this;
    }

    public UploadPartRequest withId(int i) {
        this.f12467id = i;
        return this;
    }

    public UploadPartRequest withInputStream(InputStream inputStream) {
        setInputStream(inputStream);
        return this;
    }

    public UploadPartRequest withKey(String str) {
        this.key = str;
        return this;
    }

    public UploadPartRequest withLastPart(boolean z) {
        setLastPart(z);
        return this;
    }

    public UploadPartRequest withMD5Digest(String str) {
        this.md5Digest = str;
        return this;
    }

    public UploadPartRequest withMainUploadId(int i) {
        this.mainUploadId = i;
        return this;
    }

    public UploadPartRequest withObjectMetadata(ObjectMetadata objectMetadata) {
        setObjectMetadata(objectMetadata);
        return this;
    }

    public UploadPartRequest withPartNumber(int i) {
        this.partNumber = i;
        return this;
    }

    public UploadPartRequest withPartSize(long j) {
        this.partSize = j;
        return this;
    }

    @Deprecated
    public UploadPartRequest withProgressListener(ProgressListener progressListener) {
        setProgressListener(progressListener);
        return this;
    }

    public UploadPartRequest withRequesterPays(boolean z) {
        setRequesterPays(z);
        return this;
    }

    public UploadPartRequest withSSECustomerKey(SSECustomerKey sSECustomerKey) {
        setSSECustomerKey(sSECustomerKey);
        return this;
    }

    public UploadPartRequest withUploadId(String str) {
        this.uploadId = str;
        return this;
    }
}
