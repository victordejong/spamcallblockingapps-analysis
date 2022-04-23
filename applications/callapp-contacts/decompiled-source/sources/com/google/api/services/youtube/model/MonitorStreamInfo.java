package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/MonitorStreamInfo.class */
public final class MonitorStreamInfo extends GenericJson {
    @q
    private Long broadcastStreamDelayMs;
    @q
    private String embedHtml;
    @q
    private Boolean enableMonitorStream;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final MonitorStreamInfo clone() {
        return (MonitorStreamInfo) super.clone();
    }

    public final Long getBroadcastStreamDelayMs() {
        return this.broadcastStreamDelayMs;
    }

    public final String getEmbedHtml() {
        return this.embedHtml;
    }

    public final Boolean getEnableMonitorStream() {
        return this.enableMonitorStream;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final MonitorStreamInfo set(String str, Object obj) {
        return (MonitorStreamInfo) super.set(str, obj);
    }

    public final MonitorStreamInfo setBroadcastStreamDelayMs(Long l) {
        this.broadcastStreamDelayMs = l;
        return this;
    }

    public final MonitorStreamInfo setEmbedHtml(String str) {
        this.embedHtml = str;
        return this;
    }

    public final MonitorStreamInfo setEnableMonitorStream(Boolean bool) {
        this.enableMonitorStream = bool;
        return this;
    }
}
