package com.google.api.services.gmail.model;

import com.google.api.client.a.d;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/Message.class */
public final class Message extends GenericJson {
    @q
    @JsonString
    private BigInteger historyId;
    @q
    private String id;
    @q
    @JsonString
    private Long internalDate;
    @q
    private List<String> labelIds;
    @q
    private MessagePart payload;
    @q
    private String raw;
    @q
    private Integer sizeEstimate;
    @q
    private String snippet;
    @q
    private String threadId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final Message clone() {
        return (Message) super.clone();
    }

    public final byte[] decodeRaw() {
        return d.a(this.raw);
    }

    public final Message encodeRaw(byte[] bArr) {
        this.raw = d.a(bArr);
        return this;
    }

    public final BigInteger getHistoryId() {
        return this.historyId;
    }

    public final String getId() {
        return this.id;
    }

    public final Long getInternalDate() {
        return this.internalDate;
    }

    public final List<String> getLabelIds() {
        return this.labelIds;
    }

    public final MessagePart getPayload() {
        return this.payload;
    }

    public final String getRaw() {
        return this.raw;
    }

    public final Integer getSizeEstimate() {
        return this.sizeEstimate;
    }

    public final String getSnippet() {
        return this.snippet;
    }

    public final String getThreadId() {
        return this.threadId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final Message set(String str, Object obj) {
        return (Message) super.set(str, obj);
    }

    public final Message setHistoryId(BigInteger bigInteger) {
        this.historyId = bigInteger;
        return this;
    }

    public final Message setId(String str) {
        this.id = str;
        return this;
    }

    public final Message setInternalDate(Long l) {
        this.internalDate = l;
        return this;
    }

    public final Message setLabelIds(List<String> list) {
        this.labelIds = list;
        return this;
    }

    public final Message setPayload(MessagePart messagePart) {
        this.payload = messagePart;
        return this;
    }

    public final Message setRaw(String str) {
        this.raw = str;
        return this;
    }

    public final Message setSizeEstimate(Integer num) {
        this.sizeEstimate = num;
        return this;
    }

    public final Message setSnippet(String str) {
        this.snippet = str;
        return this;
    }

    public final Message setThreadId(String str) {
        this.threadId = str;
        return this;
    }
}
