package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Reply.class */
public final class Reply extends GenericJson {
    @AbstractC15247q
    private String action;
    @AbstractC15247q
    private User author;
    @AbstractC15247q
    private String content;
    @AbstractC15247q
    private C15237l createdTime;
    @AbstractC15247q
    private Boolean deleted;
    @AbstractC15247q
    private String htmlContent;
    @AbstractC15247q

    /* renamed from: id */
    private String f55444id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private C15237l modifiedTime;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final Reply clone() {
        return (Reply) super.clone();
    }

    public final String getAction() {
        return this.action;
    }

    public final User getAuthor() {
        return this.author;
    }

    public final String getContent() {
        return this.content;
    }

    public final C15237l getCreatedTime() {
        return this.createdTime;
    }

    public final Boolean getDeleted() {
        return this.deleted;
    }

    public final String getHtmlContent() {
        return this.htmlContent;
    }

    public final String getId() {
        return this.f55444id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final C15237l getModifiedTime() {
        return this.modifiedTime;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final Reply set(String str, Object obj) {
        return (Reply) super.set(str, obj);
    }

    public final Reply setAction(String str) {
        this.action = str;
        return this;
    }

    public final Reply setAuthor(User user) {
        this.author = user;
        return this;
    }

    public final Reply setContent(String str) {
        this.content = str;
        return this;
    }

    public final Reply setCreatedTime(C15237l c15237l) {
        this.createdTime = c15237l;
        return this;
    }

    public final Reply setDeleted(Boolean bool) {
        this.deleted = bool;
        return this;
    }

    public final Reply setHtmlContent(String str) {
        this.htmlContent = str;
        return this;
    }

    public final Reply setId(String str) {
        this.f55444id = str;
        return this;
    }

    public final Reply setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Reply setModifiedTime(C15237l c15237l) {
        this.modifiedTime = c15237l;
        return this;
    }
}
