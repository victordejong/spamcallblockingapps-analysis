package com.google.api.services.youtube.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SubscriptionListResponse.class */
public final class SubscriptionListResponse extends GenericJson {
    @q
    private String etag;
    @q
    private String eventId;
    @q
    private List<Subscription> items;
    @q
    private String kind;
    @q
    private String nextPageToken;
    @q
    private PageInfo pageInfo;
    @q
    private String prevPageToken;
    @q
    private TokenPagination tokenPagination;
    @q
    private String visitorId;

    static {
        j.a(Subscription.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final SubscriptionListResponse clone() {
        return (SubscriptionListResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<Subscription> getItems() {
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final SubscriptionListResponse set(String str, Object obj) {
        return (SubscriptionListResponse) super.set(str, obj);
    }

    public final SubscriptionListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final SubscriptionListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final SubscriptionListResponse setItems(List<Subscription> list) {
        this.items = list;
        return this;
    }

    public final SubscriptionListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final SubscriptionListResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final SubscriptionListResponse setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public final SubscriptionListResponse setPrevPageToken(String str) {
        this.prevPageToken = str;
        return this;
    }

    public final SubscriptionListResponse setTokenPagination(TokenPagination tokenPagination) {
        this.tokenPagination = tokenPagination;
        return this;
    }

    public final SubscriptionListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
