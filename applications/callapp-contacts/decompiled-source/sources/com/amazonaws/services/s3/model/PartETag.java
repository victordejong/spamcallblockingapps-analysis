package com.amazonaws.services.s3.model;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/PartETag.class */
public class PartETag {
    private String eTag;
    private int partNumber;

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

    public void setETag(String str) {
        this.eTag = str;
    }

    public void setPartNumber(int i) {
        this.partNumber = i;
    }

    public PartETag withETag(String str) {
        this.eTag = str;
        return this;
    }

    public PartETag withPartNumber(int i) {
        this.partNumber = i;
        return this;
    }
}
