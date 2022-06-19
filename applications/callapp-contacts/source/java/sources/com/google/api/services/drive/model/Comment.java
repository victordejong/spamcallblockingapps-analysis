package com.google.api.services.drive.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Comment.class */
public final class Comment extends GenericJson {
    @AbstractC15247q
    private String anchor;
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
    private String f55439id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private C15237l modifiedTime;
    @AbstractC15247q
    private QuotedFileContent quotedFileContent;
    @AbstractC15247q
    private List<Reply> replies;
    @AbstractC15247q
    private Boolean resolved;

    /* loaded from: classes4-dex2jar.jar:com/google/api/services/drive/model/Comment$QuotedFileContent.class */
    public static final class QuotedFileContent extends GenericJson {
        @AbstractC15247q
        private String mimeType;
        @AbstractC15247q
        private String value;

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
        public final QuotedFileContent clone() {
            return (QuotedFileContent) super.clone();
        }

        public final String getMimeType() {
            return this.mimeType;
        }

        public final String getValue() {
            return this.value;
        }

        @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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
        return this.f55439id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final C15237l getModifiedTime() {
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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

    public final Comment setCreatedTime(C15237l c15237l) {
        this.createdTime = c15237l;
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
        this.f55439id = str;
        return this;
    }

    public final Comment setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Comment setModifiedTime(C15237l c15237l) {
        this.modifiedTime = c15237l;
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
