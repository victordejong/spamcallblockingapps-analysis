package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveBroadcastStatus.class */
public final class LiveBroadcastStatus extends GenericJson {
    @q
    private String lifeCycleStatus;
    @q
    private String liveBroadcastPriority;
    @q
    private Boolean madeForKids;
    @q
    private String privacyStatus;
    @q
    private String recordingStatus;
    @q
    private Boolean selfDeclaredMadeForKids;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveBroadcastStatus clone() {
        return (LiveBroadcastStatus) super.clone();
    }

    public final String getLifeCycleStatus() {
        return this.lifeCycleStatus;
    }

    public final String getLiveBroadcastPriority() {
        return this.liveBroadcastPriority;
    }

    public final Boolean getMadeForKids() {
        return this.madeForKids;
    }

    public final String getPrivacyStatus() {
        return this.privacyStatus;
    }

    public final String getRecordingStatus() {
        return this.recordingStatus;
    }

    public final Boolean getSelfDeclaredMadeForKids() {
        return this.selfDeclaredMadeForKids;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveBroadcastStatus set(String str, Object obj) {
        return (LiveBroadcastStatus) super.set(str, obj);
    }

    public final LiveBroadcastStatus setLifeCycleStatus(String str) {
        this.lifeCycleStatus = str;
        return this;
    }

    public final LiveBroadcastStatus setLiveBroadcastPriority(String str) {
        this.liveBroadcastPriority = str;
        return this;
    }

    public final LiveBroadcastStatus setMadeForKids(Boolean bool) {
        this.madeForKids = bool;
        return this;
    }

    public final LiveBroadcastStatus setPrivacyStatus(String str) {
        this.privacyStatus = str;
        return this;
    }

    public final LiveBroadcastStatus setRecordingStatus(String str) {
        this.recordingStatus = str;
        return this;
    }

    public final LiveBroadcastStatus setSelfDeclaredMadeForKids(Boolean bool) {
        this.selfDeclaredMadeForKids = bool;
        return this;
    }
}
