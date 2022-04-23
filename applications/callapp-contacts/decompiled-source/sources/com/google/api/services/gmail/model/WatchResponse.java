package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/WatchResponse.class */
public final class WatchResponse extends GenericJson {
    @q
    @JsonString
    private Long expiration;
    @q
    @JsonString
    private BigInteger historyId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final WatchResponse clone() {
        return (WatchResponse) super.clone();
    }

    public final Long getExpiration() {
        return this.expiration;
    }

    public final BigInteger getHistoryId() {
        return this.historyId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final WatchResponse set(String str, Object obj) {
        return (WatchResponse) super.set(str, obj);
    }

    public final WatchResponse setExpiration(Long l) {
        this.expiration = l;
        return this;
    }

    public final WatchResponse setHistoryId(BigInteger bigInteger) {
        this.historyId = bigInteger;
        return this;
    }
}
