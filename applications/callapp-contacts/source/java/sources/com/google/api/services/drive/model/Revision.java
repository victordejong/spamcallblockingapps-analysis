package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Revision.class */
public final class Revision extends GenericJson {
    @AbstractC15247q
    private Map<String, String> exportLinks;
    @AbstractC15247q

    /* renamed from: id */
    private String f55445id;
    @AbstractC15247q
    private Boolean keepForever;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private User lastModifyingUser;
    @AbstractC15247q
    private String md5Checksum;
    @AbstractC15247q
    private String mimeType;
    @AbstractC15247q
    private C15237l modifiedTime;
    @AbstractC15247q
    private String originalFilename;
    @AbstractC15247q
    private Boolean publishAuto;
    @AbstractC15247q
    private Boolean published;
    @AbstractC15247q
    private Boolean publishedOutsideDomain;
    @AbstractC15247q
    @JsonString
    private Long size;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final Revision clone() {
        return (Revision) super.clone();
    }

    public final Map<String, String> getExportLinks() {
        return this.exportLinks;
    }

    public final String getId() {
        return this.f55445id;
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

    public final C15237l getModifiedTime() {
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final Revision set(String str, Object obj) {
        return (Revision) super.set(str, obj);
    }

    public final Revision setExportLinks(Map<String, String> map) {
        this.exportLinks = map;
        return this;
    }

    public final Revision setId(String str) {
        this.f55445id = str;
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

    public final Revision setModifiedTime(C15237l c15237l) {
        this.modifiedTime = c15237l;
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
