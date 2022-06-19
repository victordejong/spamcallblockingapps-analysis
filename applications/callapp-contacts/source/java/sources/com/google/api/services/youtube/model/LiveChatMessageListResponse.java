package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import com.google.api.client.p379a.C15237l;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatMessageListResponse.class */
public final class LiveChatMessageListResponse extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q
    private String eventId;
    @AbstractC15247q
    private List<LiveChatMessage> items;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String nextPageToken;
    @AbstractC15247q
    private C15237l offlineAt;
    @AbstractC15247q
    private PageInfo pageInfo;
    @AbstractC15247q
    private Long pollingIntervalMillis;
    @AbstractC15247q
    private TokenPagination tokenPagination;
    @AbstractC15247q
    private String visitorId;

    static {
        C15232j.m9242a(LiveChatMessage.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveChatMessageListResponse clone() {
        return (LiveChatMessageListResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<LiveChatMessage> getItems() {
        return this.items;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    public final C15237l getOfflineAt() {
        return this.offlineAt;
    }

    public final PageInfo getPageInfo() {
        return this.pageInfo;
    }

    public final Long getPollingIntervalMillis() {
        return this.pollingIntervalMillis;
    }

    public final TokenPagination getTokenPagination() {
        return this.tokenPagination;
    }

    public final String getVisitorId() {
        return this.visitorId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveChatMessageListResponse set(String str, Object obj) {
        return (LiveChatMessageListResponse) super.set(str, obj);
    }

    public final LiveChatMessageListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final LiveChatMessageListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final LiveChatMessageListResponse setItems(List<LiveChatMessage> list) {
        this.items = list;
        return this;
    }

    public final LiveChatMessageListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final LiveChatMessageListResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final LiveChatMessageListResponse setOfflineAt(C15237l c15237l) {
        this.offlineAt = c15237l;
        return this;
    }

    public final LiveChatMessageListResponse setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public final LiveChatMessageListResponse setPollingIntervalMillis(Long l) {
        this.pollingIntervalMillis = l;
        return this;
    }

    public final LiveChatMessageListResponse setTokenPagination(TokenPagination tokenPagination) {
        this.tokenPagination = tokenPagination;
        return this;
    }

    public final LiveChatMessageListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
