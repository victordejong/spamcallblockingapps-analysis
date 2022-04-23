package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListSmimeInfoResponse.class */
public final class ListSmimeInfoResponse extends GenericJson {
    @q
    private List<SmimeInfo> smimeInfo;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ListSmimeInfoResponse clone() {
        return (ListSmimeInfoResponse) super.clone();
    }

    public final List<SmimeInfo> getSmimeInfo() {
        return this.smimeInfo;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ListSmimeInfoResponse set(String str, Object obj) {
        return (ListSmimeInfoResponse) super.set(str, obj);
    }

    public final ListSmimeInfoResponse setSmimeInfo(List<SmimeInfo> list) {
        this.smimeInfo = list;
        return this;
    }
}
