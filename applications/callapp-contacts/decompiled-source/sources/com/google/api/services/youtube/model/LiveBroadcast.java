package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveBroadcast.class */
public final class LiveBroadcast extends GenericJson {
    @q
    private LiveBroadcastContentDetails contentDetails;
    @q
    private String etag;
    @q
    private String id;
    @q
    private String kind;
    @q
    private LiveBroadcastSnippet snippet;
    @q
    private LiveBroadcastStatistics statistics;
    @q
    private LiveBroadcastStatus status;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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
        return this.id;
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
        this.id = str;
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
