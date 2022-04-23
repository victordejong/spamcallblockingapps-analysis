package com.google.api.services.youtube.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/MemberListResponse.class */
public final class MemberListResponse extends GenericJson {
    @q
    private String etag;
    @q
    private String eventId;
    @q
    private List<Member> items;
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
        j.a(Member.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final MemberListResponse clone() {
        return (MemberListResponse) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getEventId() {
        return this.eventId;
    }

    public final List<Member> getItems() {
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
    public final MemberListResponse set(String str, Object obj) {
        return (MemberListResponse) super.set(str, obj);
    }

    public final MemberListResponse setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final MemberListResponse setEventId(String str) {
        this.eventId = str;
        return this;
    }

    public final MemberListResponse setItems(List<Member> list) {
        this.items = list;
        return this;
    }

    public final MemberListResponse setKind(String str) {
        this.kind = str;
        return this;
    }

    public final MemberListResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final MemberListResponse setPageInfo(PageInfo pageInfo) {
        this.pageInfo = pageInfo;
        return this;
    }

    public final MemberListResponse setTokenPagination(TokenPagination tokenPagination) {
        this.tokenPagination = tokenPagination;
        return this;
    }

    public final MemberListResponse setVisitorId(String str) {
        this.visitorId = str;
        return this;
    }
}
