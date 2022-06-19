package com.amazonaws.services.p101s3.model;

import com.amazonaws.AmazonWebServiceRequest;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: com.amazonaws.services.s3.model.CompleteMultipartUploadRequest */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/CompleteMultipartUploadRequest.class */
public class CompleteMultipartUploadRequest extends AmazonWebServiceRequest implements Serializable {
    private String bucketName;
    private boolean isRequesterPays;
    private String key;
    private List<PartETag> partETags;
    private String uploadId;

    public CompleteMultipartUploadRequest() {
        this.partETags = new ArrayList();
    }

    public CompleteMultipartUploadRequest(String str, String str2, String str3, List<PartETag> list) {
        this.partETags = new ArrayList();
        this.bucketName = str;
        this.key = str2;
        this.uploadId = str3;
        this.partETags = list;
    }

    public String getBucketName() {
        return this.bucketName;
    }

    public String getKey() {
        return this.key;
    }

    public List<PartETag> getPartETags() {
        return this.partETags;
    }

    public String getUploadId() {
        return this.uploadId;
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

    public void setPartETags(List<PartETag> list) {
        this.partETags = list;
    }

    public void setRequesterPays(boolean z) {
        this.isRequesterPays = z;
    }

    public void setUploadId(String str) {
        this.uploadId = str;
    }

    public CompleteMultipartUploadRequest withBucketName(String str) {
        this.bucketName = str;
        return this;
    }

    public CompleteMultipartUploadRequest withKey(String str) {
        this.key = str;
        return this;
    }

    public CompleteMultipartUploadRequest withPartETags(Collection<UploadPartResult> collection) {
        for (UploadPartResult uploadPartResult : collection) {
            this.partETags.add(new PartETag(uploadPartResult.getPartNumber(), uploadPartResult.getETag()));
        }
        return this;
    }

    public CompleteMultipartUploadRequest withPartETags(List<PartETag> list) {
        setPartETags(list);
        return this;
    }

    public CompleteMultipartUploadRequest withPartETags(UploadPartResult... uploadPartResultArr) {
        for (UploadPartResult uploadPartResult : uploadPartResultArr) {
            this.partETags.add(new PartETag(uploadPartResult.getPartNumber(), uploadPartResult.getETag()));
        }
        return this;
    }

    public CompleteMultipartUploadRequest withRequesterPays(boolean z) {
        setRequesterPays(z);
        return this;
    }

    public CompleteMultipartUploadRequest withUploadId(String str) {
        this.uploadId = str;
        return this;
    }
}
