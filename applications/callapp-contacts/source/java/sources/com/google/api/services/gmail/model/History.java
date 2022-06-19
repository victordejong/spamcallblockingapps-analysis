package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import java.math.BigInteger;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/History.class */
public final class History extends GenericJson {
    @AbstractC15247q
    @JsonString

    /* renamed from: id */
    private BigInteger f55491id;
    @AbstractC15247q
    private List<HistoryLabelAdded> labelsAdded;
    @AbstractC15247q
    private List<HistoryLabelRemoved> labelsRemoved;
    @AbstractC15247q
    private List<Message> messages;
    @AbstractC15247q
    private List<HistoryMessageAdded> messagesAdded;
    @AbstractC15247q
    private List<HistoryMessageDeleted> messagesDeleted;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final History clone() {
        return (History) super.clone();
    }

    public final BigInteger getId() {
        return this.f55491id;
    }

    public final List<HistoryLabelAdded> getLabelsAdded() {
        return this.labelsAdded;
    }

    public final List<HistoryLabelRemoved> getLabelsRemoved() {
        return this.labelsRemoved;
    }

    public final List<Message> getMessages() {
        return this.messages;
    }

    public final List<HistoryMessageAdded> getMessagesAdded() {
        return this.messagesAdded;
    }

    public final List<HistoryMessageDeleted> getMessagesDeleted() {
        return this.messagesDeleted;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final History set(String str, Object obj) {
        return (History) super.set(str, obj);
    }

    public final History setId(BigInteger bigInteger) {
        this.f55491id = bigInteger;
        return this;
    }

    public final History setLabelsAdded(List<HistoryLabelAdded> list) {
        this.labelsAdded = list;
        return this;
    }

    public final History setLabelsRemoved(List<HistoryLabelRemoved> list) {
        this.labelsRemoved = list;
        return this;
    }

    public final History setMessages(List<Message> list) {
        this.messages = list;
        return this;
    }

    public final History setMessagesAdded(List<HistoryMessageAdded> list) {
        this.messagesAdded = list;
        return this;
    }

    public final History setMessagesDeleted(List<HistoryMessageDeleted> list) {
        this.messagesDeleted = list;
        return this;
    }
}
