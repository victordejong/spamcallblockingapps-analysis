package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatMessageRetractedDetails.class */
public final class LiveChatMessageRetractedDetails extends GenericJson {
    @q
    private String retractedMessageId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveChatMessageRetractedDetails clone() {
        return (LiveChatMessageRetractedDetails) super.clone();
    }

    public final String getRetractedMessageId() {
        return this.retractedMessageId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveChatMessageRetractedDetails set(String str, Object obj) {
        return (LiveChatMessageRetractedDetails) super.set(str, obj);
    }

    public final LiveChatMessageRetractedDetails setRetractedMessageId(String str) {
        this.retractedMessageId = str;
        return this;
    }
}
