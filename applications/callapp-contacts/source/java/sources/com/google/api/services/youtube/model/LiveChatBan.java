package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatBan.class */
public final class LiveChatBan extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55581id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private LiveChatBanSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveChatBan clone() {
        return (LiveChatBan) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55581id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final LiveChatBanSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveChatBan set(String str, Object obj) {
        return (LiveChatBan) super.set(str, obj);
    }

    public final LiveChatBan setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final LiveChatBan setId(String str) {
        this.f55581id = str;
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
