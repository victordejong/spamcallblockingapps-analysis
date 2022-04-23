package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/MessagePartHeader.class */
public final class MessagePartHeader extends GenericJson {
    @q
    private String name;
    @q
    private String value;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final MessagePartHeader clone() {
        return (MessagePartHeader) super.clone();
    }

    public final String getName() {
        return this.name;
    }

    public final String getValue() {
        return this.value;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final MessagePartHeader set(String str, Object obj) {
        return (MessagePartHeader) super.set(str, obj);
    }

    public final MessagePartHeader setName(String str) {
        this.name = str;
        return this;
    }

    public final MessagePartHeader setValue(String str) {
        this.value = str;
        return this;
    }
}
