package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LocalizedString.class */
public final class LocalizedString extends GenericJson {
    @q
    private String language;
    @q
    private String value;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LocalizedString clone() {
        return (LocalizedString) super.clone();
    }

    public final String getLanguage() {
        return this.language;
    }

    public final String getValue() {
        return this.value;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
