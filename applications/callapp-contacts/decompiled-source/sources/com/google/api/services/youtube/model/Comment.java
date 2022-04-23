package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Comment.class */
public final class Comment extends GenericJson {
    @q
    private String etag;
    @q
    private String id;
    @q
    private String kind;
    @q
    private CommentSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Comment clone() {
        return (Comment) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final CommentSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Comment set(String str, Object obj) {
        return (Comment) super.set(str, obj);
    }

    public final Comment setEtag(String str) {
        this.etag = str;
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

    public final Comment setSnippet(CommentSnippet commentSnippet) {
        this.snippet = commentSnippet;
        return this;
    }
}
