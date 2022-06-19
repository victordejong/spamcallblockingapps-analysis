package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.math.BigInteger;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListHistoryResponse.class */
public final class ListHistoryResponse extends GenericJson {
    @AbstractC15247q
    private List<History> history;
    @AbstractC15247q
    @JsonString
    private BigInteger historyId;
    @AbstractC15247q
    private String nextPageToken;

    static {
        C15232j.m9242a(History.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
