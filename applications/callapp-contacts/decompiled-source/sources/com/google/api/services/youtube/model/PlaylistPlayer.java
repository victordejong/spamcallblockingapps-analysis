package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PlaylistPlayer.class */
public final class PlaylistPlayer extends GenericJson {
    @q
    private String embedHtml;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final PlaylistPlayer clone() {
        return (PlaylistPlayer) super.clone();
    }

    public final String getEmbedHtml() {
        return this.embedHtml;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final PlaylistPlayer set(String str, Object obj) {
        return (PlaylistPlayer) super.set(str, obj);
    }

    public final PlaylistPlayer setEmbedHtml(String str) {
        this.embedHtml = str;
        return this;
    }
}
