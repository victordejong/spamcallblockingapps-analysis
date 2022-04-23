package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/I18nRegion.class */
public final class I18nRegion extends GenericJson {
    @q
    private String etag;
    @q
    private String id;
    @q
    private String kind;
    @q
    private I18nRegionSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final I18nRegion clone() {
        return (I18nRegion) super.clone();
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

    public final I18nRegionSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final I18nRegion set(String str, Object obj) {
        return (I18nRegion) super.set(str, obj);
    }

    public final I18nRegion setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final I18nRegion setId(String str) {
        this.id = str;
        return this;
    }

    public final I18nRegion setKind(String str) {
        this.kind = str;
        return this;
    }

    public final I18nRegion setSnippet(I18nRegionSnippet i18nRegionSnippet) {
        this.snippet = i18nRegionSnippet;
        return this;
    }
}
