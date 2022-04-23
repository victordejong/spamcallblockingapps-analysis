package com.google.api.services.youtube.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/CommentThreadListResponse.class */
public final class CommentThreadListResponse extends GenericJson {
    @q
    private String etag;
    @q
    private String eventId;
    @q
    private List<CommentThread> items;
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
        j.a(CommentThread.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final CommentThreadListResponse clone() {
        return (CommentThreadListResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<CommentThread> getItems() {
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
    public final CommentThreadListResponse set(String str, Object obj) {
        return (CommentThreadListResponse) super.set(str, obj);
    }

    public final CommentThreadListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final CommentThreadListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final CommentThreadListResponse setItems(List<CommentThread> list) {
        this.items = list;
        return this;
    }

    public final CommentThreadListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final CommentThreadListResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final CommentThreadListResponse setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public final CommentThreadListResponse setTokenPagination(TokenPagination tokenPagination) {
        this.tokenPagination = tokenPagination;
        return this;
    }

    public final CommentThreadListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
