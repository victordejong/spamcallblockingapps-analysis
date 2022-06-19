package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListFiltersResponse.class */
public final class ListFiltersResponse extends GenericJson {
    @AbstractC15247q
    private List<Filter> filter;

    static {
        C15232j.m9242a(Filter.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ListFiltersResponse clone() {
        return (ListFiltersResponse) super.clone();
    }

    public final List<Filter> getFilter() {
        return this.filter;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ListFiltersResponse set(String str, Object obj) {
        return (ListFiltersResponse) super.set(str, obj);
    }

    public final ListFiltersResponse setFilter(List<Filter> list) {
        this.filter = list;
        return this;
    }
}
