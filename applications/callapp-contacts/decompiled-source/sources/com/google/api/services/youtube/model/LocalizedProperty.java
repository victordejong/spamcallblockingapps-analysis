package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LocalizedProperty.class */
public final class LocalizedProperty extends GenericJson {
    @q
    private LanguageTag defaultLanguage;
    @q(a = "default")
    private String default__;
    @q
    private List<LocalizedString> localized;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LocalizedProperty clone() {
        return (LocalizedProperty) super.clone();
    }

    public final String getDefault() {
        return this.default__;
    }

    public final LanguageTag getDefaultLanguage() {
        return this.defaultLanguage;
    }

    public final List<LocalizedString> getLocalized() {
        return this.localized;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LocalizedProperty set(String str, Object obj) {
        return (LocalizedProperty) super.set(str, obj);
    }

    public final LocalizedProperty setDefault(String str) {
        this.default__ = str;
        return this;
    }

    public final LocalizedProperty setDefaultLanguage(LanguageTag languageTag) {
        this.defaultLanguage = languageTag;
        return this;
    }

    public final LocalizedProperty setLocalized(List<LocalizedString> list) {
        this.localized = list;
        return this;
    }
}
