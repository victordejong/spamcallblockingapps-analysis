package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Caption.class */
public final class Caption extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55570id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private CaptionSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final Caption clone() {
        return (Caption) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55570id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final CaptionSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final Caption set(String str, Object obj) {
        return (Caption) super.set(str, obj);
    }

    public final Caption setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final Caption setId(String str) {
        this.f55570id = str;
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
