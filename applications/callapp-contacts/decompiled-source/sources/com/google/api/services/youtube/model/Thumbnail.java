package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Thumbnail.class */
public final class Thumbnail extends GenericJson {
    @q
    private Long height;
    @q
    private String url;
    @q
    private Long width;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Thumbnail clone() {
        return (Thumbnail) super.clone();
    }

    public final Long getHeight() {
        return this.height;
    }

    public final String getUrl() {
        return this.url;
    }

    public final Long getWidth() {
        return this.width;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Thumbnail set(String str, Object obj) {
        return (Thumbnail) super.set(str, obj);
    }

    public final Thumbnail setHeight(Long l) {
        this.height = l;
        return this;
    }

    public final Thumbnail setUrl(String str) {
        this.url = str;
        return this;
    }

    public final Thumbnail setWidth(Long l) {
        this.width = l;
        return this;
    }
}
