package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Sponsor.class */
public final class Sponsor extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private SponsorSnippet snippet;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final Sponsor clone() {
        return (Sponsor) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getKind() {
        return this.kind;
    }

    public final SponsorSnippet getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final Sponsor set(String str, Object obj) {
        return (Sponsor) super.set(str, obj);
    }

    public final Sponsor setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final Sponsor setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Sponsor setSnippet(SponsorSnippet sponsorSnippet) {
        this.snippet = sponsorSnippet;
        return this;
    }
}
