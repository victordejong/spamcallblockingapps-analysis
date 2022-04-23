package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Playlist.class */
public final class Playlist extends GenericJson {
    @q
    private PlaylistContentDetails contentDetails;
    @q
    private String etag;
    @q
    private String id;
    @q
    private String kind;
    @q
    private Map<String, PlaylistLocalization> localizations;
    @q
    private PlaylistPlayer player;
    @q
    private PlaylistSnippet snippet;
    @q
    private PlaylistStatus status;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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
        return this.id;
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
        this.id = str;
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
