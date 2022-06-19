package com.google.api.services.drive.model;

import com.google.api.client.json.C8666b;
import com.google.api.client.util.AbstractC8720o;
import com.google.api.client.util.DateTime;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/Comment.class */
public final class Comment extends C8666b {
    @AbstractC8720o
    private String anchor;
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
    private String f38572id;
    @AbstractC8720o
    private String kind;
    @AbstractC8720o
    private DateTime modifiedTime;
    @AbstractC8720o
    private QuotedFileContent quotedFileContent;
    @AbstractC8720o
    private List<Reply> replies;
    @AbstractC8720o
    private Boolean resolved;

    /* loaded from: classes2-dex2jar.jar:com/google/api/services/drive/model/Comment$QuotedFileContent.class */
    public static final class QuotedFileContent extends C8666b {
        @AbstractC8720o
        private String mimeType;
        @AbstractC8720o
        private String value;

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
        public QuotedFileContent clone() {
            return (QuotedFileContent) super.clone();
        }

        public String getMimeType() {
            return this.mimeType;
        }

        public String getValue() {
            return this.value;
        }

        @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
        public QuotedFileContent set(String str, Object obj) {
            return (QuotedFileContent) super.set(str, obj);
        }

        public QuotedFileContent setMimeType(String str) {
            this.mimeType = str;
            return this;
        }

        public QuotedFileContent setValue(String str) {
            this.value = str;
            return this;
        }
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData, java.util.AbstractMap
    public Comment clone() {
        return (Comment) super.clone();
    }

    public String getAnchor() {
        return this.anchor;
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
        return this.f38572id;
    }

    public String getKind() {
        return this.kind;
    }

    public DateTime getModifiedTime() {
        return this.modifiedTime;
    }

    public QuotedFileContent getQuotedFileContent() {
        return this.quotedFileContent;
    }

    public List<Reply> getReplies() {
        return this.replies;
    }

    public Boolean getResolved() {
        return this.resolved;
    }

    @Override // com.google.api.client.json.C8666b, com.google.api.client.util.GenericData
    public Comment set(String str, Object obj) {
        return (Comment) super.set(str, obj);
    }

    public Comment setAnchor(String str) {
        this.anchor = str;
        return this;
    }

    public Comment setAuthor(User user) {
        this.author = user;
        return this;
    }

    public Comment setContent(String str) {
        this.content = str;
        return this;
    }

    public Comment setCreatedTime(DateTime dateTime) {
        this.createdTime = dateTime;
        return this;
    }

    public Comment setDeleted(Boolean bool) {
        this.deleted = bool;
        return this;
    }

    public Comment setHtmlContent(String str) {
        this.htmlContent = str;
        return this;
    }

    public Comment setId(String str) {
        this.f38572id = str;
        return this;
    }

    public Comment setKind(String str) {
        this.kind = str;
        return this;
    }

    public Comment setModifiedTime(DateTime dateTime) {
        this.modifiedTime = dateTime;
        return this;
    }

    public Comment setQuotedFileContent(QuotedFileContent quotedFileContent) {
        this.quotedFileContent = quotedFileContent;
        return this;
    }

    public Comment setReplies(List<Reply> list) {
        this.replies = list;
        return this;
    }

    public Comment setResolved(Boolean bool) {
        this.resolved = bool;
        return this;
    }
}
