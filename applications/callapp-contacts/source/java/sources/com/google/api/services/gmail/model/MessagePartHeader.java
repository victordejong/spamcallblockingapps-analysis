package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/MessagePartHeader.class */
public final class MessagePartHeader extends GenericJson {
    @AbstractC15247q
    private String name;
    @AbstractC15247q
    private String value;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final MessagePartHeader clone() {
        return (MessagePartHeader) super.clone();
    }

    public final String getName() {
        return this.name;
    }

    public final String getValue() {
        return this.value;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
