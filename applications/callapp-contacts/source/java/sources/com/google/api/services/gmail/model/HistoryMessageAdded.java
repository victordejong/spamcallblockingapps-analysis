package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/HistoryMessageAdded.class */
public final class HistoryMessageAdded extends GenericJson {
    @AbstractC15247q
    private Message message;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final HistoryMessageAdded clone() {
        return (HistoryMessageAdded) super.clone();
    }

    public final Message getMessage() {
        return this.message;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final HistoryMessageAdded set(String str, Object obj) {
        return (HistoryMessageAdded) super.set(str, obj);
    }

    public final HistoryMessageAdded setMessage(Message message) {
        this.message = message;
        return this;
    }
}
