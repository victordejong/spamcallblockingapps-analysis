package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListSendAsResponse.class */
public final class ListSendAsResponse extends GenericJson {
    @AbstractC15247q
    private List<SendAs> sendAs;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ListSendAsResponse clone() {
        return (ListSendAsResponse) super.clone();
    }

    public final List<SendAs> getSendAs() {
        return this.sendAs;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ListSendAsResponse set(String str, Object obj) {
        return (ListSendAsResponse) super.set(str, obj);
    }

    public final ListSendAsResponse setSendAs(List<SendAs> list) {
        this.sendAs = list;
        return this;
    }
}
