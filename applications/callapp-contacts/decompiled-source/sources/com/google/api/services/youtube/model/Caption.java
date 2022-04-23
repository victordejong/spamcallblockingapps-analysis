package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Caption.class */
public final class Caption extends GenericJson {
    @q
    private String etag;
    @q
    private String id;
    @q
    private String kind;
    @q
    private CaptionSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Caption clone() {
        return (Caption) super.clone();
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

    public final CaptionSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Caption set(String str, Object obj) {
        return (Caption) super.set(str, obj);
    }

    public final Caption setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final Caption setId(String str) {
        this.id = str;
        return this;
    }

    public final Caption setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Caption setSnippet(CaptionSnippet captionSnippet) {
        this.snippet = captionSnippet;
        return this;
    }
}
