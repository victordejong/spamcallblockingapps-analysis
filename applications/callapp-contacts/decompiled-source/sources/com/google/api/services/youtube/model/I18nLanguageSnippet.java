package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/I18nLanguageSnippet.class */
public final class I18nLanguageSnippet extends GenericJson {
    @q
    private String hl;
    @q
    private String name;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final I18nLanguageSnippet clone() {
        return (I18nLanguageSnippet) super.clone();
    }

    public final String getHl() {
        return this.hl;
    }

    public final String getName() {
        return this.name;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final I18nLanguageSnippet set(String str, Object obj) {
        return (I18nLanguageSnippet) super.set(str, obj);
    }

    public final I18nLanguageSnippet setHl(String str) {
        this.hl = str;
        return this;
    }

    public final I18nLanguageSnippet setName(String str) {
        this.name = str;
        return this;
    }
}
