package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveStreamStatus.class */
public final class LiveStreamStatus extends GenericJson {
    @q
    private LiveStreamHealthStatus healthStatus;
    @q
    private String streamStatus;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveStreamStatus clone() {
        return (LiveStreamStatus) super.clone();
    }

    public final LiveStreamHealthStatus getHealthStatus() {
        return this.healthStatus;
    }

    public final String getStreamStatus() {
        return this.streamStatus;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveStreamStatus set(String str, Object obj) {
        return (LiveStreamStatus) super.set(str, obj);
    }

    public final LiveStreamStatus setHealthStatus(LiveStreamHealthStatus liveStreamHealthStatus) {
        this.healthStatus = liveStreamHealthStatus;
        return this;
    }

    public final LiveStreamStatus setStreamStatus(String str) {
        this.streamStatus = str;
        return this;
    }
}
