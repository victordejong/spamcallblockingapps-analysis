package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/WatchSettings.class */
public final class WatchSettings extends GenericJson {
    @q
    private String backgroundColor;
    @q
    private String featuredPlaylistId;
    @q
    private String textColor;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final WatchSettings clone() {
        return (WatchSettings) super.clone();
    }

    public final String getBackgroundColor() {
        return this.backgroundColor;
    }

    public final String getFeaturedPlaylistId() {
        return this.featuredPlaylistId;
    }

    public final String getTextColor() {
        return this.textColor;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final WatchSettings set(String str, Object obj) {
        return (WatchSettings) super.set(str, obj);
    }

    public final WatchSettings setBackgroundColor(String str) {
        this.backgroundColor = str;
        return this;
    }

    public final WatchSettings setFeaturedPlaylistId(String str) {
        this.featuredPlaylistId = str;
        return this;
    }

    public final WatchSettings setTextColor(String str) {
        this.textColor = str;
        return this;
    }
}
