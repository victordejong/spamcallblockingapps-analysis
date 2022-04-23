package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SearchListResponse.class */
public final class SearchListResponse extends GenericJson {
    @q
    private String etag;
    @q
    private String eventId;
    @q
    private List<SearchResult> items;
    @q
    private String kind;
    @q
    private String nextPageToken;
    @q
    private PageInfo pageInfo;
    @q
    private String prevPageToken;
    @q
    private String regionCode;
    @q
    private TokenPagination tokenPagination;
    @q
    private String visitorId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final SearchListResponse clone() {
        return (SearchListResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<SearchResult> getItems() {
        return this.items;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    public final PageInfo getPageInfo() {
        return this.pageInfo;
    }

    public final String getPrevPageToken() {
        return this.prevPageToken;
    }

    public final String getRegionCode() {
        return this.regionCode;
    }

    public final TokenPagination getTokenPagination() {
        return this.tokenPagination;
    }

    public final String getVisitorId() {
        return this.visitorId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final SearchListResponse set(String str, Object obj) {
        return (SearchListResponse) super.set(str, obj);
    }

    public final SearchListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final SearchListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final SearchListResponse setItems(List<SearchResult> list) {
        this.items = list;
        return this;
    }

    public final SearchListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final SearchListResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final SearchListResponse setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public final SearchListResponse setPrevPageToken(String str) {
        this.prevPageToken = str;
        return this;
    }

    public final SearchListResponse setRegionCode(String str) {
        this.regionCode = str;
        return this;
    }

    public final SearchListResponse setTokenPagination(TokenPagination tokenPagination) {
        this.tokenPagination = tokenPagination;
        return this;
    }

    public final SearchListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
