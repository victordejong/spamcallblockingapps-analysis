package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Member.class */
public final class Member extends GenericJson {
    @q
    private String etag;
    @q
    private String kind;
    @q
    private MemberSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Member clone() {
        return (Member) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getKind() {
        return this.kind;
    }

    public final MemberSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Member set(String str, Object obj) {
        return (Member) super.set(str, obj);
    }

    public final Member setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final Member setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Member setSnippet(MemberSnippet memberSnippet) {
        this.snippet = memberSnippet;
        return this;
    }
}
