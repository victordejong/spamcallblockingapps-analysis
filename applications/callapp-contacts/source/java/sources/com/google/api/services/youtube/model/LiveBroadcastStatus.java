package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveBroadcastStatus.class */
public final class LiveBroadcastStatus extends GenericJson {
    @AbstractC15247q
    private String lifeCycleStatus;
    @AbstractC15247q
    private String liveBroadcastPriority;
    @AbstractC15247q
    private Boolean madeForKids;
    @AbstractC15247q
    private String privacyStatus;
    @AbstractC15247q
    private String recordingStatus;
    @AbstractC15247q
    private Boolean selfDeclaredMadeForKids;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
