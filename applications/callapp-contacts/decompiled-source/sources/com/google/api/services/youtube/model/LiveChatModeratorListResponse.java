package com.google.api.services.youtube.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatModeratorListResponse.class */
public final class LiveChatModeratorListResponse extends GenericJson {
    @q
    private String etag;
    @q
    private String eventId;
    @q
    private List<LiveChatModerator> items;
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
        j.a(LiveChatModerator.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveChatModeratorListResponse clone() {
        return (LiveChatModeratorListResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<LiveChatModerator> getItems() {
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
    public final LiveChatModeratorListResponse set(String str, Object obj) {
        return (LiveChatModeratorListResponse) super.set(str, obj);
    }

    public final LiveChatModeratorListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final LiveChatModeratorListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final LiveChatModeratorListResponse setItems(List<LiveChatModerator> list) {
        this.items = list;
        return this;
    }

    public final LiveChatModeratorListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final LiveChatModeratorListResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final LiveChatModeratorListResponse setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public final LiveChatModeratorListResponse setPrevPageToken(String str) {
        this.prevPageToken = str;
        return this;
    }

    public final LiveChatModeratorListResponse setTokenPagination(TokenPagination tokenPagination) {
        this.tokenPagination = tokenPagination;
        return this;
    }

    public final LiveChatModeratorListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
