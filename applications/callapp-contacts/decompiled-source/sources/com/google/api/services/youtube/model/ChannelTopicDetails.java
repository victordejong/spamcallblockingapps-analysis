package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelTopicDetails.class */
public final class ChannelTopicDetails extends GenericJson {
    @q
    private List<String> topicCategories;
    @q
    private List<String> topicIds;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ChannelTopicDetails clone() {
        return (ChannelTopicDetails) super.clone();
    }

    public final List<String> getTopicCategories() {
        return this.topicCategories;
    }

    public final List<String> getTopicIds() {
        return this.topicIds;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ChannelTopicDetails set(String str, Object obj) {
        return (ChannelTopicDetails) super.set(str, obj);
    }

    public final ChannelTopicDetails setTopicCategories(List<String> list) {
        this.topicCategories = list;
        return this;
    }

    public final ChannelTopicDetails setTopicIds(List<String> list) {
        this.topicIds = list;
        return this;
    }
}
