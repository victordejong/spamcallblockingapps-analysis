package com.amazonaws.services.p101s3.model;
/* renamed from: com.amazonaws.services.s3.model.DeleteObjectTaggingResult */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/DeleteObjectTaggingResult.class */
public class DeleteObjectTaggingResult {
    private String versionId;

    public String getVersionId() {
        return this.versionId;
    }

    public void setVersionId(String str) {
        this.versionId = str;
    }

    public DeleteObjectTaggingResult withVersionId(String str) {
        setVersionId(str);
        return this;
    }
}
