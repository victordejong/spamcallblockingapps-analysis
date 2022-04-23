package com.google.api.services.youtube.model;

import com.google.api.client.a.j;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatPollOpenedDetails.class */
public final class LiveChatPollOpenedDetails extends GenericJson {
    @q
    private String id;
    @q
    private List<LiveChatPollItem> items;
    @q
    private String prompt;

    static {
        j.a(LiveChatPollItem.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveChatPollOpenedDetails clone() {
        return (LiveChatPollOpenedDetails) super.clone();
    }

    public final String getId() {
        return this.id;
    }

    public final List<LiveChatPollItem> getItems() {
        return this.items;
    }

    public final String getPrompt() {
        return this.prompt;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveChatPollOpenedDetails set(String str, Object obj) {
        return (LiveChatPollOpenedDetails) super.set(str, obj);
    }

    public final LiveChatPollOpenedDetails setId(String str) {
        this.id = str;
        return this;
    }

    public final LiveChatPollOpenedDetails setItems(List<LiveChatPollItem> list) {
        this.items = list;
        return this;
    }

    public final LiveChatPollOpenedDetails setPrompt(String str) {
        this.prompt = str;
        return this;
    }
}
