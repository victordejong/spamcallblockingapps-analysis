package com.google.api.services.gmail.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListFiltersResponse.class */
public final class ListFiltersResponse extends GenericJson {
    @q
    private List<Filter> filter;

    static {
        j.a(Filter.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ListFiltersResponse clone() {
        return (ListFiltersResponse) super.clone();
    }

    public final List<Filter> getFilter() {
        return this.filter;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ListFiltersResponse set(String str, Object obj) {
        return (ListFiltersResponse) super.set(str, obj);
    }

    public final ListFiltersResponse setFilter(List<Filter> list) {
        this.filter = list;
        return this;
    }
}
