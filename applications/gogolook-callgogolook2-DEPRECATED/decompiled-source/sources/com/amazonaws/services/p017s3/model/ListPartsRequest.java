package com.amazonaws.services.p017s3.model;

import com.amazonaws.AmazonWebServiceRequest;
/* renamed from: com.amazonaws.services.s3.model.ListPartsRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/ListPartsRequest.class */
public class ListPartsRequest extends AmazonWebServiceRequest {
    public String bucketName;
    public String encodingType;
    public String key;
    public Integer maxParts;
    public Integer partNumberMarker;
    public String uploadId;

    public ListPartsRequest(String str, String str2, String str3) {
        this.bucketName = str;
        this.key = str2;
        this.uploadId = str3;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getEncodingType() {
        return this.encodingType;
    }

    public String getKey() {
        return this.key;
    }

    public Integer getMaxParts() {
        return this.maxParts;
    }

    public Integer getPartNumberMarker() {
        return this.partNumberMarker;
    }

    public String getUploadId() {
        return this.uploadId;
    }

    public ListPartsRequest withPartNumberMarker(Integer num) {
        this.partNumberMarker = num;
        return this;
    }
}
