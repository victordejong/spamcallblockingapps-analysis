package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/Draft.class */
public final class Draft extends GenericJson {
    @AbstractC15247q

    /* renamed from: id */
    private String f55488id;
    @AbstractC15247q
    private Message message;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final Draft clone() {
        return (Draft) super.clone();
    }

    public final String getId() {
        return this.f55488id;
    }

    public final Message getMessage() {
        return this.message;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final Draft set(String str, Object obj) {
        return (Draft) super.set(str, obj);
    }

    public final Draft setId(String str) {
        this.f55488id = str;
        return this;
    }

    public final Draft setMessage(Message message) {
        this.message = message;
        return this;
    }
}
