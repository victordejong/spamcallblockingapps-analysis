package com.google.api.services.gmail.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListMessagesResponse.class */
public final class ListMessagesResponse extends GenericJson {
    @AbstractC15247q
    private List<Message> messages;
    @AbstractC15247q
    private String nextPageToken;
    @AbstractC15247q
    private Long resultSizeEstimate;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ListMessagesResponse clone() {
        return (ListMessagesResponse) super.clone();
    }

    public final List<Message> getMessages() {
        return this.messages;
    }

    public final String getNextPageToken() {
        return this.nextPageToken;
    }

    public final Long getResultSizeEstimate() {
        return this.resultSizeEstimate;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ListMessagesResponse set(String str, Object obj) {
        return (ListMessagesResponse) super.set(str, obj);
    }

    public final ListMessagesResponse setMessages(List<Message> list) {
        this.messages = list;
        return this;
    }

    public final ListMessagesResponse setNextPageToken(String str) {
        this.nextPageToken = str;
        return this;
    }

    public final ListMessagesResponse setResultSizeEstimate(Long l) {
        this.resultSizeEstimate = l;
        return this;
    }
}
