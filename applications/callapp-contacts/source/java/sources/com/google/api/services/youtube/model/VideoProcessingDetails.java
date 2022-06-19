package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoProcessingDetails.class */
public final class VideoProcessingDetails extends GenericJson {
    @AbstractC15247q
    private String editorSuggestionsAvailability;
    @AbstractC15247q
    private String fileDetailsAvailability;
    @AbstractC15247q
    private String processingFailureReason;
    @AbstractC15247q
    private String processingIssuesAvailability;
    @AbstractC15247q
    private VideoProcessingDetailsProcessingProgress processingProgress;
    @AbstractC15247q
    private String processingStatus;
    @AbstractC15247q
    private String tagSuggestionsAvailability;
    @AbstractC15247q
    private String thumbnailsAvailability;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
