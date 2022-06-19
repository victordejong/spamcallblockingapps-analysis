package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/I18nLanguage.class */
public final class I18nLanguage extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55576id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private I18nLanguageSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final I18nLanguage clone() {
        return (I18nLanguage) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55576id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final I18nLanguageSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final I18nLanguage set(String str, Object obj) {
        return (I18nLanguage) super.set(str, obj);
    }

    public final I18nLanguage setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final I18nLanguage setId(String str) {
        this.f55576id = str;
        return this;
    }

    public final I18nLanguage setKind(String str) {
        this.kind = str;
        return this;
    }

    public final I18nLanguage setSnippet(I18nLanguageSnippet i18nLanguageSnippet) {
        this.snippet = i18nLanguageSnippet;
        return this;
    }
}
