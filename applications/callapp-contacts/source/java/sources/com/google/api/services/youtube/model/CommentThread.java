package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/CommentThread.class */
public final class CommentThread extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55574id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private CommentThreadReplies replies;
    @AbstractC15247q
    private CommentThreadSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final CommentThread clone() {
        return (CommentThread) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55574id;
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final CommentThread set(String str, Object obj) {
        return (CommentThread) super.set(str, obj);
    }

    public final CommentThread setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final CommentThread setId(String str) {
        this.f55574id = str;
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
