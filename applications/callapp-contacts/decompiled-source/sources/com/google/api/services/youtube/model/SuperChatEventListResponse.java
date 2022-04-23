package com.google.api.services.youtube.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SuperChatEventListResponse.class */
public final class SuperChatEventListResponse extends GenericJson {
    @q
    private String etag;
    @q
    private String eventId;
    @q
    private List<SuperChatEvent> items;
    @q
    private String kind;
    @q
    private String nextPageToken;
    @q
    private PageInfo pageInfo;
    @q
    private TokenPagination tokenPagination;
    @q
    private String visitorId;

    static {
        j.a(SuperChatEvent.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final SuperChatEventListResponse clone() {
        return (SuperChatEventListResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<SuperChatEvent> getItems() {
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

    public final TokenPagination getTokenPagination() {
        return this.tokenPagination;
    }

    public final String getVisitorId() {
        return this.visitorId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final SuperChatEventListResponse set(String str, Object obj) {
        return (SuperChatEventListResponse) super.set(str, obj);
    }

    public final SuperChatEventListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final SuperChatEventListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final SuperChatEventListResponse setItems(List<SuperChatEvent> list) {
        this.items = list;
        return this;
    }

    public final SuperChatEventListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final SuperChatEventListResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final SuperChatEventListResponse setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public final SuperChatEventListResponse setTokenPagination(TokenPagination tokenPagination) {
        this.tokenPagination = tokenPagination;
        return this;
    }

    public final SuperChatEventListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
