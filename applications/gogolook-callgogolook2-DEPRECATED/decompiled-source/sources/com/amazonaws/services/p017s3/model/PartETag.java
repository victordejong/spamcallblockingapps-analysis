package com.amazonaws.services.p017s3.model;
/* renamed from: com.amazonaws.services.s3.model.PartETag */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/PartETag.class */
public class PartETag {
    public String eTag;
    public int partNumber;

    public PartETag(int i, String str) {
        this.partNumber = i;
        this.eTag = str;
    }

    public String getETag() {
        return this.eTag;
    }

    public int getPartNumber() {
        return this.partNumber;
    }
}
