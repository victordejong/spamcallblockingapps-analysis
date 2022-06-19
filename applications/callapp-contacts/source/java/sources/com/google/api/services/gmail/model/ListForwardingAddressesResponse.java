package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListForwardingAddressesResponse.class */
public final class ListForwardingAddressesResponse extends GenericJson {
    @AbstractC15247q
    private List<ForwardingAddress> forwardingAddresses;

    static {
        C15232j.m9242a(ForwardingAddress.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ListForwardingAddressesResponse clone() {
        return (ListForwardingAddressesResponse) super.clone();
    }

    public final List<ForwardingAddress> getForwardingAddresses() {
        return this.forwardingAddresses;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ListForwardingAddressesResponse set(String str, Object obj) {
        return (ListForwardingAddressesResponse) super.set(str, obj);
    }

    public final ListForwardingAddressesResponse setForwardingAddresses(List<ForwardingAddress> list) {
        this.forwardingAddresses = list;
        return this;
    }
}
