package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Nonprofit.class */
public final class Nonprofit extends GenericJson {
    @q
    private NonprofitId nonprofitId;
    @q
    private String nonprofitLegalName;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Nonprofit clone() {
        return (Nonprofit) super.clone();
    }

    public final NonprofitId getNonprofitId() {
        return this.nonprofitId;
    }

    public final String getNonprofitLegalName() {
        return this.nonprofitLegalName;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Nonprofit set(String str, Object obj) {
        return (Nonprofit) super.set(str, obj);
    }

    public final Nonprofit setNonprofitId(NonprofitId nonprofitId) {
        this.nonprofitId = nonprofitId;
        return this;
    }

    public final Nonprofit setNonprofitLegalName(String str) {
        this.nonprofitLegalName = str;
        return this;
    }
}
