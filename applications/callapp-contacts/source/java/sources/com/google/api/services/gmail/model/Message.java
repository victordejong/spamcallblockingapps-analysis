package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15223d;
import java.math.BigInteger;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/Message.class */
public final class Message extends GenericJson {
    @AbstractC15247q
    @JsonString
    private BigInteger historyId;
    @AbstractC15247q

    /* renamed from: id */
    private String f55493id;
    @AbstractC15247q
    @JsonString
    private Long internalDate;
    @AbstractC15247q
    private List<String> labelIds;
    @AbstractC15247q
    private MessagePart payload;
    @AbstractC15247q
    private String raw;
    @AbstractC15247q
    private Integer sizeEstimate;
    @AbstractC15247q
    private String snippet;
    @AbstractC15247q
    private String threadId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final Message clone() {
        return (Message) super.clone();
    }

    public final byte[] decodeRaw() {
        return C15223d.m9251a(this.raw);
    }

    public final Message encodeRaw(byte[] bArr) {
        this.raw = C15223d.m9250a(bArr);
        return this;
    }

    public final BigInteger getHistoryId() {
        return this.historyId;
    }

    public final String getId() {
        return this.f55493id;
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final Message set(String str, Object obj) {
        return (Message) super.set(str, obj);
    }

    public final Message setHistoryId(BigInteger bigInteger) {
        this.historyId = bigInteger;
        return this;
    }

    public final Message setId(String str) {
        this.f55493id = str;
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
