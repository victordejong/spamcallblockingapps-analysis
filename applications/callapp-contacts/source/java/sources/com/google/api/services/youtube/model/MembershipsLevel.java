package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/MembershipsLevel.class */
public final class MembershipsLevel extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55587id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private MembershipsLevelSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final MembershipsLevel clone() {
        return (MembershipsLevel) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55587id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final MembershipsLevelSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final MembershipsLevel set(String str, Object obj) {
        return (MembershipsLevel) super.set(str, obj);
    }

    public final MembershipsLevel setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final MembershipsLevel setId(String str) {
        this.f55587id = str;
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
