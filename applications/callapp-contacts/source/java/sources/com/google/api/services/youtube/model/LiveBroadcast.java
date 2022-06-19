package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveBroadcast.class */
public final class LiveBroadcast extends GenericJson {
    @AbstractC15247q
    private LiveBroadcastContentDetails contentDetails;
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55580id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private LiveBroadcastSnippet snippet;
    @AbstractC15247q
    private LiveBroadcastStatistics statistics;
    @AbstractC15247q
    private LiveBroadcastStatus status;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveBroadcast clone() {
        return (LiveBroadcast) super.clone();
    }

    public final LiveBroadcastContentDetails getContentDetails() {
        return this.contentDetails;
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55580id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final LiveBroadcastSnippet getSnippet() {
        return this.snippet;
    }

    public final LiveBroadcastStatistics getStatistics() {
        return this.statistics;
    }

    public final LiveBroadcastStatus getStatus() {
        return this.status;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveBroadcast set(String str, Object obj) {
        return (LiveBroadcast) super.set(str, obj);
    }

    public final LiveBroadcast setContentDetails(LiveBroadcastContentDetails liveBroadcastContentDetails) {
        this.contentDetails = liveBroadcastContentDetails;
        return this;
    }

    public final LiveBroadcast setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final LiveBroadcast setId(String str) {
        this.f55580id = str;
        return this;
    }

    public final LiveBroadcast setKind(String str) {
        this.kind = str;
        return this;
    }

    public final LiveBroadcast setSnippet(LiveBroadcastSnippet liveBroadcastSnippet) {
        this.snippet = liveBroadcastSnippet;
        return this;
    }

    public final LiveBroadcast setStatistics(LiveBroadcastStatistics liveBroadcastStatistics) {
        this.statistics = liveBroadcastStatistics;
        return this;
    }

    public final LiveBroadcast setStatus(LiveBroadcastStatus liveBroadcastStatus) {
        this.status = liveBroadcastStatus;
        return this;
    }
}
