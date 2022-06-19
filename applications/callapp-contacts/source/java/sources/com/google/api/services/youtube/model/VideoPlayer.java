package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoPlayer.class */
public final class VideoPlayer extends GenericJson {
    @AbstractC15247q
    @JsonString
    private Long embedHeight;
    @AbstractC15247q
    private String embedHtml;
    @AbstractC15247q
    @JsonString
    private Long embedWidth;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoPlayer clone() {
        return (VideoPlayer) super.clone();
    }

    public final Long getEmbedHeight() {
        return this.embedHeight;
    }

    public final String getEmbedHtml() {
        return this.embedHtml;
    }

    public final Long getEmbedWidth() {
        return this.embedWidth;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoPlayer set(String str, Object obj) {
        return (VideoPlayer) super.set(str, obj);
    }

    public final VideoPlayer setEmbedHeight(Long l) {
        this.embedHeight = l;
        return this;
    }

    public final VideoPlayer setEmbedHtml(String str) {
        this.embedHtml = str;
        return this;
    }

    public final VideoPlayer setEmbedWidth(Long l) {
        this.embedWidth = l;
        return this;
    }
}
