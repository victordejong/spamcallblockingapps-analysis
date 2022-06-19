package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PlaylistItem.class */
public final class PlaylistItem extends GenericJson {
    @AbstractC15247q
    private PlaylistItemContentDetails contentDetails;
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55589id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private PlaylistItemSnippet snippet;
    @AbstractC15247q
    private PlaylistItemStatus status;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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
        return this.f55589id;
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
        this.f55589id = str;
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
