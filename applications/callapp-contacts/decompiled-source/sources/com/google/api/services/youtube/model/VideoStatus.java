package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoStatus.class */
public final class VideoStatus extends GenericJson {
    @q
    private Boolean embeddable;
    @q
    private String failureReason;
    @q
    private String license;
    @q
    private Boolean madeForKids;
    @q
    private String privacyStatus;
    @q
    private Boolean publicStatsViewable;
    @q
    private l publishAt;
    @q
    private String rejectionReason;
    @q
    private Boolean selfDeclaredMadeForKids;
    @q
    private String uploadStatus;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    public final l getPublishAt() {
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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

    public final VideoStatus setPublishAt(l lVar) {
        this.publishAt = lVar;
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
