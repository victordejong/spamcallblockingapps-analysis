package com.amazonaws.services.p101s3.model;

import java.util.Date;
/* renamed from: com.amazonaws.services.s3.model.PartSummary */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/PartSummary.class */
public class PartSummary {
    private String eTag;
    private Date lastModified;
    private int partNumber;
    private long size;

    public String getETag() {
        return this.eTag;
    }

    public Date getLastModified() {
        return this.lastModified;
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
        this.lastModified = date;
    }

    public void setPartNumber(int i) {
        this.partNumber = i;
    }

    public void setSize(long j) {
        this.size = j;
    }
}
