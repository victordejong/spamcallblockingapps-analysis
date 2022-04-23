package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatPollVotedDetails.class */
public final class LiveChatPollVotedDetails extends GenericJson {
    @q
    private String itemId;
    @q
    private String pollId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveChatPollVotedDetails clone() {
        return (LiveChatPollVotedDetails) super.clone();
    }

    public final String getItemId() {
        return this.itemId;
    }

    public final String getPollId() {
        return this.pollId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveChatPollVotedDetails set(String str, Object obj) {
        return (LiveChatPollVotedDetails) super.set(str, obj);
    }

    public final LiveChatPollVotedDetails setItemId(String str) {
        this.itemId = str;
        return this;
    }

    public final LiveChatPollVotedDetails setPollId(String str) {
        this.pollId = str;
        return this;
    }
}
