package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PlaylistLocalization.class */
public final class PlaylistLocalization extends GenericJson {
    @q
    private String description;
    @q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final PlaylistLocalization clone() {
        return (PlaylistLocalization) super.clone();
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final PlaylistLocalization set(String str, Object obj) {
        return (PlaylistLocalization) super.set(str, obj);
    }

    public final PlaylistLocalization setDescription(String str) {
        this.description = str;
        return this;
    }

    public final PlaylistLocalization setTitle(String str) {
        this.title = str;
        return this;
    }
}
