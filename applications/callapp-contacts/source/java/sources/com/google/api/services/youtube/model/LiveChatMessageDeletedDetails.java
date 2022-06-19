package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatMessageDeletedDetails.class */
public final class LiveChatMessageDeletedDetails extends GenericJson {
    @AbstractC15247q
    private String deletedMessageId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveChatMessageDeletedDetails clone() {
        return (LiveChatMessageDeletedDetails) super.clone();
    }

    public final String getDeletedMessageId() {
        return this.deletedMessageId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveChatMessageDeletedDetails set(String str, Object obj) {
        return (LiveChatMessageDeletedDetails) super.set(str, obj);
    }

    public final LiveChatMessageDeletedDetails setDeletedMessageId(String str) {
        this.deletedMessageId = str;
        return this;
    }
}
