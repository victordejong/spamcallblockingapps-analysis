package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListThreadsResponse.class */
public final class ListThreadsResponse extends GenericJson {
    @q
    private String nextPageToken;
    @q
    private Long resultSizeEstimate;
    @q
    private List<Thread> threads;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ListThreadsResponse clone() {
        return (ListThreadsResponse) super.clone();
    }

    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    public final Long getResultSizeEstimate() {
        return this.resultSizeEstimate;
    }

    public final List<Thread> getThreads() {
        return this.threads;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ListThreadsResponse set(String str, Object obj) {
        return (ListThreadsResponse) super.set(str, obj);
    }

    public final ListThreadsResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final ListThreadsResponse setResultSizeEstimate(Long l) {
        this.resultSizeEstimate = l;
        return this;
    }

    public final ListThreadsResponse setThreads(List<Thread> list) {
        this.threads = list;
        return this;
    }
}
