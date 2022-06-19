package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* renamed from: com.amazonaws.services.s3.model.InitiateMultipartUploadRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/InitiateMultipartUploadRequest.class */
public class InitiateMultipartUploadRequest extends AmazonWebServiceRequest implements SSEAwsKeyManagementParamsProvider, SSECustomerKeyProvider, Serializable {
    private AccessControlList accessControlList;
    private String bucketName;
    private CannedAccessControlList cannedACL;
    private boolean isRequesterPays;
    private String key;
    public ObjectMetadata objectMetadata;
    private String redirectLocation;
    private SSEAwsKeyManagementParams sseAwsKeyManagementParams;
    private SSECustomerKey sseCustomerKey;
    private StorageClass storageClass;
    private ObjectTagging tagging;

    public InitiateMultipartUploadRequest(String str, String str2) {
        this.bucketName = str;
        this.key = str2;
    }

    public InitiateMultipartUploadRequest(String str, String str2, ObjectMetadata objectMetadata) {
        this.bucketName = str;
        this.key = str2;
        this.objectMetadata = objectMetadata;
    }

    public AccessControlList getAccessControlList() {
        return this.accessControlList;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public CannedAccessControlList getCannedACL() {
        return this.cannedACL;
    }

    public String getKey() {
        return this.key;
    }

    public ObjectMetadata getObjectMetadata() {
        return this.objectMetadata;
    }

    public String getRedirectLocation() {
        return this.redirectLocation;
    }

    @Override // com.amazonaws.services.p101s3.model.SSEAwsKeyManagementParamsProvider
    public SSEAwsKeyManagementParams getSSEAwsKeyManagementParams() {
        return this.sseAwsKeyManagementParams;
    }

    @Override // com.amazonaws.services.p101s3.model.SSECustomerKeyProvider
    public SSECustomerKey getSSECustomerKey() {
        return this.sseCustomerKey;
    }

    public StorageClass getStorageClass() {
        return this.storageClass;
    }

    public ObjectTagging getTagging() {
        return this.tagging;
    }

    public boolean isRequesterPays() {
        return this.isRequesterPays;
    }

    public void setAccessControlList(AccessControlList accessControlList) {
        this.accessControlList = accessControlList;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setCannedACL(CannedAccessControlList cannedAccessControlList) {
        this.cannedACL = cannedAccessControlList;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setObjectMetadata(ObjectMetadata objectMetadata) {
        this.objectMetadata = objectMetadata;
    }

    public void setRedirectLocation(String str) {
        this.redirectLocation = str;
    }

    public void setRequesterPays(boolean z) {
        this.isRequesterPays = z;
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
        this.storageClass = storageClass;
    }

    public void setTagging(ObjectTagging objectTagging) {
        this.tagging = objectTagging;
    }

    public InitiateMultipartUploadRequest withAccessControlList(AccessControlList accessControlList) {
        setAccessControlList(accessControlList);
        return this;
    }

    public InitiateMultipartUploadRequest withBucketName(String str) {
        this.bucketName = str;
        return this;
    }

    public InitiateMultipartUploadRequest withCannedACL(CannedAccessControlList cannedAccessControlList) {
        this.cannedACL = cannedAccessControlList;
        return this;
    }

    public InitiateMultipartUploadRequest withKey(String str) {
        this.key = str;
        return this;
    }

    public InitiateMultipartUploadRequest withObjectMetadata(ObjectMetadata objectMetadata) {
        setObjectMetadata(objectMetadata);
        return this;
    }

    public InitiateMultipartUploadRequest withRedirectLocation(String str) {
        this.redirectLocation = str;
        return this;
    }

    public InitiateMultipartUploadRequest withRequesterPays(boolean z) {
        setRequesterPays(z);
        return this;
    }

    public InitiateMultipartUploadRequest withSSEAwsKeyManagementParams(SSEAwsKeyManagementParams sSEAwsKeyManagementParams) {
        setSSEAwsKeyManagementParams(sSEAwsKeyManagementParams);
        return this;
    }

    public InitiateMultipartUploadRequest withSSECustomerKey(SSECustomerKey sSECustomerKey) {
        setSSECustomerKey(sSECustomerKey);
        return this;
    }

    public InitiateMultipartUploadRequest withStorageClass(StorageClass storageClass) {
        this.storageClass = storageClass;
        return this;
    }

    public InitiateMultipartUploadRequest withStorageClass(String str) {
        if (str != null) {
            this.storageClass = StorageClass.fromValue(str);
        } else {
            this.storageClass = null;
        }
        return this;
    }

    public InitiateMultipartUploadRequest withTagging(ObjectTagging objectTagging) {
        setTagging(objectTagging);
        return this;
    }
}
