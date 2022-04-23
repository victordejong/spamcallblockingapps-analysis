package com.google.api.services.drive.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Revision.class */
public final class Revision extends GenericJson {
    @q
    private Map<String, String> exportLinks;
    @q
    private String id;
    @q
    private Boolean keepForever;
    @q
    private String kind;
    @q
    private User lastModifyingUser;
    @q
    private String md5Checksum;
    @q
    private String mimeType;
    @q
    private l modifiedTime;
    @q
    private String originalFilename;
    @q
    private Boolean publishAuto;
    @q
    private Boolean published;
    @q
    private Boolean publishedOutsideDomain;
    @q
    @JsonString
    private Long size;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Revision clone() {
        return (Revision) super.clone();
    }

    public final Map<String, String> getExportLinks() {
        return this.exportLinks;
    }

    public final String getId() {
        return this.id;
    }

    public final Boolean getKeepForever() {
        return this.keepForever;
    }

    public final String getKind() {
        return this.kind;
    }

    public final User getLastModifyingUser() {
        return this.lastModifyingUser;
    }

    public final String getMd5Checksum() {
        return this.md5Checksum;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final l getModifiedTime() {
        return this.modifiedTime;
    }

    public final String getOriginalFilename() {
        return this.originalFilename;
    }

    public final Boolean getPublishAuto() {
        return this.publishAuto;
    }

    public final Boolean getPublished() {
        return this.published;
    }

    public final Boolean getPublishedOutsideDomain() {
        return this.publishedOutsideDomain;
    }

    public final Long getSize() {
        return this.size;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Revision set(String str, Object obj) {
        return (Revision) super.set(str, obj);
    }

    public final Revision setExportLinks(Map<String, String> map) {
        this.exportLinks = map;
        return this;
    }

    public final Revision setId(String str) {
        this.id = str;
        return this;
    }

    public final Revision setKeepForever(Boolean bool) {
        this.keepForever = bool;
        return this;
    }

    public final Revision setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Revision setLastModifyingUser(User user) {
        this.lastModifyingUser = user;
        return this;
    }

    public final Revision setMd5Checksum(String str) {
        this.md5Checksum = str;
        return this;
    }

    public final Revision setMimeType(String str) {
        this.mimeType = str;
        return this;
    }

    public final Revision setModifiedTime(l lVar) {
        this.modifiedTime = lVar;
        return this;
    }

    public final Revision setOriginalFilename(String str) {
        this.originalFilename = str;
        return this;
    }

    public final Revision setPublishAuto(Boolean bool) {
        this.publishAuto = bool;
        return this;
    }

    public final Revision setPublished(Boolean bool) {
        this.published = bool;
        return this;
    }

    public final Revision setPublishedOutsideDomain(Boolean bool) {
        this.publishedOutsideDomain = bool;
        return this;
    }

    public final Revision setSize(Long l) {
        this.size = l;
        return this;
    }
}
