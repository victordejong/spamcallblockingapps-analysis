package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/Filter.class */
public final class Filter extends GenericJson {
    @q
    private FilterAction action;
    @q
    private FilterCriteria criteria;
    @q
    private String id;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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
        return this.id;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
        this.id = str;
        return this;
    }
}
