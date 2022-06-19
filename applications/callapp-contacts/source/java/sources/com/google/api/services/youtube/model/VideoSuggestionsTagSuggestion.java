package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoSuggestionsTagSuggestion.class */
public final class VideoSuggestionsTagSuggestion extends GenericJson {
    @AbstractC15247q
    private List<String> categoryRestricts;
    @AbstractC15247q
    private String tag;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoSuggestionsTagSuggestion clone() {
        return (VideoSuggestionsTagSuggestion) super.clone();
    }

    public final List<String> getCategoryRestricts() {
        return this.categoryRestricts;
    }

    public final String getTag() {
        return this.tag;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final VideoSuggestionsTagSuggestion set(String str, Object obj) {
        return (VideoSuggestionsTagSuggestion) super.set(str, obj);
    }

    public final VideoSuggestionsTagSuggestion setCategoryRestricts(List<String> list) {
        this.categoryRestricts = list;
        return this;
    }

    public final VideoSuggestionsTagSuggestion setTag(String str) {
        this.tag = str;
        return this;
    }
}
