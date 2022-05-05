package com.amazonaws.services.p017s3.model;

import java.util.Date;
/* renamed from: com.amazonaws.services.s3.model.PartSummary */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/PartSummary.class */
public class PartSummary {
    public String eTag;
    public int partNumber;
    public long size;

    public String getETag() {
        return this.eTag;
    }

    public int getPartNumber() {
        return this.partNumber;
    }

    public long getSize() {
        return this.size;
    }

    public void setETag(String str) {
        this.eTag = str;
    }

    public void setLastModified(Date date) {
    }

    public void setPartNumber(int i) {
        this.partNumber = i;
    }

    public void setSize(long j) {
        this.size = j;
    }
}
