package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveStreamSnippet.class */
public final class LiveStreamSnippet extends GenericJson {
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private String description;
    @AbstractC15247q
    private Boolean isDefaultStream;
    @AbstractC15247q
    private C15237l publishedAt;
    @AbstractC15247q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    public final C15237l getPublishedAt() {
        return this.publishedAt;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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

    public final LiveStreamSnippet setPublishedAt(C15237l c15237l) {
        this.publishedAt = c15237l;
        return this;
    }

    public final LiveStreamSnippet setTitle(String str) {
        this.title = str;
        return this;
    }
}
