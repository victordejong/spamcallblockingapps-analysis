package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/FilterCriteria.class */
public final class FilterCriteria extends GenericJson {
    @AbstractC15247q
    private Boolean excludeChats;
    @AbstractC15247q
    private String from;
    @AbstractC15247q
    private Boolean hasAttachment;
    @AbstractC15247q
    private String negatedQuery;
    @AbstractC15247q
    private String query;
    @AbstractC15247q
    private Integer size;
    @AbstractC15247q
    private String sizeComparison;
    @AbstractC15247q
    private String subject;
    @AbstractC15247q

    /* renamed from: to */
    private String f55490to;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final FilterCriteria clone() {
        return (FilterCriteria) super.clone();
    }

    public final Boolean getExcludeChats() {
        return this.excludeChats;
    }

    public final String getFrom() {
        return this.from;
    }

    public final Boolean getHasAttachment() {
        return this.hasAttachment;
    }

    public final String getNegatedQuery() {
        return this.negatedQuery;
    }

    public final String getQuery() {
        return this.query;
    }

    public final Integer getSize() {
        return this.size;
    }

    public final String getSizeComparison() {
        return this.sizeComparison;
    }

    public final String getSubject() {
        return this.subject;
    }

    public final String getTo() {
        return this.f55490to;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final FilterCriteria set(String str, Object obj) {
        return (FilterCriteria) super.set(str, obj);
    }

    public final FilterCriteria setExcludeChats(Boolean bool) {
        this.excludeChats = bool;
        return this;
    }

    public final FilterCriteria setFrom(String str) {
        this.from = str;
        return this;
    }

    public final FilterCriteria setHasAttachment(Boolean bool) {
        this.hasAttachment = bool;
        return this;
    }

    public final FilterCriteria setNegatedQuery(String str) {
        this.negatedQuery = str;
        return this;
    }

    public final FilterCriteria setQuery(String str) {
        this.query = str;
        return this;
    }

    public final FilterCriteria setSize(Integer num) {
        this.size = num;
        return this;
    }

    public final FilterCriteria setSizeComparison(String str) {
        this.sizeComparison = str;
        return this;
    }

    public final FilterCriteria setSubject(String str) {
        this.subject = str;
        return this;
    }

    public final FilterCriteria setTo(String str) {
        this.f55490to = str;
        return this;
    }
}
