package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.DateTime;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/Reply.class */
public final class Reply extends C8666b {
    @AbstractC8720o
    private String action;
    @AbstractC8720o
    private User author;
    @AbstractC8720o
    private String content;
    @AbstractC8720o
    private DateTime createdTime;
    @AbstractC8720o
    private Boolean deleted;
    @AbstractC8720o
    private String htmlContent;
    @AbstractC8720o

    /* renamed from: id */
    private String f38575id;
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private DateTime modifiedTime;

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public Reply clone() {
        return (Reply) super.clone();
    }

    public String getAction() {
        return this.action;
    }

    public User getAuthor() {
        return this.author;
    }

    public String getContent() {
        return this.content;
    }

    public DateTime getCreatedTime() {
        return this.createdTime;
    }

    public Boolean getDeleted() {
        return this.deleted;
    }

    public String getHtmlContent() {
        return this.htmlContent;
    }

    public String getId() {
        return this.f38575id;
    }

    public String getKind() {
        return this.kind;
    }

    public DateTime getModifiedTime() {
        return this.modifiedTime;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public Reply set(String str, Object obj) {
        return (Reply) super.set(str, obj);
    }

    public Reply setAction(String str) {
        this.action = str;
        return this;
    }

    public Reply setAuthor(User user) {
        this.author = user;
        return this;
    }

    public Reply setContent(String str) {
        this.content = str;
        return this;
    }

    public Reply setCreatedTime(DateTime dateTime) {
        this.createdTime = dateTime;
        return this;
    }

    public Reply setDeleted(Boolean bool) {
        this.deleted = bool;
        return this;
    }

    public Reply setHtmlContent(String str) {
        this.htmlContent = str;
        return this;
    }

    public Reply setId(String str) {
        this.f38575id = str;
        return this;
    }

    public Reply setKind(String str) {
        this.kind = str;
        return this;
    }

    public Reply setModifiedTime(DateTime dateTime) {
        this.modifiedTime = dateTime;
        return this;
    }
}
