package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15223d;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/MessagePartBody.class */
public final class MessagePartBody extends GenericJson {
    @AbstractC15247q
    private String attachmentId;
    @AbstractC15247q
    private String data;
    @AbstractC15247q
    private Integer size;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final MessagePartBody clone() {
        return (MessagePartBody) super.clone();
    }

    public final byte[] decodeData() {
        return C15223d.m9251a(this.data);
    }

    public final MessagePartBody encodeData(byte[] bArr) {
        this.data = C15223d.m9250a(bArr);
        return this;
    }

    public final String getAttachmentId() {
        return this.attachmentId;
    }

    public final String getData() {
        return this.data;
    }

    public final Integer getSize() {
        return this.size;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final MessagePartBody set(String str, Object obj) {
        return (MessagePartBody) super.set(str, obj);
    }

    public final MessagePartBody setAttachmentId(String str) {
        this.attachmentId = str;
        return this;
    }

    public final MessagePartBody setData(String str) {
        this.data = str;
        return this;
    }

    public final MessagePartBody setSize(Integer num) {
        this.size = num;
        return this;
    }
}
