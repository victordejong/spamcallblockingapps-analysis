package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoTopicDetails.class */
public final class VideoTopicDetails extends GenericJson {
    @q
    private List<String> relevantTopicIds;
    @q
    private List<String> topicCategories;
    @q
    private List<String> topicIds;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoTopicDetails clone() {
        return (VideoTopicDetails) super.clone();
    }

    public final List<String> getRelevantTopicIds() {
        return this.relevantTopicIds;
    }

    public final List<String> getTopicCategories() {
        return this.topicCategories;
    }

    public final List<String> getTopicIds() {
        return this.topicIds;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoTopicDetails set(String str, Object obj) {
        return (VideoTopicDetails) super.set(str, obj);
    }

    public final VideoTopicDetails setRelevantTopicIds(List<String> list) {
        this.relevantTopicIds = list;
        return this;
    }

    public final VideoTopicDetails setTopicCategories(List<String> list) {
        this.topicCategories = list;
        return this;
    }

    public final VideoTopicDetails setTopicIds(List<String> list) {
        this.topicIds = list;
        return this;
    }
}
