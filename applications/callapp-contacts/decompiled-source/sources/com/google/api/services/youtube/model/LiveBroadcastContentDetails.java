package com.google.api.services.youtube.model;

import com.google.api.client.a.d;
import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveBroadcastContentDetails.class */
public final class LiveBroadcastContentDetails extends GenericJson {
    @q
    private String boundStreamId;
    @q
    private l boundStreamLastUpdateTimeMs;
    @q
    private String closedCaptionsType;
    @q
    private Boolean enableAutoStart;
    @q
    private Boolean enableClosedCaptions;
    @q
    private Boolean enableContentEncryption;
    @q
    private Boolean enableDvr;
    @q
    private Boolean enableEmbed;
    @q
    private Boolean enableLowLatency;
    @q
    private String latencyPreference;
    @q
    private String mesh;
    @q
    private MonitorStreamInfo monitorStream;
    @q
    private String projection;
    @q
    private Boolean recordFromStart;
    @q
    private Boolean startWithSlate;
    @q
    private String stereoLayout;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveBroadcastContentDetails clone() {
        return (LiveBroadcastContentDetails) super.clone();
    }

    public final byte[] decodeMesh() {
        return d.a(this.mesh);
    }

    public final LiveBroadcastContentDetails encodeMesh(byte[] bArr) {
        this.mesh = d.a(bArr);
        return this;
    }

    public final String getBoundStreamId() {
        return this.boundStreamId;
    }

    public final l getBoundStreamLastUpdateTimeMs() {
        return this.boundStreamLastUpdateTimeMs;
    }

    public final String getClosedCaptionsType() {
        return this.closedCaptionsType;
    }

    public final Boolean getEnableAutoStart() {
        return this.enableAutoStart;
    }

    public final Boolean getEnableClosedCaptions() {
        return this.enableClosedCaptions;
    }

    public final Boolean getEnableContentEncryption() {
        return this.enableContentEncryption;
    }

    public final Boolean getEnableDvr() {
        return this.enableDvr;
    }

    public final Boolean getEnableEmbed() {
        return this.enableEmbed;
    }

    public final Boolean getEnableLowLatency() {
        return this.enableLowLatency;
    }

    public final String getLatencyPreference() {
        return this.latencyPreference;
    }

    public final String getMesh() {
        return this.mesh;
    }

    public final MonitorStreamInfo getMonitorStream() {
        return this.monitorStream;
    }

    public final String getProjection() {
        return this.projection;
    }

    public final Boolean getRecordFromStart() {
        return this.recordFromStart;
    }

    public final Boolean getStartWithSlate() {
        return this.startWithSlate;
    }

    public final String getStereoLayout() {
        return this.stereoLayout;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveBroadcastContentDetails set(String str, Object obj) {
        return (LiveBroadcastContentDetails) super.set(str, obj);
    }

    public final LiveBroadcastContentDetails setBoundStreamId(String str) {
        this.boundStreamId = str;
        return this;
    }

    public final LiveBroadcastContentDetails setBoundStreamLastUpdateTimeMs(l lVar) {
        this.boundStreamLastUpdateTimeMs = lVar;
        return this;
    }

    public final LiveBroadcastContentDetails setClosedCaptionsType(String str) {
        this.closedCaptionsType = str;
        return this;
    }

    public final LiveBroadcastContentDetails setEnableAutoStart(Boolean bool) {
        this.enableAutoStart = bool;
        return this;
    }

    public final LiveBroadcastContentDetails setEnableClosedCaptions(Boolean bool) {
        this.enableClosedCaptions = bool;
        return this;
    }

    public final LiveBroadcastContentDetails setEnableContentEncryption(Boolean bool) {
        this.enableContentEncryption = bool;
        return this;
    }

    public final LiveBroadcastContentDetails setEnableDvr(Boolean bool) {
        this.enableDvr = bool;
        return this;
    }

    public final LiveBroadcastContentDetails setEnableEmbed(Boolean bool) {
        this.enableEmbed = bool;
        return this;
    }

    public final LiveBroadcastContentDetails setEnableLowLatency(Boolean bool) {
        this.enableLowLatency = bool;
        return this;
    }

    public final LiveBroadcastContentDetails setLatencyPreference(String str) {
        this.latencyPreference = str;
        return this;
    }

    public final LiveBroadcastContentDetails setMesh(String str) {
        this.mesh = str;
        return this;
    }

    public final LiveBroadcastContentDetails setMonitorStream(MonitorStreamInfo monitorStreamInfo) {
        this.monitorStream = monitorStreamInfo;
        return this;
    }

    public final LiveBroadcastContentDetails setProjection(String str) {
        this.projection = str;
        return this;
    }

    public final LiveBroadcastContentDetails setRecordFromStart(Boolean bool) {
        this.recordFromStart = bool;
        return this;
    }

    public final LiveBroadcastContentDetails setStartWithSlate(Boolean bool) {
        this.startWithSlate = bool;
        return this;
    }

    public final LiveBroadcastContentDetails setStereoLayout(String str) {
        this.stereoLayout = str;
        return this;
    }
}
