package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Video.class */
public final class Video extends GenericJson {
    @AbstractC15247q
    private VideoAgeGating ageGating;
    @AbstractC15247q
    private VideoContentDetails contentDetails;
    @AbstractC15247q
    private String etag;
    @AbstractC15247q
    private VideoFileDetails fileDetails;
    @AbstractC15247q

    /* renamed from: id */
    private String f55594id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private VideoLiveStreamingDetails liveStreamingDetails;
    @AbstractC15247q
    private Map<String, VideoLocalization> localizations;
    @AbstractC15247q
    private VideoMonetizationDetails monetizationDetails;
    @AbstractC15247q
    private VideoPlayer player;
    @AbstractC15247q
    private VideoProcessingDetails processingDetails;
    @AbstractC15247q
    private VideoProjectDetails projectDetails;
    @AbstractC15247q
    private VideoRecordingDetails recordingDetails;
    @AbstractC15247q
    private VideoSnippet snippet;
    @AbstractC15247q
    private VideoStatistics statistics;
    @AbstractC15247q
    private VideoStatus status;
    @AbstractC15247q
    private VideoSuggestions suggestions;
    @AbstractC15247q
    private VideoTopicDetails topicDetails;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final Video clone() {
        return (Video) super.clone();
    }

    public final VideoAgeGating getAgeGating() {
        return this.ageGating;
    }

    public final VideoContentDetails getContentDetails() {
        return this.contentDetails;
    }

    public final String getEtag() {
        return this.etag;
    }

    public final VideoFileDetails getFileDetails() {
        return this.fileDetails;
    }

    public final String getId() {
        return this.f55594id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final VideoLiveStreamingDetails getLiveStreamingDetails() {
        return this.liveStreamingDetails;
    }

    public final Map<String, VideoLocalization> getLocalizations() {
        return this.localizations;
    }

    public final VideoMonetizationDetails getMonetizationDetails() {
        return this.monetizationDetails;
    }

    public final VideoPlayer getPlayer() {
        return this.player;
    }

    public final VideoProcessingDetails getProcessingDetails() {
        return this.processingDetails;
    }

    public final VideoProjectDetails getProjectDetails() {
        return this.projectDetails;
    }

    public final VideoRecordingDetails getRecordingDetails() {
        return this.recordingDetails;
    }

    public final VideoSnippet getSnippet() {
        return this.snippet;
    }

    public final VideoStatistics getStatistics() {
        return this.statistics;
    }

    public final VideoStatus getStatus() {
        return this.status;
    }

    public final VideoSuggestions getSuggestions() {
        return this.suggestions;
    }

    public final VideoTopicDetails getTopicDetails() {
        return this.topicDetails;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final Video set(String str, Object obj) {
        return (Video) super.set(str, obj);
    }

    public final Video setAgeGating(VideoAgeGating videoAgeGating) {
        this.ageGating = videoAgeGating;
        return this;
    }

    public final Video setContentDetails(VideoContentDetails videoContentDetails) {
        this.contentDetails = videoContentDetails;
        return this;
    }

    public final Video setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final Video setFileDetails(VideoFileDetails videoFileDetails) {
        this.fileDetails = videoFileDetails;
        return this;
    }

    public final Video setId(String str) {
        this.f55594id = str;
        return this;
    }

    public final Video setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Video setLiveStreamingDetails(VideoLiveStreamingDetails videoLiveStreamingDetails) {
        this.liveStreamingDetails = videoLiveStreamingDetails;
        return this;
    }

    public final Video setLocalizations(Map<String, VideoLocalization> map) {
        this.localizations = map;
        return this;
    }

    public final Video setMonetizationDetails(VideoMonetizationDetails videoMonetizationDetails) {
        this.monetizationDetails = videoMonetizationDetails;
        return this;
    }

    public final Video setPlayer(VideoPlayer videoPlayer) {
        this.player = videoPlayer;
        return this;
    }

    public final Video setProcessingDetails(VideoProcessingDetails videoProcessingDetails) {
        this.processingDetails = videoProcessingDetails;
        return this;
    }

    public final Video setProjectDetails(VideoProjectDetails videoProjectDetails) {
        this.projectDetails = videoProjectDetails;
        return this;
    }

    public final Video setRecordingDetails(VideoRecordingDetails videoRecordingDetails) {
        this.recordingDetails = videoRecordingDetails;
        return this;
    }

    public final Video setSnippet(VideoSnippet videoSnippet) {
        this.snippet = videoSnippet;
        return this;
    }

    public final Video setStatistics(VideoStatistics videoStatistics) {
        this.statistics = videoStatistics;
        return this;
    }

    public final Video setStatus(VideoStatus videoStatus) {
        this.status = videoStatus;
        return this;
    }

    public final Video setSuggestions(VideoSuggestions videoSuggestions) {
        this.suggestions = videoSuggestions;
        return this;
    }

    public final Video setTopicDetails(VideoTopicDetails videoTopicDetails) {
        this.topicDetails = videoTopicDetails;
        return this;
    }
}
