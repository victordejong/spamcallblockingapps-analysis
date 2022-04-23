package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoCategory.class */
public final class VideoCategory extends GenericJson {
    @q
    private String etag;
    @q
    private String id;
    @q
    private String kind;
    @q
    private VideoCategorySnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoCategory clone() {
        return (VideoCategory) super.clone();
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

    public final VideoCategorySnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoCategory set(String str, Object obj) {
        return (VideoCategory) super.set(str, obj);
    }

    public final VideoCategory setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final VideoCategory setId(String str) {
        this.id = str;
        return this;
    }

    public final VideoCategory setKind(String str) {
        this.kind = str;
        return this;
    }

    public final VideoCategory setSnippet(VideoCategorySnippet videoCategorySnippet) {
        this.snippet = videoCategorySnippet;
        return this;
    }
}
