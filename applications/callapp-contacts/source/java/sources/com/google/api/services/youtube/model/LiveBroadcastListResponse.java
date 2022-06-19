package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveBroadcastListResponse.class */
public final class LiveBroadcastListResponse extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q
    private String eventId;
    @AbstractC15247q
    private List<LiveBroadcast> items;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String nextPageToken;
    @AbstractC15247q
    private PageInfo pageInfo;
    @AbstractC15247q
    private String prevPageToken;
    @AbstractC15247q
    private TokenPagination tokenPagination;
    @AbstractC15247q
    private String visitorId;

    static {
        C15232j.m9242a(LiveBroadcast.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveBroadcastListResponse clone() {
        return (LiveBroadcastListResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<LiveBroadcast> getItems() {
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

    public final TokenPagination getTokenPagination() {
        return this.tokenPagination;
    }

    public final String getVisitorId() {
        return this.visitorId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveBroadcastListResponse set(String str, Object obj) {
        return (LiveBroadcastListResponse) super.set(str, obj);
    }

    public final LiveBroadcastListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final LiveBroadcastListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final LiveBroadcastListResponse setItems(List<LiveBroadcast> list) {
        this.items = list;
        return this;
    }

    public final LiveBroadcastListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final LiveBroadcastListResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final LiveBroadcastListResponse setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public final LiveBroadcastListResponse setPrevPageToken(String str) {
        this.prevPageToken = str;
        return this;
    }

    public final LiveBroadcastListResponse setTokenPagination(TokenPagination tokenPagination) {
        this.tokenPagination = tokenPagination;
        return this;
    }

    public final LiveBroadcastListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
