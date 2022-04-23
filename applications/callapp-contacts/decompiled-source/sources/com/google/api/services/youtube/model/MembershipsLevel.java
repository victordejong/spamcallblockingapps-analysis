package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/MembershipsLevel.class */
public final class MembershipsLevel extends GenericJson {
    @q
    private String etag;
    @q
    private String id;
    @q
    private String kind;
    @q
    private MembershipsLevelSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final MembershipsLevel clone() {
        return (MembershipsLevel) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final MembershipsLevelSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final MembershipsLevel set(String str, Object obj) {
        return (MembershipsLevel) super.set(str, obj);
    }

    public final MembershipsLevel setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final MembershipsLevel setId(String str) {
        this.id = str;
        return this;
    }

    public final MembershipsLevel setKind(String str) {
        this.kind = str;
        return this;
    }

    public final MembershipsLevel setSnippet(MembershipsLevelSnippet membershipsLevelSnippet) {
        this.snippet = membershipsLevelSnippet;
        return this;
    }
}
