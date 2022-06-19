package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/LanguageSettings.class */
public final class LanguageSettings extends GenericJson {
    @AbstractC15247q
    private String displayLanguage;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LanguageSettings clone() {
        return (LanguageSettings) super.clone();
    }

    public final String getDisplayLanguage() {
        return this.displayLanguage;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LanguageSettings set(String str, Object obj) {
        return (LanguageSettings) super.set(str, obj);
    }

    public final LanguageSettings setDisplayLanguage(String str) {
        this.displayLanguage = str;
        return this;
    }
}
