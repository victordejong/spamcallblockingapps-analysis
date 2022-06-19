package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/Filter.class */
public final class Filter extends GenericJson {
    @AbstractC15247q
    private FilterAction action;
    @AbstractC15247q
    private FilterCriteria criteria;
    @AbstractC15247q

    /* renamed from: id */
    private String f55489id;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final Filter clone() {
        return (Filter) super.clone();
    }

    public final FilterAction getAction() {
        return this.action;
    }

    public final FilterCriteria getCriteria() {
        return this.criteria;
    }

    public final String getId() {
        return this.f55489id;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final Filter set(String str, Object obj) {
        return (Filter) super.set(str, obj);
    }

    public final Filter setAction(FilterAction filterAction) {
        this.action = filterAction;
        return this;
    }

    public final Filter setCriteria(FilterCriteria filterCriteria) {
        this.criteria = filterCriteria;
        return this;
    }

    public final Filter setId(String str) {
        this.f55489id = str;
        return this;
    }
}
