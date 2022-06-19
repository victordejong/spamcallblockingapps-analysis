package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/CommentListResponse.class */
public final class CommentListResponse extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q
    private String eventId;
    @AbstractC15247q
    private List<Comment> items;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String nextPageToken;
    @AbstractC15247q
    private PageInfo pageInfo;
    @AbstractC15247q
    private TokenPagination tokenPagination;
    @AbstractC15247q
    private String visitorId;

    static {
        C15232j.m9242a(Comment.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final CommentListResponse clone() {
        return (CommentListResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<Comment> getItems() {
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final CommentListResponse set(String str, Object obj) {
        return (CommentListResponse) super.set(str, obj);
    }

    public final CommentListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final CommentListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final CommentListResponse setItems(List<Comment> list) {
        this.items = list;
        return this;
    }

    public final CommentListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final CommentListResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final CommentListResponse setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public final CommentListResponse setTokenPagination(TokenPagination tokenPagination) {
        this.tokenPagination = tokenPagination;
        return this;
    }

    public final CommentListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
