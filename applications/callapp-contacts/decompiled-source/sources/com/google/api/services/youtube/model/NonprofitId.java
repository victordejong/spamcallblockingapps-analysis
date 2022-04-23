package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/NonprofitId.class */
public final class NonprofitId extends GenericJson {
    @q
    private String value;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final NonprofitId clone() {
        return (NonprofitId) super.clone();
    }

    public final String getValue() {
        return this.value;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final NonprofitId set(String str, Object obj) {
        return (NonprofitId) super.set(str, obj);
    }

    public final NonprofitId setValue(String str) {
        this.value = str;
        return this;
    }
}
