package com.google.api.services.gmail.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListHistoryResponse.class */
public final class ListHistoryResponse extends GenericJson {
    @q
    private List<History> history;
    @q
    @JsonString
    private BigInteger historyId;
    @q
    private String nextPageToken;

    static {
        j.a(History.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ListHistoryResponse clone() {
        return (ListHistoryResponse) super.clone();
    }

    public final List<History> getHistory() {
        return this.history;
    }

    public final BigInteger getHistoryId() {
        return this.historyId;
    }

    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ListHistoryResponse set(String str, Object obj) {
        return (ListHistoryResponse) super.set(str, obj);
    }

    public final ListHistoryResponse setHistory(List<History> list) {
        this.history = list;
        return this;
    }

    public final ListHistoryResponse setHistoryId(BigInteger bigInteger) {
        this.historyId = bigInteger;
        return this;
    }

    public final ListHistoryResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }
}
