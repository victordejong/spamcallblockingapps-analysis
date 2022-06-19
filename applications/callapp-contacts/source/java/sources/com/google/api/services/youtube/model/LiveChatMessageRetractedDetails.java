package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatMessageRetractedDetails.class */
public final class LiveChatMessageRetractedDetails extends GenericJson {
    @AbstractC15247q
    private String retractedMessageId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveChatMessageRetractedDetails clone() {
        return (LiveChatMessageRetractedDetails) super.clone();
    }

    public final String getRetractedMessageId() {
        return this.retractedMessageId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveChatMessageRetractedDetails set(String str, Object obj) {
        return (LiveChatMessageRetractedDetails) super.set(str, obj);
    }

    public final LiveChatMessageRetractedDetails setRetractedMessageId(String str) {
        this.retractedMessageId = str;
        return this;
    }
}
