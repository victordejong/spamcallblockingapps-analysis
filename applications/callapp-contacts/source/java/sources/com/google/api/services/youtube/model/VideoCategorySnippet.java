package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoCategorySnippet.class */
public final class VideoCategorySnippet extends GenericJson {
    @AbstractC15247q
    private Boolean assignable;
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoCategorySnippet clone() {
        return (VideoCategorySnippet) super.clone();
    }

    public final Boolean getAssignable() {
        return this.assignable;
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoCategorySnippet set(String str, Object obj) {
        return (VideoCategorySnippet) super.set(str, obj);
    }

    public final VideoCategorySnippet setAssignable(Boolean bool) {
        this.assignable = bool;
        return this;
    }

    public final VideoCategorySnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final VideoCategorySnippet setTitle(String str) {
        this.title = str;
        return this;
    }
}
