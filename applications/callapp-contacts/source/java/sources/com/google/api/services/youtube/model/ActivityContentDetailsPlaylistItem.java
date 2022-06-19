package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ActivityContentDetailsPlaylistItem.class */
public final class ActivityContentDetailsPlaylistItem extends GenericJson {
    @AbstractC15247q
    private String playlistId;
    @AbstractC15247q
    private String playlistItemId;
    @AbstractC15247q
    private ResourceId resourceId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
