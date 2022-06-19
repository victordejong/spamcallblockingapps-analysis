package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/I18nRegion.class */
public final class I18nRegion extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55578id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private I18nRegionSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final I18nRegion clone() {
        return (I18nRegion) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55578id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final I18nRegionSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final I18nRegion set(String str, Object obj) {
        return (I18nRegion) super.set(str, obj);
    }

    public final I18nRegion setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final I18nRegion setId(String str) {
        this.f55578id = str;
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
