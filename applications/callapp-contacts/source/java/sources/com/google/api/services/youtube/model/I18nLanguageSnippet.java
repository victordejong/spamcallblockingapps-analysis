package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/I18nLanguageSnippet.class */
public final class I18nLanguageSnippet extends GenericJson {
    @AbstractC15247q

    /* renamed from: hl */
    private String f55577hl;
    @AbstractC15247q
    private String name;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final I18nLanguageSnippet clone() {
        return (I18nLanguageSnippet) super.clone();
    }

    public final String getHl() {
        return this.f55577hl;
    }

    public final String getName() {
        return this.name;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final I18nLanguageSnippet set(String str, Object obj) {
        return (I18nLanguageSnippet) super.set(str, obj);
    }

    public final I18nLanguageSnippet setHl(String str) {
        this.f55577hl = str;
        return this;
    }

    public final I18nLanguageSnippet setName(String str) {
        this.name = str;
        return this;
    }
}
