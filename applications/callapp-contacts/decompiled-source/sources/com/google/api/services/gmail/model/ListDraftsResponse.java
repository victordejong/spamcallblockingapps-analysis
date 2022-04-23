package com.google.api.services.gmail.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListDraftsResponse.class */
public final class ListDraftsResponse extends GenericJson {
    @q
    private List<Draft> drafts;
    @q
    private String nextPageToken;
    @q
    private Long resultSizeEstimate;

    static {
        j.a(Draft.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ListDraftsResponse clone() {
        return (ListDraftsResponse) super.clone();
    }

    public final List<Draft> getDrafts() {
        return this.drafts;
    }

    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    public final Long getResultSizeEstimate() {
        return this.resultSizeEstimate;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ListDraftsResponse set(String str, Object obj) {
        return (ListDraftsResponse) super.set(str, obj);
    }

    public final ListDraftsResponse setDrafts(List<Draft> list) {
        this.drafts = list;
        return this;
    }

    public final ListDraftsResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final ListDraftsResponse setResultSizeEstimate(Long l) {
        this.resultSizeEstimate = l;
        return this;
    }
}
