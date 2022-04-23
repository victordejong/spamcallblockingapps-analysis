package com.amazonaws.services.s3.model;

import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/model/MultipartUpload.class */
public class MultipartUpload {
    private Date initiated;
    private Owner initiator;
    private String key;
    private Owner owner;
    private String storageClass;
    private String uploadId;

    public Date getInitiated() {
        return this.initiated;
    }

    public Owner getInitiator() {
        return this.initiator;
    }

    public String getKey() {
        return this.key;
    }

    public Owner getOwner() {
        return this.owner;
    }

    public String getStorageClass() {
        return this.storageClass;
    }

    public String getUploadId() {
        return this.uploadId;
    }

    public void setInitiated(Date date) {
        this.initiated = date;
    }

    public void setInitiator(Owner owner) {
        this.initiator = owner;
    }

    public void setKey(String str) {
        this.key = str;
    }

    public void setOwner(Owner owner) {
        this.owner = owner;
    }

    public void setStorageClass(String str) {
        this.storageClass = str;
    }

    public void setUploadId(String str) {
        this.uploadId = str;
    }
}
