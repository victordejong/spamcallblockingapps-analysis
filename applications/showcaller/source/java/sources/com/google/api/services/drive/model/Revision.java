package com.google.api.services.drive.model;

import com.google.api.client.json.AbstractC8675h;
import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.DateTime;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/Revision.class */
public final class Revision extends C8666b {
    @AbstractC8720o

    /* renamed from: id */
    private String f38576id;
    @AbstractC8720o
    private Boolean keepForever;
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private User lastModifyingUser;
    @AbstractC8720o
    private String md5Checksum;
    @AbstractC8720o
    private String mimeType;
    @AbstractC8720o
    private DateTime modifiedTime;
    @AbstractC8720o
    private String originalFilename;
    @AbstractC8720o
    private Boolean publishAuto;
    @AbstractC8720o
    private Boolean published;
    @AbstractC8720o
    private Boolean publishedOutsideDomain;
    @AbstractC8675h
    @AbstractC8720o
    private Long size;

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public Revision clone() {
        return (Revision) super.clone();
    }

    public String getId() {
        return this.f38576id;
    }

    public Boolean getKeepForever() {
        return this.keepForever;
    }

    public String getKind() {
        return this.kind;
    }

    public User getLastModifyingUser() {
        return this.lastModifyingUser;
    }

    public String getMd5Checksum() {
        return this.md5Checksum;
    }

    public String getMimeType() {
        return this.mimeType;
    }

    public DateTime getModifiedTime() {
        return this.modifiedTime;
    }

    public String getOriginalFilename() {
        return this.originalFilename;
    }

    public Boolean getPublishAuto() {
        return this.publishAuto;
    }

    public Boolean getPublished() {
        return this.published;
    }

    public Boolean getPublishedOutsideDomain() {
        return this.publishedOutsideDomain;
    }

    public Long getSize() {
        return this.size;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public Revision set(String str, Object obj) {
        return (Revision) super.set(str, obj);
    }

    public Revision setId(String str) {
        this.f38576id = str;
        return this;
    }

    public Revision setKeepForever(Boolean bool) {
        this.keepForever = bool;
        return this;
    }

    public Revision setKind(String str) {
        this.kind = str;
        return this;
    }

    public Revision setLastModifyingUser(User user) {
        this.lastModifyingUser = user;
        return this;
    }

    public Revision setMd5Checksum(String str) {
        this.md5Checksum = str;
        return this;
    }

    public Revision setMimeType(String str) {
        this.mimeType = str;
        return this;
    }

    public Revision setModifiedTime(DateTime dateTime) {
        this.modifiedTime = dateTime;
        return this;
    }

    public Revision setOriginalFilename(String str) {
        this.originalFilename = str;
        return this;
    }

    public Revision setPublishAuto(Boolean bool) {
        this.publishAuto = bool;
        return this;
    }

    public Revision setPublished(Boolean bool) {
        this.published = bool;
        return this;
    }

    public Revision setPublishedOutsideDomain(Boolean bool) {
        this.publishedOutsideDomain = bool;
        return this;
    }

    public Revision setSize(Long l) {
        this.size = l;
        return this;
    }
}
