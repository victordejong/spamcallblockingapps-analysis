package com.amazonaws.services.p017s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import com.amazonaws.event.ProgressListener;
import java.io.File;
import java.io.InputStream;
/* renamed from: com.amazonaws.services.s3.model.PutObjectRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/PutObjectRequest.class */
public class PutObjectRequest extends AmazonWebServiceRequest implements Cloneable {
    public AccessControlList accessControlList;
    public String bucketName;
    public CannedAccessControlList cannedAcl;
    public File file;
    public ProgressListener generalProgressListener;
    public InputStream inputStream;
    public String key;
    public ObjectMetadata metadata;
    public String redirectLocation;
    public SSECustomerKey sseCustomerKey;
    public String storageClass;

    public PutObjectRequest(String str, String str2, File file) {
        this.bucketName = str;
        this.key = str2;
        this.file = file;
    }

    public PutObjectRequest(String str, String str2, String str3) {
        this.bucketName = str;
        this.key = str2;
        this.redirectLocation = str3;
    }

    @Override // com.amazonaws.AmazonWebServiceRequest
    public PutObjectRequest clone() {
        PutObjectRequest putObjectRequest = new PutObjectRequest(this.bucketName, this.key, this.redirectLocation);
        putObjectRequest.withAccessControlList(this.accessControlList);
        putObjectRequest.withCannedAcl(this.cannedAcl);
        putObjectRequest.withFile(this.file);
        putObjectRequest.withGeneralProgressListener(this.generalProgressListener);
        putObjectRequest.withInputStream(this.inputStream);
        ObjectMetadata objectMetadata = this.metadata;
        putObjectRequest.withMetadata(objectMetadata == null ? null : objectMetadata.clone());
        putObjectRequest.withStorageClass(this.storageClass);
        putObjectRequest.withRequestMetricCollector(getRequestMetricCollector());
        return putObjectRequest;
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

    public File getFile() {
        return this.file;
    }

    public ProgressListener getGeneralProgressListener() {
        return this.generalProgressListener;
    }

    public InputStream getInputStream() {
        return this.inputStream;
    }

    public String getKey() {
        return this.key;
    }

    public ObjectMetadata getMetadata() {
        return this.metadata;
    }

    public String getRedirectLocation() {
        return this.redirectLocation;
    }

    public SSECustomerKey getSSECustomerKey() {
        return this.sseCustomerKey;
    }

    public String getStorageClass() {
        return this.storageClass;
    }

    public void setAccessControlList(AccessControlList accessControlList) {
        this.accessControlList = accessControlList;
    }

    public void setCannedAcl(CannedAccessControlList cannedAccessControlList) {
        this.cannedAcl = cannedAccessControlList;
    }

    public void setFile(File file) {
        this.file = file;
    }

    public void setGeneralProgressListener(ProgressListener progressListener) {
        this.generalProgressListener = progressListener;
    }

    public void setInputStream(InputStream inputStream) {
        this.inputStream = inputStream;
    }

    public void setMetadata(ObjectMetadata objectMetadata) {
        this.metadata = objectMetadata;
    }

    public void setStorageClass(String str) {
        this.storageClass = str;
    }

    public PutObjectRequest withAccessControlList(AccessControlList accessControlList) {
        setAccessControlList(accessControlList);
        return this;
    }

    public PutObjectRequest withCannedAcl(CannedAccessControlList cannedAccessControlList) {
        setCannedAcl(cannedAccessControlList);
        return this;
    }

    public PutObjectRequest withFile(File file) {
        setFile(file);
        return this;
    }

    public PutObjectRequest withGeneralProgressListener(ProgressListener progressListener) {
        setGeneralProgressListener(progressListener);
        return this;
    }

    public PutObjectRequest withInputStream(InputStream inputStream) {
        setInputStream(inputStream);
        return this;
    }

    public PutObjectRequest withMetadata(ObjectMetadata objectMetadata) {
        setMetadata(objectMetadata);
        return this;
    }

    public PutObjectRequest withStorageClass(String str) {
        setStorageClass(str);
        return this;
    }
}
