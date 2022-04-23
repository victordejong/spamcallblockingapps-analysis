package com.google.api.services.youtube.model;

import com.google.api.client.a.j;
import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatMessageListResponse.class */
public final class LiveChatMessageListResponse extends GenericJson {
    @q
    private String etag;
    @q
    private String eventId;
    @q
    private List<LiveChatMessage> items;
    @q
    private String kind;
    @q
    private String nextPageToken;
    @q
    private l offlineAt;
    @q
    private PageInfo pageInfo;
    @q
    private Long pollingIntervalMillis;
    @q
    private TokenPagination tokenPagination;
    @q
    private String visitorId;

    static {
        j.a(LiveChatMessage.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    public final l getOfflineAt() {
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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

    public final LiveChatMessageListResponse setOfflineAt(l lVar) {
        this.offlineAt = lVar;
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
