package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PlaylistItem.class */
public final class PlaylistItem extends GenericJson {
    @q
    private PlaylistItemContentDetails contentDetails;
    @q
    private String etag;
    @q
    private String id;
    @q
    private String kind;
    @q
    private PlaylistItemSnippet snippet;
    @q
    private PlaylistItemStatus status;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final PlaylistItem clone() {
        return (PlaylistItem) super.clone();
    }

    public final PlaylistItemContentDetails getContentDetails() {
        return this.contentDetails;
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

    public final PlaylistItemSnippet getSnippet() {
        return this.snippet;
    }

    public final PlaylistItemStatus getStatus() {
        return this.status;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final PlaylistItem set(String str, Object obj) {
        return (PlaylistItem) super.set(str, obj);
    }

    public final PlaylistItem setContentDetails(PlaylistItemContentDetails playlistItemContentDetails) {
        this.contentDetails = playlistItemContentDetails;
        return this;
    }

    public final PlaylistItem setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final PlaylistItem setId(String str) {
        this.id = str;
        return this;
    }

    public final PlaylistItem setKind(String str) {
        this.kind = str;
        return this;
    }

    public final PlaylistItem setSnippet(PlaylistItemSnippet playlistItemSnippet) {
        this.snippet = playlistItemSnippet;
        return this;
    }

    public final PlaylistItem setStatus(PlaylistItemStatus playlistItemStatus) {
        this.status = playlistItemStatus;
        return this;
    }
}
