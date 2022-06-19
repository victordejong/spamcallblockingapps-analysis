package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatModeratorSnippet.class */
public final class LiveChatModeratorSnippet extends GenericJson {
    @AbstractC15247q
    private String liveChatId;
    @AbstractC15247q
    private ChannelProfileDetails moderatorDetails;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveChatModeratorSnippet clone() {
        return (LiveChatModeratorSnippet) super.clone();
    }

    public final String getLiveChatId() {
        return this.liveChatId;
    }

    public final ChannelProfileDetails getModeratorDetails() {
        return this.moderatorDetails;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveChatModeratorSnippet set(String str, Object obj) {
        return (LiveChatModeratorSnippet) super.set(str, obj);
    }

    public final LiveChatModeratorSnippet setLiveChatId(String str) {
        this.liveChatId = str;
        return this;
    }

    public final LiveChatModeratorSnippet setModeratorDetails(ChannelProfileDetails channelProfileDetails) {
        this.moderatorDetails = channelProfileDetails;
        return this;
    }
}
