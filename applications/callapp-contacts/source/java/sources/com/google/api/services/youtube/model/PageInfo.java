package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PageInfo.class */
public final class PageInfo extends GenericJson {
    @AbstractC15247q
    private Integer resultsPerPage;
    @AbstractC15247q
    private Integer totalResults;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final PageInfo clone() {
        return (PageInfo) super.clone();
    }

    public final Integer getResultsPerPage() {
        return this.resultsPerPage;
    }

    public final Integer getTotalResults() {
        return this.totalResults;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
