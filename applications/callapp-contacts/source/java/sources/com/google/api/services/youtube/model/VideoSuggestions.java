package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoSuggestions.class */
public final class VideoSuggestions extends GenericJson {
    @AbstractC15247q
    private List<String> editorSuggestions;
    @AbstractC15247q
    private List<String> processingErrors;
    @AbstractC15247q
    private List<String> processingHints;
    @AbstractC15247q
    private List<String> processingWarnings;
    @AbstractC15247q
    private List<VideoSuggestionsTagSuggestion> tagSuggestions;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoSuggestions clone() {
        return (VideoSuggestions) super.clone();
    }

    public final List<String> getEditorSuggestions() {
        return this.editorSuggestions;
    }

    public final List<String> getProcessingErrors() {
        return this.processingErrors;
    }

    public final List<String> getProcessingHints() {
        return this.processingHints;
    }

    public final List<String> getProcessingWarnings() {
        return this.processingWarnings;
    }

    public final List<VideoSuggestionsTagSuggestion> getTagSuggestions() {
        return this.tagSuggestions;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoSuggestions set(String str, Object obj) {
        return (VideoSuggestions) super.set(str, obj);
    }

    public final VideoSuggestions setEditorSuggestions(List<String> list) {
        this.editorSuggestions = list;
        return this;
    }

    public final VideoSuggestions setProcessingErrors(List<String> list) {
        this.processingErrors = list;
        return this;
    }

    public final VideoSuggestions setProcessingHints(List<String> list) {
        this.processingHints = list;
        return this;
    }

    public final VideoSuggestions setProcessingWarnings(List<String> list) {
        this.processingWarnings = list;
        return this;
    }

    public final VideoSuggestions setTagSuggestions(List<VideoSuggestionsTagSuggestion> list) {
        this.tagSuggestions = list;
        return this;
    }
}
