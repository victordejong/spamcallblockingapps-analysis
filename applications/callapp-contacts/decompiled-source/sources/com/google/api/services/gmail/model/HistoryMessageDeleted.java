package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/HistoryMessageDeleted.class */
public final class HistoryMessageDeleted extends GenericJson {
    @q
    private Message message;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final HistoryMessageDeleted clone() {
        return (HistoryMessageDeleted) super.clone();
    }

    public final Message getMessage() {
        return this.message;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final HistoryMessageDeleted set(String str, Object obj) {
        return (HistoryMessageDeleted) super.set(str, obj);
    }

    public final HistoryMessageDeleted setMessage(Message message) {
        this.message = message;
        return this;
    }
}
