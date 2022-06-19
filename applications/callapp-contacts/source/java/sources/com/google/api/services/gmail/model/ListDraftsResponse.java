package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListDraftsResponse.class */
public final class ListDraftsResponse extends GenericJson {
    @AbstractC15247q
    private List<Draft> drafts;
    @AbstractC15247q
    private String nextPageToken;
    @AbstractC15247q
    private Long resultSizeEstimate;

    static {
        C15232j.m9242a(Draft.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
