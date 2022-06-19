package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoStatus.class */
public final class VideoStatus extends GenericJson {
    @AbstractC15247q
    private Boolean embeddable;
    @AbstractC15247q
    private String failureReason;
    @AbstractC15247q
    private String license;
    @AbstractC15247q
    private Boolean madeForKids;
    @AbstractC15247q
    private String privacyStatus;
    @AbstractC15247q
    private Boolean publicStatsViewable;
    @AbstractC15247q
    private C15237l publishAt;
    @AbstractC15247q
    private String rejectionReason;
    @AbstractC15247q
    private Boolean selfDeclaredMadeForKids;
    @AbstractC15247q
    private String uploadStatus;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoStatus clone() {
        return (VideoStatus) super.clone();
    }

    public final Boolean getEmbeddable() {
        return this.embeddable;
    }

    public final String getFailureReason() {
        return this.failureReason;
    }

    public final String getLicense() {
        return this.license;
    }

    public final Boolean getMadeForKids() {
        return this.madeForKids;
    }

    public final String getPrivacyStatus() {
        return this.privacyStatus;
    }

    public final Boolean getPublicStatsViewable() {
        return this.publicStatsViewable;
    }

    public final C15237l getPublishAt() {
        return this.publishAt;
    }

    public final String getRejectionReason() {
        return this.rejectionReason;
    }

    public final Boolean getSelfDeclaredMadeForKids() {
        return this.selfDeclaredMadeForKids;
    }

    public final String getUploadStatus() {
        return this.uploadStatus;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoStatus set(String str, Object obj) {
        return (VideoStatus) super.set(str, obj);
    }

    public final VideoStatus setEmbeddable(Boolean bool) {
        this.embeddable = bool;
        return this;
    }

    public final VideoStatus setFailureReason(String str) {
        this.failureReason = str;
        return this;
    }

    public final VideoStatus setLicense(String str) {
        this.license = str;
        return this;
    }

    public final VideoStatus setMadeForKids(Boolean bool) {
        this.madeForKids = bool;
        return this;
    }

    public final VideoStatus setPrivacyStatus(String str) {
        this.privacyStatus = str;
        return this;
    }

    public final VideoStatus setPublicStatsViewable(Boolean bool) {
        this.publicStatsViewable = bool;
        return this;
    }

    public final VideoStatus setPublishAt(C15237l c15237l) {
        this.publishAt = c15237l;
        return this;
    }

    public final VideoStatus setRejectionReason(String str) {
        this.rejectionReason = str;
        return this;
    }

    public final VideoStatus setSelfDeclaredMadeForKids(Boolean bool) {
        this.selfDeclaredMadeForKids = bool;
        return this;
    }

    public final VideoStatus setUploadStatus(String str) {
        this.uploadStatus = str;
        return this;
    }
}
