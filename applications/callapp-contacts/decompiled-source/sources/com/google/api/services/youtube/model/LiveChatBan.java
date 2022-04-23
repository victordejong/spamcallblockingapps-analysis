package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatBan.class */
public final class LiveChatBan extends GenericJson {
    @q
    private String etag;
    @q
    private String id;
    @q
    private String kind;
    @q
    private LiveChatBanSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveChatBan clone() {
        return (LiveChatBan) super.clone();
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

    public final LiveChatBanSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveChatBan set(String str, Object obj) {
        return (LiveChatBan) super.set(str, obj);
    }

    public final LiveChatBan setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final LiveChatBan setId(String str) {
        this.id = str;
        return this;
    }

    public final LiveChatBan setKind(String str) {
        this.kind = str;
        return this;
    }

    public final LiveChatBan setSnippet(LiveChatBanSnippet liveChatBanSnippet) {
        this.snippet = liveChatBanSnippet;
        return this;
    }
}
