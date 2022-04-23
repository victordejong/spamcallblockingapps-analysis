package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/I18nRegionSnippet.class */
public final class I18nRegionSnippet extends GenericJson {
    @q
    private String gl;
    @q
    private String name;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final I18nRegionSnippet clone() {
        return (I18nRegionSnippet) super.clone();
    }

    public final String getGl() {
        return this.gl;
    }

    public final String getName() {
        return this.name;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final I18nRegionSnippet set(String str, Object obj) {
        return (I18nRegionSnippet) super.set(str, obj);
    }

    public final I18nRegionSnippet setGl(String str) {
        this.gl = str;
        return this;
    }

    public final I18nRegionSnippet setName(String str) {
        this.name = str;
        return this;
    }
}
