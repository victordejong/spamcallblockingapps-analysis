package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LocalizedString.class */
public final class LocalizedString extends GenericJson {
    @AbstractC15247q
    private String language;
    @AbstractC15247q
    private String value;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LocalizedString clone() {
        return (LocalizedString) super.clone();
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getValue() {
        return this.value;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LocalizedString set(String str, Object obj) {
        return (LocalizedString) super.set(str, obj);
    }

    public final LocalizedString setLanguage(String str) {
        this.language = str;
        return this;
    }

    public final LocalizedString setValue(String str) {
        this.value = str;
        return this;
    }
}
