package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/HistoryLabelRemoved.class */
public final class HistoryLabelRemoved extends GenericJson {
    @AbstractC15247q
    private List<String> labelIds;
    @AbstractC15247q
    private Message message;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final HistoryLabelRemoved clone() {
        return (HistoryLabelRemoved) super.clone();
    }

    public final List<String> getLabelIds() {
        return this.labelIds;
    }

    public final Message getMessage() {
        return this.message;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
