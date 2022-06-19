package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.math.BigInteger;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/Thread.class */
public final class Thread extends GenericJson {
    @AbstractC15247q
    @JsonString
    private BigInteger historyId;
    @AbstractC15247q

    /* renamed from: id */
    private String f55495id;
    @AbstractC15247q
    private List<Message> messages;
    @AbstractC15247q
    private String snippet;

    static {
        C15232j.m9242a(Message.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final Thread clone() {
        return (Thread) super.clone();
    }

    public final BigInteger getHistoryId() {
        return this.historyId;
    }

    public final String getId() {
        return this.f55495id;
    }

    public final List<Message> getMessages() {
        return this.messages;
    }

    public final String getSnippet() {
        return this.snippet;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final Thread set(String str, Object obj) {
        return (Thread) super.set(str, obj);
    }

    public final Thread setHistoryId(BigInteger bigInteger) {
        this.historyId = bigInteger;
        return this;
    }

    public final Thread setId(String str) {
        this.f55495id = str;
        return this;
    }

    public final Thread setMessages(List<Message> list) {
        this.messages = list;
        return this;
    }

    public final Thread setSnippet(String str) {
        this.snippet = str;
        return this;
    }
}
