package com.google.api.services.gmail.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListDelegatesResponse.class */
public final class ListDelegatesResponse extends GenericJson {
    @q
    private List<Delegate> delegates;

    static {
        j.a(Delegate.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ListDelegatesResponse clone() {
        return (ListDelegatesResponse) super.clone();
    }

    public final List<Delegate> getDelegates() {
        return this.delegates;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ListDelegatesResponse set(String str, Object obj) {
        return (ListDelegatesResponse) super.set(str, obj);
    }

    public final ListDelegatesResponse setDelegates(List<Delegate> list) {
        this.delegates = list;
        return this;
    }
}
