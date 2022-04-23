package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/HistoryLabelRemoved.class */
public final class HistoryLabelRemoved extends GenericJson {
    @q
    private List<String> labelIds;
    @q
    private Message message;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final HistoryLabelRemoved clone() {
        return (HistoryLabelRemoved) super.clone();
    }

    public final List<String> getLabelIds() {
        return this.labelIds;
    }

    public final Message getMessage() {
        return this.message;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final HistoryLabelRemoved set(String str, Object obj) {
        return (HistoryLabelRemoved) super.set(str, obj);
    }

    public final HistoryLabelRemoved setLabelIds(List<String> list) {
        this.labelIds = list;
        return this;
    }

    public final HistoryLabelRemoved setMessage(Message message) {
        this.message = message;
        return this;
    }
}
