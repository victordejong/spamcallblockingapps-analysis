package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/FilterCriteria.class */
public final class FilterCriteria extends GenericJson {
    @q
    private Boolean excludeChats;
    @q
    private String from;
    @q
    private Boolean hasAttachment;
    @q
    private String negatedQuery;
    @q
    private String query;
    @q
    private Integer size;
    @q
    private String sizeComparison;
    @q
    private String subject;
    @q
    private String to;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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
        return this.to;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
        this.to = str;
        return this;
    }
}
