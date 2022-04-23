package com.google.api.services.youtube.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoCategoryListResponse.class */
public final class VideoCategoryListResponse extends GenericJson {
    @q
    private String etag;
    @q
    private String eventId;
    @q
    private List<VideoCategory> items;
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
        j.a(VideoCategory.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoCategoryListResponse clone() {
        return (VideoCategoryListResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<VideoCategory> getItems() {
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
    public final VideoCategoryListResponse set(String str, Object obj) {
        return (VideoCategoryListResponse) super.set(str, obj);
    }

    public final VideoCategoryListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final VideoCategoryListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final VideoCategoryListResponse setItems(List<VideoCategory> list) {
        this.items = list;
        return this;
    }

    public final VideoCategoryListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final VideoCategoryListResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final VideoCategoryListResponse setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public final VideoCategoryListResponse setPrevPageToken(String str) {
        this.prevPageToken = str;
        return this;
    }

    public final VideoCategoryListResponse setTokenPagination(TokenPagination tokenPagination) {
        this.tokenPagination = tokenPagination;
        return this;
    }

    public final VideoCategoryListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
