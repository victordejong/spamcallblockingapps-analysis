package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/GuideCategory.class */
public final class GuideCategory extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55575id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private GuideCategorySnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final GuideCategory clone() {
        return (GuideCategory) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55575id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final GuideCategorySnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final GuideCategory set(String str, Object obj) {
        return (GuideCategory) super.set(str, obj);
    }

    public final GuideCategory setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final GuideCategory setId(String str) {
        this.f55575id = str;
        return this;
    }

    public final GuideCategory setKind(String str) {
        this.kind = str;
        return this;
    }

    public final GuideCategory setSnippet(GuideCategorySnippet guideCategorySnippet) {
        this.snippet = guideCategorySnippet;
        return this;
    }
}
