package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/MessagePart.class */
public final class MessagePart extends GenericJson {
    @AbstractC15247q
    private MessagePartBody body;
    @AbstractC15247q
    private String filename;
    @AbstractC15247q
    private List<MessagePartHeader> headers;
    @AbstractC15247q
    private String mimeType;
    @AbstractC15247q
    private String partId;
    @AbstractC15247q
    private List<MessagePart> parts;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final MessagePart clone() {
        return (MessagePart) super.clone();
    }

    public final MessagePartBody getBody() {
        return this.body;
    }

    public final String getFilename() {
        return this.filename;
    }

    public final List<MessagePartHeader> getHeaders() {
        return this.headers;
    }

    public final String getMimeType() {
        return this.mimeType;
    }

    public final String getPartId() {
        return this.partId;
    }

    public final List<MessagePart> getParts() {
        return this.parts;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final MessagePart set(String str, Object obj) {
        return (MessagePart) super.set(str, obj);
    }

    public final MessagePart setBody(MessagePartBody messagePartBody) {
        this.body = messagePartBody;
        return this;
    }

    public final MessagePart setFilename(String str) {
        this.filename = str;
        return this;
    }

    public final MessagePart setHeaders(List<MessagePartHeader> list) {
        this.headers = list;
        return this;
    }

    public final MessagePart setMimeType(String str) {
        this.mimeType = str;
        return this;
    }

    public final MessagePart setPartId(String str) {
        this.partId = str;
        return this;
    }

    public final MessagePart setParts(List<MessagePart> list) {
        this.parts = list;
        return this;
    }
}
