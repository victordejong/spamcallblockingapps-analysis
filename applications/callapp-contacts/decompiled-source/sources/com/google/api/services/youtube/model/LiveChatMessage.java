package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatMessage.class */
public final class LiveChatMessage extends GenericJson {
    @q
    private LiveChatMessageAuthorDetails authorDetails;
    @q
    private String etag;
    @q
    private String id;
    @q
    private String kind;
    @q
    private LiveChatMessageSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveChatMessage clone() {
        return (LiveChatMessage) super.clone();
    }

    public final LiveChatMessageAuthorDetails getAuthorDetails() {
        return this.authorDetails;
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

    public final LiveChatMessageSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveChatMessage set(String str, Object obj) {
        return (LiveChatMessage) super.set(str, obj);
    }

    public final LiveChatMessage setAuthorDetails(LiveChatMessageAuthorDetails liveChatMessageAuthorDetails) {
        this.authorDetails = liveChatMessageAuthorDetails;
        return this;
    }

    public final LiveChatMessage setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final LiveChatMessage setId(String str) {
        this.id = str;
        return this;
    }

    public final LiveChatMessage setKind(String str) {
        this.kind = str;
        return this;
    }

    public final LiveChatMessage setSnippet(LiveChatMessageSnippet liveChatMessageSnippet) {
        this.snippet = liveChatMessageSnippet;
        return this;
    }
}
