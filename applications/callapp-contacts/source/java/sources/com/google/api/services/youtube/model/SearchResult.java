package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SearchResult.class */
public final class SearchResult extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private ResourceId f55591id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private SearchResultSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final SearchResult clone() {
        return (SearchResult) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final ResourceId getId() {
        return this.f55591id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final SearchResultSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final SearchResult set(String str, Object obj) {
        return (SearchResult) super.set(str, obj);
    }

    public final SearchResult setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final SearchResult setId(ResourceId resourceId) {
        this.f55591id = resourceId;
        return this;
    }

    public final SearchResult setKind(String str) {
        this.kind = str;
        return this;
    }

    public final SearchResult setSnippet(SearchResultSnippet searchResultSnippet) {
        this.snippet = searchResultSnippet;
        return this;
    }
}
