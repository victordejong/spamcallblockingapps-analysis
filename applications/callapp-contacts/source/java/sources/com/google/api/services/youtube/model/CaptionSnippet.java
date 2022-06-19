package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/CaptionSnippet.class */
public final class CaptionSnippet extends GenericJson {
    @AbstractC15247q
    private String audioTrackType;
    @AbstractC15247q
    private String failureReason;
    @AbstractC15247q
    private Boolean isAutoSynced;
    @AbstractC15247q
    private Boolean isCC;
    @AbstractC15247q
    private Boolean isDraft;
    @AbstractC15247q
    private Boolean isEasyReader;
    @AbstractC15247q
    private Boolean isLarge;
    @AbstractC15247q
    private String language;
    @AbstractC15247q
    private C15237l lastUpdated;
    @AbstractC15247q
    private String name;
    @AbstractC15247q
    private String status;
    @AbstractC15247q
    private String trackKind;
    @AbstractC15247q
    private String videoId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final CaptionSnippet clone() {
        return (CaptionSnippet) super.clone();
    }

    public final String getAudioTrackType() {
        return this.audioTrackType;
    }

    public final String getFailureReason() {
        return this.failureReason;
    }

    public final Boolean getIsAutoSynced() {
        return this.isAutoSynced;
    }

    public final Boolean getIsCC() {
        return this.isCC;
    }

    public final Boolean getIsDraft() {
        return this.isDraft;
    }

    public final Boolean getIsEasyReader() {
        return this.isEasyReader;
    }

    public final Boolean getIsLarge() {
        return this.isLarge;
    }

    public final String getLanguage() {
        return this.language;
    }

    public final C15237l getLastUpdated() {
        return this.lastUpdated;
    }

    public final String getName() {
        return this.name;
    }

    public final String getStatus() {
        return this.status;
    }

    public final String getTrackKind() {
        return this.trackKind;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final CaptionSnippet set(String str, Object obj) {
        return (CaptionSnippet) super.set(str, obj);
    }

    public final CaptionSnippet setAudioTrackType(String str) {
        this.audioTrackType = str;
        return this;
    }

    public final CaptionSnippet setFailureReason(String str) {
        this.failureReason = str;
        return this;
    }

    public final CaptionSnippet setIsAutoSynced(Boolean bool) {
        this.isAutoSynced = bool;
        return this;
    }

    public final CaptionSnippet setIsCC(Boolean bool) {
        this.isCC = bool;
        return this;
    }

    public final CaptionSnippet setIsDraft(Boolean bool) {
        this.isDraft = bool;
        return this;
    }

    public final CaptionSnippet setIsEasyReader(Boolean bool) {
        this.isEasyReader = bool;
        return this;
    }

    public final CaptionSnippet setIsLarge(Boolean bool) {
        this.isLarge = bool;
        return this;
    }

    public final CaptionSnippet setLanguage(String str) {
        this.language = str;
        return this;
    }

    public final CaptionSnippet setLastUpdated(C15237l c15237l) {
        this.lastUpdated = c15237l;
        return this;
    }

    public final CaptionSnippet setName(String str) {
        this.name = str;
        return this;
    }

    public final CaptionSnippet setStatus(String str) {
        this.status = str;
        return this;
    }

    public final CaptionSnippet setTrackKind(String str) {
        this.trackKind = str;
        return this;
    }

    public final CaptionSnippet setVideoId(String str) {
        this.videoId = str;
        return this;
    }
}
