package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LanguageTag.class */
public final class LanguageTag extends GenericJson {
    @q
    private String value;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LanguageTag clone() {
        return (LanguageTag) super.clone();
    }

    public final String getValue() {
        return this.value;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LanguageTag set(String str, Object obj) {
        return (LanguageTag) super.set(str, obj);
    }

    public final LanguageTag setValue(String str) {
        this.value = str;
        return this;
    }
}
