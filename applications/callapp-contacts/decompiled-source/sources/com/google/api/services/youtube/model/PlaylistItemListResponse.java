package com.google.api.services.youtube.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PlaylistItemListResponse.class */
public final class PlaylistItemListResponse extends GenericJson {
    @q
    private String etag;
    @q
    private String eventId;
    @q
    private List<PlaylistItem> items;
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
        j.a(PlaylistItem.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final PlaylistItemListResponse clone() {
        return (PlaylistItemListResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<PlaylistItem> getItems() {
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
    public final PlaylistItemListResponse set(String str, Object obj) {
        return (PlaylistItemListResponse) super.set(str, obj);
    }

    public final PlaylistItemListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final PlaylistItemListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final PlaylistItemListResponse setItems(List<PlaylistItem> list) {
        this.items = list;
        return this;
    }

    public final PlaylistItemListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final PlaylistItemListResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final PlaylistItemListResponse setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public final PlaylistItemListResponse setPrevPageToken(String str) {
        this.prevPageToken = str;
        return this;
    }

    public final PlaylistItemListResponse setTokenPagination(TokenPagination tokenPagination) {
        this.tokenPagination = tokenPagination;
        return this;
    }

    public final PlaylistItemListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
