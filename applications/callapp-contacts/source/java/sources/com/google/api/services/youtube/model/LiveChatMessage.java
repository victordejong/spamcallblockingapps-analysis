package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatMessage.class */
public final class LiveChatMessage extends GenericJson {
    @AbstractC15247q
    private LiveChatMessageAuthorDetails authorDetails;
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55582id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private LiveChatMessageSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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
        return this.f55582id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final LiveChatMessageSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
        this.f55582id = str;
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
