package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PlaylistItemListResponse.class */
public final class PlaylistItemListResponse extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q
    private String eventId;
    @AbstractC15247q
    private List<PlaylistItem> items;
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
        C15232j.m9242a(PlaylistItem.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
