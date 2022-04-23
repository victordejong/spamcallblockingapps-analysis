package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ActivityContentDetailsPlaylistItem.class */
public final class ActivityContentDetailsPlaylistItem extends GenericJson {
    @q
    private String playlistId;
    @q
    private String playlistItemId;
    @q
    private ResourceId resourceId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ActivityContentDetailsPlaylistItem clone() {
        return (ActivityContentDetailsPlaylistItem) super.clone();
    }

    public final String getPlaylistId() {
        return this.playlistId;
    }

    public final String getPlaylistItemId() {
        return this.playlistItemId;
    }

    public final ResourceId getResourceId() {
        return this.resourceId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ActivityContentDetailsPlaylistItem set(String str, Object obj) {
        return (ActivityContentDetailsPlaylistItem) super.set(str, obj);
    }

    public final ActivityContentDetailsPlaylistItem setPlaylistId(String str) {
        this.playlistId = str;
        return this;
    }

    public final ActivityContentDetailsPlaylistItem setPlaylistItemId(String str) {
        this.playlistItemId = str;
        return this;
    }

    public final ActivityContentDetailsPlaylistItem setResourceId(ResourceId resourceId) {
        this.resourceId = resourceId;
        return this;
    }
}
