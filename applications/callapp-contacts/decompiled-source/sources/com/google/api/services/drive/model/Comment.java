package com.google.api.services.drive.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Comment.class */
public final class Comment extends GenericJson {
    @q
    private String anchor;
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
    @q
    private QuotedFileContent quotedFileContent;
    @q
    private List<Reply> replies;
    @q
    private Boolean resolved;

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Comment$QuotedFileContent.class */
    public static final class QuotedFileContent extends GenericJson {
        @q
        private String mimeType;
        @q
        private String value;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
        public final QuotedFileContent clone() {
            return (QuotedFileContent) super.clone();
        }

        public final String getMimeType() {
            return this.mimeType;
        }

        public final String getValue() {
            return this.value;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
        public final QuotedFileContent set(String str, Object obj) {
            return (QuotedFileContent) super.set(str, obj);
        }

        public final QuotedFileContent setMimeType(String str) {
            this.mimeType = str;
            return this;
        }

        public final QuotedFileContent setValue(String str) {
            this.value = str;
            return this;
        }
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Comment clone() {
        return (Comment) super.clone();
    }

    public final String getAnchor() {
        return this.anchor;
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

    public final QuotedFileContent getQuotedFileContent() {
        return this.quotedFileContent;
    }

    public final List<Reply> getReplies() {
        return this.replies;
    }

    public final Boolean getResolved() {
        return this.resolved;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Comment set(String str, Object obj) {
        return (Comment) super.set(str, obj);
    }

    public final Comment setAnchor(String str) {
        this.anchor = str;
        return this;
    }

    public final Comment setAuthor(User user) {
        this.author = user;
        return this;
    }

    public final Comment setContent(String str) {
        this.content = str;
        return this;
    }

    public final Comment setCreatedTime(l lVar) {
        this.createdTime = lVar;
        return this;
    }

    public final Comment setDeleted(Boolean bool) {
        this.deleted = bool;
        return this;
    }

    public final Comment setHtmlContent(String str) {
        this.htmlContent = str;
        return this;
    }

    public final Comment setId(String str) {
        this.id = str;
        return this;
    }

    public final Comment setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Comment setModifiedTime(l lVar) {
        this.modifiedTime = lVar;
        return this;
    }

    public final Comment setQuotedFileContent(QuotedFileContent quotedFileContent) {
        this.quotedFileContent = quotedFileContent;
        return this;
    }

    public final Comment setReplies(List<Reply> list) {
        this.replies = list;
        return this;
    }

    public final Comment setResolved(Boolean bool) {
        this.resolved = bool;
        return this;
    }
}
