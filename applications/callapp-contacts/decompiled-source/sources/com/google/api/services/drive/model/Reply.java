package com.google.api.services.drive.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Reply.class */
public final class Reply extends GenericJson {
    @q
    private String action;
    @q
    private User author;
    @q
    private String content;
    @q
    private l createdTime;
    @q
    private Boolean deleted;
    @q
    private String htmlContent;
    @q
    private String id;
    @q
    private String kind;
    @q
    private l modifiedTime;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    public final l getCreatedTime() {
        return this.createdTime;
    }

    public final Boolean getDeleted() {
        return this.deleted;
    }

    public final String getHtmlContent() {
        return this.htmlContent;
    }

    public final String getId() {
        return this.id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final l getModifiedTime() {
        return this.modifiedTime;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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

    public final Reply setCreatedTime(l lVar) {
        this.createdTime = lVar;
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
        this.id = str;
        return this;
    }

    public final Reply setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Reply setModifiedTime(l lVar) {
        this.modifiedTime = lVar;
        return this;
    }
}
