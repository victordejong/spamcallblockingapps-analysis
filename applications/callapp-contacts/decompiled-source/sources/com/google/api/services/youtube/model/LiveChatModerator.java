package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatModerator.class */
public final class LiveChatModerator extends GenericJson {
    @q
    private String etag;
    @q
    private String id;
    @q
    private String kind;
    @q
    private LiveChatModeratorSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveChatModerator clone() {
        return (LiveChatModerator) super.clone();
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

    public final LiveChatModeratorSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveChatModerator set(String str, Object obj) {
        return (LiveChatModerator) super.set(str, obj);
    }

    public final LiveChatModerator setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final LiveChatModerator setId(String str) {
        this.id = str;
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
