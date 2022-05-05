package com.amazonaws.services.p017s3.model;

import com.amazonaws.services.p017s3.internal.ObjectExpirationResult;
import com.amazonaws.services.p017s3.internal.SSEResultBase;
import java.util.Date;
/* renamed from: com.amazonaws.services.s3.model.CompleteMultipartUploadResult */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/CompleteMultipartUploadResult.class */
public class CompleteMultipartUploadResult extends SSEResultBase implements ObjectExpirationResult {
    public String bucketName;
    public String eTag;
    public String key;
    public String versionId;

    public String getBucketName() {
        return this.bucketName;
    }

    public String getETag() {
        return this.eTag;
    }

    public String getKey() {
        return this.key;
    }

    public String getVersionId() {
        return this.versionId;
    }

    public void setBucketName(String str) {
        this.bucketName = str;
    }

    public void setETag(String str) {
        this.eTag = str;
    }

    @Override // com.amazonaws.services.p017s3.internal.ObjectExpirationResult
    public void setExpirationTime(Date date) {
    }

    @Override // com.amazonaws.services.p017s3.internal.ObjectExpirationResult
    public void setExpirationTimeRuleId(String str) {
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setLocation(String str) {
    }

    public void setVersionId(String str) {
        this.versionId = str;
    }
}
