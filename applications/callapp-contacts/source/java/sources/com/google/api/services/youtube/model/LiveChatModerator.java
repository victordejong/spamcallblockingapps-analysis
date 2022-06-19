package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatModerator.class */
public final class LiveChatModerator extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55583id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private LiveChatModeratorSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveChatModerator clone() {
        return (LiveChatModerator) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55583id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final LiveChatModeratorSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveChatModerator set(String str, Object obj) {
        return (LiveChatModerator) super.set(str, obj);
    }

    public final LiveChatModerator setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final LiveChatModerator setId(String str) {
        this.f55583id = str;
        return this;
    }

    public final LiveChatModerator setKind(String str) {
        this.kind = str;
        return this;
    }

    public final LiveChatModerator setSnippet(LiveChatModeratorSnippet liveChatModeratorSnippet) {
        this.snippet = liveChatModeratorSnippet;
        return this;
    }
}
