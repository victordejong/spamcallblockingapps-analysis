package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Playlist.class */
public final class Playlist extends GenericJson {
    @AbstractC15247q
    private PlaylistContentDetails contentDetails;
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55588id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private Map<String, PlaylistLocalization> localizations;
    @AbstractC15247q
    private PlaylistPlayer player;
    @AbstractC15247q
    private PlaylistSnippet snippet;
    @AbstractC15247q
    private PlaylistStatus status;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final Playlist clone() {
        return (Playlist) super.clone();
    }

    public final PlaylistContentDetails getContentDetails() {
        return this.contentDetails;
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55588id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final Map<String, PlaylistLocalization> getLocalizations() {
        return this.localizations;
    }

    public final PlaylistPlayer getPlayer() {
        return this.player;
    }

    public final PlaylistSnippet getSnippet() {
        return this.snippet;
    }

    public final PlaylistStatus getStatus() {
        return this.status;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final Playlist set(String str, Object obj) {
        return (Playlist) super.set(str, obj);
    }

    public final Playlist setContentDetails(PlaylistContentDetails playlistContentDetails) {
        this.contentDetails = playlistContentDetails;
        return this;
    }

    public final Playlist setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final Playlist setId(String str) {
        this.f55588id = str;
        return this;
    }

    public final Playlist setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Playlist setLocalizations(Map<String, PlaylistLocalization> map) {
        this.localizations = map;
        return this;
    }

    public final Playlist setPlayer(PlaylistPlayer playlistPlayer) {
        this.player = playlistPlayer;
        return this;
    }

    public final Playlist setSnippet(PlaylistSnippet playlistSnippet) {
        this.snippet = playlistSnippet;
        return this;
    }

    public final Playlist setStatus(PlaylistStatus playlistStatus) {
        this.status = playlistStatus;
        return this;
    }
}
