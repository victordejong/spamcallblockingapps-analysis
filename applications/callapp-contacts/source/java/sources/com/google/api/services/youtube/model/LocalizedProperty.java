package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LocalizedProperty.class */
public final class LocalizedProperty extends GenericJson {
    @AbstractC15247q
    private LanguageTag defaultLanguage;
    @AbstractC15247q(m9209a = "default")
    private String default__;
    @AbstractC15247q
    private List<LocalizedString> localized;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
