package com.google.api.services.gmail.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListForwardingAddressesResponse.class */
public final class ListForwardingAddressesResponse extends GenericJson {
    @q
    private List<ForwardingAddress> forwardingAddresses;

    static {
        j.a(ForwardingAddress.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ListForwardingAddressesResponse clone() {
        return (ListForwardingAddressesResponse) super.clone();
    }

    public final List<ForwardingAddress> getForwardingAddresses() {
        return this.forwardingAddresses;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ListForwardingAddressesResponse set(String str, Object obj) {
        return (ListForwardingAddressesResponse) super.set(str, obj);
    }

    public final ListForwardingAddressesResponse setForwardingAddresses(List<ForwardingAddress> list) {
        this.forwardingAddresses = list;
        return this;
    }
}
