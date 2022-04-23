package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ResourceId.class */
public final class ResourceId extends GenericJson {
    @q
    private String channelId;
    @q
    private String kind;
    @q
    private String playlistId;
    @q
    private String videoId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ResourceId clone() {
        return (ResourceId) super.clone();
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getPlaylistId() {
        return this.playlistId;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ResourceId set(String str, Object obj) {
        return (ResourceId) super.set(str, obj);
    }

    public final ResourceId setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final ResourceId setKind(String str) {
        this.kind = str;
        return this;
    }

    public final ResourceId setPlaylistId(String str) {
        this.playlistId = str;
        return this;
    }

    public final ResourceId setVideoId(String str) {
        this.videoId = str;
        return this;
    }
}
