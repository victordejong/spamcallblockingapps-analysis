package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveStreamSnippet.class */
public final class LiveStreamSnippet extends GenericJson {
    @q
    private String channelId;
    @q
    private String description;
    @q
    private Boolean isDefaultStream;
    @q
    private l publishedAt;
    @q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveStreamSnippet clone() {
        return (LiveStreamSnippet) super.clone();
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getDescription() {
        return this.description;
    }

    public final Boolean getIsDefaultStream() {
        return this.isDefaultStream;
    }

    public final l getPublishedAt() {
        return this.publishedAt;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveStreamSnippet set(String str, Object obj) {
        return (LiveStreamSnippet) super.set(str, obj);
    }

    public final LiveStreamSnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final LiveStreamSnippet setDescription(String str) {
        this.description = str;
        return this;
    }

    public final LiveStreamSnippet setIsDefaultStream(Boolean bool) {
        this.isDefaultStream = bool;
        return this;
    }

    public final LiveStreamSnippet setPublishedAt(l lVar) {
        this.publishedAt = lVar;
        return this;
    }

    public final LiveStreamSnippet setTitle(String str) {
        this.title = str;
        return this;
    }
}
