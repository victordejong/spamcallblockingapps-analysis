package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.event.ProgressListener;
import java.io.File;
import java.io.InputStream;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/AbstractPutObjectRequest.class */
public abstract class AbstractPutObjectRequest extends AmazonWebServiceRequest implements S3DataSource, SSEAwsKeyManagementParamsProvider, SSECustomerKeyProvider, Serializable {
    private AccessControlList accessControlList;
    private String bucketName;
    private CannedAccessControlList cannedAcl;
    private File file;
    private transient InputStream inputStream;
    private String key;
    private ObjectMetadata metadata;
    private String redirectLocation;
    private SSEAwsKeyManagementParams sseAwsKeyManagementParams;
    private SSECustomerKey sseCustomerKey;
    private String storageClass;
    private ObjectTagging tagging;

    public AbstractPutObjectRequest(String str, String str2, File file) {
        this.bucketName = str;
        this.key = str2;
        this.file = file;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractPutObjectRequest(String str, String str2, InputStream inputStream, ObjectMetadata objectMetadata) {
        this.bucketName = str;
        this.key = str2;
        this.inputStream = inputStream;
        this.metadata = objectMetadata;
    }

    public AbstractPutObjectRequest(String str, String str2, String str3) {
        this.bucketName = str;
        this.key = str2;
        this.redirectLocation = str3;
    }

    @Override // com.amazonaws.AmazonWebServiceRequest
    public AbstractPutObjectRequest clone() {
        return (AbstractPutObjectRequest) super.clone();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final <T extends AbstractPutObjectRequest> T copyPutObjectBaseTo(T t) {
        copyBaseTo(t);
        ObjectMetadata metadata = getMetadata();
        return (T) t.withAccessControlList(getAccessControlList()).withCannedAcl(getCannedAcl()).withInputStream(getInputStream()).withMetadata(metadata == null ? null : metadata.clone()).withRedirectLocation(getRedirectLocation()).withStorageClass(getStorageClass()).withSSEAwsKeyManagementParams(getSSEAwsKeyManagementParams()).withSSECustomerKey(getSSECustomerKey());
    }

    public AccessControlList getAccessControlList() {
        return this.accessControlList;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public CannedAccessControlList getCannedAcl() {
        return this.cannedAcl;
    }

    @Override // com.amazonaws.services.s3.model.S3DataSource
    public File getFile() {
        return this.file;
    }

    @Override // com.amazonaws.services.s3.model.S3DataSource
    public InputStream getInputStream() {
        return this.inputStream;
    }

    public String getKey() {
        return this.key;
    }

    public ObjectMetadata getMetadata() {
        return this.metadata;
    }

    @Deprecated
    public ProgressListener getProgressListener() {
        ProgressListener generalProgressListener = getGeneralProgressListener();
        if (generalProgressListener instanceof LegacyS3ProgressListener) {
            return ((LegacyS3ProgressListener) generalProgressListener).unwrap();
        }
        return null;
    }

    public String getRedirectLocation() {
        return this.redirectLocation;
    }

    @Override // com.amazonaws.services.s3.model.SSEAwsKeyManagementParamsProvider
    public SSEAwsKeyManagementParams getSSEAwsKeyManagementParams() {
        return this.sseAwsKeyManagementParams;
    }

    @Override // com.amazonaws.services.s3.model.SSECustomerKeyProvider
    public SSECustomerKey getSSECustomerKey() {
        return this.sseCustomerKey;
    }

    public String getStorageClass() {
        return this.storageClass;
    }

    public ObjectTagging getTagging() {
        return this.tagging;
    }

    public void setAccessControlList(AccessControlList accessControlList) {
        this.accessControlList = accessControlList;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setCannedAcl(CannedAccessControlList cannedAccessControlList) {
        this.cannedAcl = cannedAccessControlList;
    }

    @Override // com.amazonaws.services.s3.model.S3DataSource
    public void setFile(File file) {
        this.file = file;
    }

    @Override // com.amazonaws.services.s3.model.S3DataSource
    public void setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setMetadata(ObjectMetadata objectMetadata) {
        this.metadata = objectMetadata;
    }

    @Deprecated
    public void setProgressListener(ProgressListener progressListener) {
        setGeneralProgressListener(new LegacyS3ProgressListener(progressListener));
    }

    public void setRedirectLocation(String str) {
        this.redirectLocation = str;
    }

    public void setSSEAwsKeyManagementParams(SSEAwsKeyManagementParams sSEAwsKeyManagementParams) {
        if (sSEAwsKeyManagementParams == null || this.sseCustomerKey == null) {
            this.sseAwsKeyManagementParams = sSEAwsKeyManagementParams;
            return;
        }
        throw new IllegalArgumentException("Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time.");
    }

    public void setSSECustomerKey(SSECustomerKey sSECustomerKey) {
        if (sSECustomerKey == null || this.sseAwsKeyManagementParams == null) {
            this.sseCustomerKey = sSECustomerKey;
            return;
        }
        throw new IllegalArgumentException("Either SSECustomerKey or SSEAwsKeyManagementParams must not be set at the same time.");
    }

    public void setStorageClass(StorageClass storageClass) {
        this.storageClass = storageClass.toString();
    }

    public void setStorageClass(String str) {
        this.storageClass = str;
    }

    public void setTagging(ObjectTagging objectTagging) {
        this.tagging = objectTagging;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T withAccessControlList(AccessControlList accessControlList) {
        setAccessControlList(accessControlList);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T withCannedAcl(CannedAccessControlList cannedAccessControlList) {
        setCannedAcl(cannedAccessControlList);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T withFile(File file) {
        setFile(file);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T withInputStream(InputStream inputStream) {
        setInputStream(inputStream);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T withKey(String str) {
        setKey(str);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T withMetadata(ObjectMetadata objectMetadata) {
        setMetadata(objectMetadata);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Deprecated
    public <T extends AbstractPutObjectRequest> T withProgressListener(ProgressListener progressListener) {
        setProgressListener(progressListener);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T withRedirectLocation(String str) {
        this.redirectLocation = str;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T withSSEAwsKeyManagementParams(SSEAwsKeyManagementParams sSEAwsKeyManagementParams) {
        setSSEAwsKeyManagementParams(sSEAwsKeyManagementParams);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T withSSECustomerKey(SSECustomerKey sSECustomerKey) {
        setSSECustomerKey(sSECustomerKey);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T withStorageClass(StorageClass storageClass) {
        setStorageClass(storageClass);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T withStorageClass(String str) {
        setStorageClass(str);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends AbstractPutObjectRequest> T withTagging(ObjectTagging objectTagging) {
        setTagging(objectTagging);
        return this;
    }
}
