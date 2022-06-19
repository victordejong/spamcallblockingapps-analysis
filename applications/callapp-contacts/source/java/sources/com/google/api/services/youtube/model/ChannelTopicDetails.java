package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelTopicDetails.class */
public final class ChannelTopicDetails extends GenericJson {
    @AbstractC15247q
    private List<String> topicCategories;
    @AbstractC15247q
    private List<String> topicIds;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ChannelTopicDetails clone() {
        return (ChannelTopicDetails) super.clone();
    }

    public final List<String> getTopicCategories() {
        return this.topicCategories;
    }

    public final List<String> getTopicIds() {
        return this.topicIds;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
