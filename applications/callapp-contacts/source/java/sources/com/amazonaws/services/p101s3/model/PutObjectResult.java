package com.amazonaws.services.p101s3.model;

import com.amazonaws.services.p101s3.internal.ObjectExpirationResult;
import com.amazonaws.services.p101s3.internal.S3RequesterChargedResult;
import com.amazonaws.services.p101s3.internal.S3VersionResult;
import com.amazonaws.services.p101s3.internal.SSEResultBase;
import java.util.Date;
/* renamed from: com.amazonaws.services.s3.model.PutObjectResult */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/PutObjectResult.class */
public class PutObjectResult extends SSEResultBase implements ObjectExpirationResult, S3RequesterChargedResult, S3VersionResult {
    private String contentMd5;
    private String eTag;
    private Date expirationTime;
    private String expirationTimeRuleId;
    private boolean isRequesterCharged;
    private ObjectMetadata metadata;
    private String versionId;

    public String getContentMd5() {
        return this.contentMd5;
    }

    public String getETag() {
        return this.eTag;
    }

    public Date getExpirationTime() {
        return this.expirationTime;
    }

    public String getExpirationTimeRuleId() {
        return this.expirationTimeRuleId;
    }

    public ObjectMetadata getMetadata() {
        return this.metadata;
    }

    public String getVersionId() {
        return this.versionId;
    }

    public boolean isRequesterCharged() {
        return this.isRequesterCharged;
    }

    public void setContentMd5(String str) {
        this.contentMd5 = str;
    }

    public void setETag(String str) {
        this.eTag = str;
    }

    @Override // com.amazonaws.services.p101s3.internal.ObjectExpirationResult
    public void setExpirationTime(Date date) {
        this.expirationTime = date;
    }

    @Override // com.amazonaws.services.p101s3.internal.ObjectExpirationResult
    public void setExpirationTimeRuleId(String str) {
        this.expirationTimeRuleId = str;
    }

    public void setMetadata(ObjectMetadata objectMetadata) {
        this.metadata = objectMetadata;
    }

    @Override // com.amazonaws.services.p101s3.internal.S3RequesterChargedResult
    public void setRequesterCharged(boolean z) {
        this.isRequesterCharged = z;
    }

    @Override // com.amazonaws.services.p101s3.internal.S3VersionResult
    public void setVersionId(String str) {
        this.versionId = str;
    }
}
