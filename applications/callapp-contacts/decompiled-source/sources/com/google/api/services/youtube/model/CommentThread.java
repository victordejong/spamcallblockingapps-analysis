package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/CommentThread.class */
public final class CommentThread extends GenericJson {
    @q
    private String etag;
    @q
    private String id;
    @q
    private String kind;
    @q
    private CommentThreadReplies replies;
    @q
    private CommentThreadSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final CommentThread clone() {
        return (CommentThread) super.clone();
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

    public final CommentThreadReplies getReplies() {
        return this.replies;
    }

    public final CommentThreadSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final CommentThread set(String str, Object obj) {
        return (CommentThread) super.set(str, obj);
    }

    public final CommentThread setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final CommentThread setId(String str) {
        this.id = str;
        return this;
    }

    public final CommentThread setKind(String str) {
        this.kind = str;
        return this;
    }

    public final CommentThread setReplies(CommentThreadReplies commentThreadReplies) {
        this.replies = commentThreadReplies;
        return this;
    }

    public final CommentThread setSnippet(CommentThreadSnippet commentThreadSnippet) {
        this.snippet = commentThreadSnippet;
        return this;
    }
}
