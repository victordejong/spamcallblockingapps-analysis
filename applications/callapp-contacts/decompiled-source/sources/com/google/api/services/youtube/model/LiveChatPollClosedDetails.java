package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatPollClosedDetails.class */
public final class LiveChatPollClosedDetails extends GenericJson {
    @q
    private String pollId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveChatPollClosedDetails clone() {
        return (LiveChatPollClosedDetails) super.clone();
    }

    public final String getPollId() {
        return this.pollId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveChatPollClosedDetails set(String str, Object obj) {
        return (LiveChatPollClosedDetails) super.set(str, obj);
    }

    public final LiveChatPollClosedDetails setPollId(String str) {
        this.pollId = str;
        return this;
    }
}
