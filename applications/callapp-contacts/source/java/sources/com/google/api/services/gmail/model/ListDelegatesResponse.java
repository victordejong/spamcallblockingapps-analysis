package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListDelegatesResponse.class */
public final class ListDelegatesResponse extends GenericJson {
    @AbstractC15247q
    private List<Delegate> delegates;

    static {
        C15232j.m9242a(Delegate.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ListDelegatesResponse clone() {
        return (ListDelegatesResponse) super.clone();
    }

    public final List<Delegate> getDelegates() {
        return this.delegates;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ListDelegatesResponse set(String str, Object obj) {
        return (ListDelegatesResponse) super.set(str, obj);
    }

    public final ListDelegatesResponse setDelegates(List<Delegate> list) {
        this.delegates = list;
        return this;
    }
}
