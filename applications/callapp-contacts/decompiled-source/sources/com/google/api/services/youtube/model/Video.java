package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Video.class */
public final class Video extends GenericJson {
    @q
    private VideoAgeGating ageGating;
    @q
    private VideoContentDetails contentDetails;
    @q
    private String etag;
    @q
    private VideoFileDetails fileDetails;
    @q
    private String id;
    @q
    private String kind;
    @q
    private VideoLiveStreamingDetails liveStreamingDetails;
    @q
    private Map<String, VideoLocalization> localizations;
    @q
    private VideoMonetizationDetails monetizationDetails;
    @q
    private VideoPlayer player;
    @q
    private VideoProcessingDetails processingDetails;
    @q
    private VideoProjectDetails projectDetails;
    @q
    private VideoRecordingDetails recordingDetails;
    @q
    private VideoSnippet snippet;
    @q
    private VideoStatistics statistics;
    @q
    private VideoStatus status;
    @q
    private VideoSuggestions suggestions;
    @q
    private VideoTopicDetails topicDetails;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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
        return this.id;
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
        this.id = str;
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
