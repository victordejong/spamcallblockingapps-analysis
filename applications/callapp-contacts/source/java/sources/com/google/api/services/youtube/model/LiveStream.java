package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveStream.class */
public final class LiveStream extends GenericJson {
    @AbstractC15247q
    private CdnSettings cdn;
    @AbstractC15247q
    private LiveStreamContentDetails contentDetails;
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55586id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private LiveStreamSnippet snippet;
    @AbstractC15247q
    private LiveStreamStatus status;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveStream clone() {
        return (LiveStream) super.clone();
    }

    public final CdnSettings getCdn() {
        return this.cdn;
    }

    public final LiveStreamContentDetails getContentDetails() {
        return this.contentDetails;
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55586id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final LiveStreamSnippet getSnippet() {
        return this.snippet;
    }

    public final LiveStreamStatus getStatus() {
        return this.status;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveStream set(String str, Object obj) {
        return (LiveStream) super.set(str, obj);
    }

    public final LiveStream setCdn(CdnSettings cdnSettings) {
        this.cdn = cdnSettings;
        return this;
    }

    public final LiveStream setContentDetails(LiveStreamContentDetails liveStreamContentDetails) {
        this.contentDetails = liveStreamContentDetails;
        return this;
    }

    public final LiveStream setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final LiveStream setId(String str) {
        this.f55586id = str;
        return this;
    }

    public final LiveStream setKind(String str) {
        this.kind = str;
        return this;
    }

    public final LiveStream setSnippet(LiveStreamSnippet liveStreamSnippet) {
        this.snippet = liveStreamSnippet;
        return this;
    }

    public final LiveStream setStatus(LiveStreamStatus liveStreamStatus) {
        this.status = liveStreamStatus;
        return this;
    }
}
