package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoSuggestionsTagSuggestion.class */
public final class VideoSuggestionsTagSuggestion extends GenericJson {
    @q
    private List<String> categoryRestricts;
    @q
    private String tag;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoSuggestionsTagSuggestion clone() {
        return (VideoSuggestionsTagSuggestion) super.clone();
    }

    public final List<String> getCategoryRestricts() {
        return this.categoryRestricts;
    }

    public final String getTag() {
        return this.tag;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
