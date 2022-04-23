package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PageInfo.class */
public final class PageInfo extends GenericJson {
    @q
    private Integer resultsPerPage;
    @q
    private Integer totalResults;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final PageInfo clone() {
        return (PageInfo) super.clone();
    }

    public final Integer getResultsPerPage() {
        return this.resultsPerPage;
    }

    public final Integer getTotalResults() {
        return this.totalResults;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final PageInfo set(String str, Object obj) {
        return (PageInfo) super.set(str, obj);
    }

    public final PageInfo setResultsPerPage(Integer num) {
        this.resultsPerPage = num;
        return this;
    }

    public final PageInfo setTotalResults(Integer num) {
        this.totalResults = num;
        return this;
    }
}
