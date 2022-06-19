package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelBannerResource.class */
public final class ChannelBannerResource extends GenericJson {
    @AbstractC15247q
    private String etag;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private String url;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ChannelBannerResource clone() {
        return (ChannelBannerResource) super.clone();
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getKind() {
        return this.kind;
    }

    public final String getUrl() {
        return this.url;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ChannelBannerResource set(String str, Object obj) {
        return (ChannelBannerResource) super.set(str, obj);
    }

    public final ChannelBannerResource setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final ChannelBannerResource setKind(String str) {
        this.kind = str;
        return this;
    }

    public final ChannelBannerResource setUrl(String str) {
        this.url = str;
        return this;
    }
}
