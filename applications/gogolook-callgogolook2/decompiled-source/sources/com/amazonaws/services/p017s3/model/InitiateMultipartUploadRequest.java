package com.amazonaws.services.p017s3.model;

import com.amazonaws.AmazonWebServiceRequest;
/* renamed from: com.amazonaws.services.s3.model.InitiateMultipartUploadRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/InitiateMultipartUploadRequest.class */
public class InitiateMultipartUploadRequest extends AmazonWebServiceRequest {
    public AccessControlList accessControlList;
    public String bucketName;
    public CannedAccessControlList cannedACL;
    public String key;
    public ObjectMetadata objectMetadata;
    public String redirectLocation;
    public SSECustomerKey sseCustomerKey;
    public StorageClass storageClass;

    public InitiateMultipartUploadRequest(String str, String str2) {
        this.bucketName = str;
        this.key = str2;
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

    public String getRedirectLocation() {
        return this.redirectLocation;
    }

    public SSECustomerKey getSSECustomerKey() {
        return this.sseCustomerKey;
    }

    public StorageClass getStorageClass() {
        return this.storageClass;
    }

    public void setObjectMetadata(ObjectMetadata objectMetadata) {
        this.objectMetadata = objectMetadata;
    }

    public void setRedirectLocation(String str) {
        this.redirectLocation = str;
    }

    public void setSSECustomerKey(SSECustomerKey sSECustomerKey) {
        this.sseCustomerKey = sSECustomerKey;
    }

    public void setStorageClass(StorageClass storageClass) {
        this.storageClass = storageClass;
    }

    public InitiateMultipartUploadRequest withCannedACL(CannedAccessControlList cannedAccessControlList) {
        this.cannedACL = cannedAccessControlList;
        return this;
    }

    public InitiateMultipartUploadRequest withObjectMetadata(ObjectMetadata objectMetadata) {
        setObjectMetadata(objectMetadata);
        return this;
    }
}
