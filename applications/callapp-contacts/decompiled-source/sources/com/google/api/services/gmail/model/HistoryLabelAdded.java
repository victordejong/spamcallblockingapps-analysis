package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/HistoryLabelAdded.class */
public final class HistoryLabelAdded extends GenericJson {
    @q
    private List<String> labelIds;
    @q
    private Message message;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final HistoryLabelAdded clone() {
        return (HistoryLabelAdded) super.clone();
    }

    public final List<String> getLabelIds() {
        return this.labelIds;
    }

    public final Message getMessage() {
        return this.message;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final HistoryLabelAdded set(String str, Object obj) {
        return (HistoryLabelAdded) super.set(str, obj);
    }

    public final HistoryLabelAdded setLabelIds(List<String> list) {
        this.labelIds = list;
        return this;
    }

    public final HistoryLabelAdded setMessage(Message message) {
        this.message = message;
        return this;
    }
}
