package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/WatchRequest.class */
public final class WatchRequest extends GenericJson {
    @q
    private String labelFilterAction;
    @q
    private List<String> labelIds;
    @q
    private String topicName;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final WatchRequest clone() {
        return (WatchRequest) super.clone();
    }

    public final String getLabelFilterAction() {
        return this.labelFilterAction;
    }

    public final List<String> getLabelIds() {
        return this.labelIds;
    }

    public final String getTopicName() {
        return this.topicName;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final WatchRequest set(String str, Object obj) {
        return (WatchRequest) super.set(str, obj);
    }

    public final WatchRequest setLabelFilterAction(String str) {
        this.labelFilterAction = str;
        return this;
    }

    public final WatchRequest setLabelIds(List<String> list) {
        this.labelIds = list;
        return this;
    }

    public final WatchRequest setTopicName(String str) {
        this.topicName = str;
        return this;
    }
}
