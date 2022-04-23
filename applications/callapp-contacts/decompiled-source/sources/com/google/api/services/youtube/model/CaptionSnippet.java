package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/CaptionSnippet.class */
public final class CaptionSnippet extends GenericJson {
    @q
    private String audioTrackType;
    @q
    private String failureReason;
    @q
    private Boolean isAutoSynced;
    @q
    private Boolean isCC;
    @q
    private Boolean isDraft;
    @q
    private Boolean isEasyReader;
    @q
    private Boolean isLarge;
    @q
    private String language;
    @q
    private l lastUpdated;
    @q
    private String name;
    @q
    private String status;
    @q
    private String trackKind;
    @q
    private String videoId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    public final l getLastUpdated() {
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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

    public final CaptionSnippet setLastUpdated(l lVar) {
        this.lastUpdated = lVar;
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
