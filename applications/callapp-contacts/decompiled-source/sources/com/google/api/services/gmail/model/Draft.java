package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/Draft.class */
public final class Draft extends GenericJson {
    @q
    private String id;
    @q
    private Message message;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Draft clone() {
        return (Draft) super.clone();
    }

    public final String getId() {
        return this.id;
    }

    public final Message getMessage() {
        return this.message;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Draft set(String str, Object obj) {
        return (Draft) super.set(str, obj);
    }

    public final Draft setId(String str) {
        this.id = str;
        return this;
    }

    public final Draft setMessage(Message message) {
        this.message = message;
        return this;
    }
}
