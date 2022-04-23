package com.google.api.services.gmail.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/gmail/model/ListMessagesResponse.class */
public final class ListMessagesResponse extends GenericJson {
    @q
    private List<Message> messages;
    @q
    private String nextPageToken;
    @q
    private Long resultSizeEstimate;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
