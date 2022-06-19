package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/HistoryMessageDeleted.class */
public final class HistoryMessageDeleted extends GenericJson {
    @AbstractC15247q
    private Message message;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final HistoryMessageDeleted clone() {
        return (HistoryMessageDeleted) super.clone();
    }

    public final Message getMessage() {
        return this.message;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final HistoryMessageDeleted set(String str, Object obj) {
        return (HistoryMessageDeleted) super.set(str, obj);
    }

    public final HistoryMessageDeleted setMessage(Message message) {
        this.message = message;
        return this;
    }
}
