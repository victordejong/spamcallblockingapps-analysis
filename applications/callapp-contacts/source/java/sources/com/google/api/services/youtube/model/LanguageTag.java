package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LanguageTag.class */
public final class LanguageTag extends GenericJson {
    @AbstractC15247q
    private String value;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LanguageTag clone() {
        return (LanguageTag) super.clone();
    }

    public final String getValue() {
        return this.value;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LanguageTag set(String str, Object obj) {
        return (LanguageTag) super.set(str, obj);
    }

    public final LanguageTag setValue(String str) {
        this.value = str;
        return this;
    }
}
