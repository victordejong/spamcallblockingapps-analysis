package com.amazonaws.services.p017s3.model;

import com.amazonaws.services.p017s3.internal.SSEResultBase;
/* renamed from: com.amazonaws.services.s3.model.InitiateMultipartUploadResult */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/InitiateMultipartUploadResult.class */
public class InitiateMultipartUploadResult extends SSEResultBase {
    public String uploadId;

    public String getUploadId() {
        return this.uploadId;
    }

    public void setBucketName(String str) {
    }

    public void setKey(String str) {
    }

    public void setUploadId(String str) {
        this.uploadId = str;
    }
}
