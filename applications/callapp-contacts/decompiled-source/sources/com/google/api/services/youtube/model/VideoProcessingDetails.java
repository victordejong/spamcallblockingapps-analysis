package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoProcessingDetails.class */
public final class VideoProcessingDetails extends GenericJson {
    @q
    private String editorSuggestionsAvailability;
    @q
    private String fileDetailsAvailability;
    @q
    private String processingFailureReason;
    @q
    private String processingIssuesAvailability;
    @q
    private VideoProcessingDetailsProcessingProgress processingProgress;
    @q
    private String processingStatus;
    @q
    private String tagSuggestionsAvailability;
    @q
    private String thumbnailsAvailability;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoProcessingDetails clone() {
        return (VideoProcessingDetails) super.clone();
    }

    public final String getEditorSuggestionsAvailability() {
        return this.editorSuggestionsAvailability;
    }

    public final String getFileDetailsAvailability() {
        return this.fileDetailsAvailability;
    }

    public final String getProcessingFailureReason() {
        return this.processingFailureReason;
    }

    public final String getProcessingIssuesAvailability() {
        return this.processingIssuesAvailability;
    }

    public final VideoProcessingDetailsProcessingProgress getProcessingProgress() {
        return this.processingProgress;
    }

    public final String getProcessingStatus() {
        return this.processingStatus;
    }

    public final String getTagSuggestionsAvailability() {
        return this.tagSuggestionsAvailability;
    }

    public final String getThumbnailsAvailability() {
        return this.thumbnailsAvailability;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoProcessingDetails set(String str, Object obj) {
        return (VideoProcessingDetails) super.set(str, obj);
    }

    public final VideoProcessingDetails setEditorSuggestionsAvailability(String str) {
        this.editorSuggestionsAvailability = str;
        return this;
    }

    public final VideoProcessingDetails setFileDetailsAvailability(String str) {
        this.fileDetailsAvailability = str;
        return this;
    }

    public final VideoProcessingDetails setProcessingFailureReason(String str) {
        this.processingFailureReason = str;
        return this;
    }

    public final VideoProcessingDetails setProcessingIssuesAvailability(String str) {
        this.processingIssuesAvailability = str;
        return this;
    }

    public final VideoProcessingDetails setProcessingProgress(VideoProcessingDetailsProcessingProgress videoProcessingDetailsProcessingProgress) {
        this.processingProgress = videoProcessingDetailsProcessingProgress;
        return this;
    }

    public final VideoProcessingDetails setProcessingStatus(String str) {
        this.processingStatus = str;
        return this;
    }

    public final VideoProcessingDetails setTagSuggestionsAvailability(String str) {
        this.tagSuggestionsAvailability = str;
        return this;
    }

    public final VideoProcessingDetails setThumbnailsAvailability(String str) {
        this.thumbnailsAvailability = str;
        return this;
    }
}
