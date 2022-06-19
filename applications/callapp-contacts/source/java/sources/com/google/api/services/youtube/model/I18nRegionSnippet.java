package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/I18nRegionSnippet.class */
public final class I18nRegionSnippet extends GenericJson {
    @AbstractC15247q

    /* renamed from: gl */
    private String f55579gl;
    @AbstractC15247q
    private String name;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final I18nRegionSnippet clone() {
        return (I18nRegionSnippet) super.clone();
    }

    public final String getGl() {
        return this.f55579gl;
    }

    public final String getName() {
        return this.name;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final I18nRegionSnippet set(String str, Object obj) {
        return (I18nRegionSnippet) super.set(str, obj);
    }

    public final I18nRegionSnippet setGl(String str) {
        this.f55579gl = str;
        return this;
    }

    public final I18nRegionSnippet setName(String str) {
        this.name = str;
        return this;
    }
}
