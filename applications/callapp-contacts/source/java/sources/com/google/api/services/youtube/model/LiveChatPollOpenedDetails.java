package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15232j;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatPollOpenedDetails.class */
public final class LiveChatPollOpenedDetails extends GenericJson {
    @AbstractC15247q

    /* renamed from: id */
    private String f55585id;
    @AbstractC15247q
    private List<LiveChatPollItem> items;
    @AbstractC15247q
    private String prompt;

    static {
        C15232j.m9242a(LiveChatPollItem.class);
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveChatPollOpenedDetails clone() {
        return (LiveChatPollOpenedDetails) super.clone();
    }

    public final String getId() {
        return this.f55585id;
    }

    public final List<LiveChatPollItem> getItems() {
        return this.items;
    }

    public final String getPrompt() {
        return this.prompt;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveChatPollOpenedDetails set(String str, Object obj) {
        return (LiveChatPollOpenedDetails) super.set(str, obj);
    }

    public final LiveChatPollOpenedDetails setId(String str) {
        this.f55585id = str;
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
