package com.amazonaws.services.s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/GetObjectMetadataRequest.class */
public class GetObjectMetadataRequest extends AmazonWebServiceRequest implements SSECustomerKeyProvider, Serializable {
    private String bucketName;
    private boolean isRequesterPays;
    private String key;
    private Integer partNumber;
    private SSECustomerKey sseCustomerKey;
    private String versionId;

    public GetObjectMetadataRequest(String str, String str2) {
        setBucketName(str);
        setKey(str2);
    }

    public GetObjectMetadataRequest(String str, String str2, String str3) {
        this(str, str2);
        setVersionId(str3);
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getKey() {
        return this.key;
    }

    public Integer getPartNumber() {
        return this.partNumber;
    }

    @Override // com.amazonaws.services.s3.model.SSECustomerKeyProvider
    public SSECustomerKey getSSECustomerKey() {
        return this.sseCustomerKey;
    }

    public String getVersionId() {
        return this.versionId;
    }

    public boolean isRequesterPays() {
        return this.isRequesterPays;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setPartNumber(Integer num) {
        this.partNumber = num;
    }

    public void setRequesterPays(boolean z) {
        this.isRequesterPays = z;
    }

    public void setSSECustomerKey(SSECustomerKey sSECustomerKey) {
        this.sseCustomerKey = sSECustomerKey;
    }

    public void setVersionId(String str) {
        this.versionId = str;
    }

    public GetObjectMetadataRequest withBucketName(String str) {
        setBucketName(str);
        return this;
    }

    public GetObjectMetadataRequest withKey(String str) {
        setKey(str);
        return this;
    }

    public GetObjectMetadataRequest withPartNumber(Integer num) {
        setPartNumber(num);
        return this;
    }

    public GetObjectMetadataRequest withRequesterPays(boolean z) {
        setRequesterPays(z);
        return this;
    }

    public GetObjectMetadataRequest withSSECustomerKey(SSECustomerKey sSECustomerKey) {
        setSSECustomerKey(sSECustomerKey);
        return this;
    }

    public GetObjectMetadataRequest withVersionId(String str) {
        setVersionId(str);
        return this;
    }
}
