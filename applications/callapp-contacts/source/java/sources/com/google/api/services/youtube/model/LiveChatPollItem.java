package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatPollItem.class */
public final class LiveChatPollItem extends GenericJson {
    @AbstractC15247q
    private String description;
    @AbstractC15247q
    private String itemId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveChatPollItem clone() {
        return (LiveChatPollItem) super.clone();
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getItemId() {
        return this.itemId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveChatPollItem set(String str, Object obj) {
        return (LiveChatPollItem) super.set(str, obj);
    }

    public final LiveChatPollItem setDescription(String str) {
        this.description = str;
        return this;
    }

    public final LiveChatPollItem setItemId(String str) {
        this.itemId = str;
        return this;
    }
}
