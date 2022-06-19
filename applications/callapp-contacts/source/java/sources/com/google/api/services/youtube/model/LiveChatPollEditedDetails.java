package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatPollEditedDetails.class */
public final class LiveChatPollEditedDetails extends GenericJson {
    @AbstractC15247q

    /* renamed from: id */
    private String f55584id;
    @AbstractC15247q
    private List<LiveChatPollItem> items;
    @AbstractC15247q
    private String prompt;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveChatPollEditedDetails clone() {
        return (LiveChatPollEditedDetails) super.clone();
    }

    public final String getId() {
        return this.f55584id;
    }

    public final List<LiveChatPollItem> getItems() {
        return this.items;
    }

    public final String getPrompt() {
        return this.prompt;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveChatPollEditedDetails set(String str, Object obj) {
        return (LiveChatPollEditedDetails) super.set(str, obj);
    }

    public final LiveChatPollEditedDetails setId(String str) {
        this.f55584id = str;
        return this;
    }

    public final LiveChatPollEditedDetails setItems(List<LiveChatPollItem> list) {
        this.items = list;
        return this;
    }

    public final LiveChatPollEditedDetails setPrompt(String str) {
        this.prompt = str;
        return this;
    }
}
