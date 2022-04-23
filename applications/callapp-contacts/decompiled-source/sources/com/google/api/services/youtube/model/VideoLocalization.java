package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoLocalization.class */
public final class VideoLocalization extends GenericJson {
    @q
    private String description;
    @q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoLocalization clone() {
        return (VideoLocalization) super.clone();
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoLocalization set(String str, Object obj) {
        return (VideoLocalization) super.set(str, obj);
    }

    public final VideoLocalization setDescription(String str) {
        this.description = str;
        return this;
    }

    public final VideoLocalization setTitle(String str) {
        this.title = str;
        return this;
    }
}
