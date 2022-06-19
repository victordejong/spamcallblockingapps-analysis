package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatBanSnippet.class */
public final class LiveChatBanSnippet extends GenericJson {
    @AbstractC15247q
    @JsonString
    private BigInteger banDurationSeconds;
    @AbstractC15247q
    private ChannelProfileDetails bannedUserDetails;
    @AbstractC15247q
    private String liveChatId;
    @AbstractC15247q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveChatBanSnippet clone() {
        return (LiveChatBanSnippet) super.clone();
    }

    public final BigInteger getBanDurationSeconds() {
        return this.banDurationSeconds;
    }

    public final ChannelProfileDetails getBannedUserDetails() {
        return this.bannedUserDetails;
    }

    public final String getLiveChatId() {
        return this.liveChatId;
    }

    public final String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveChatBanSnippet set(String str, Object obj) {
        return (LiveChatBanSnippet) super.set(str, obj);
    }

    public final LiveChatBanSnippet setBanDurationSeconds(BigInteger bigInteger) {
        this.banDurationSeconds = bigInteger;
        return this;
    }

    public final LiveChatBanSnippet setBannedUserDetails(ChannelProfileDetails channelProfileDetails) {
        this.bannedUserDetails = channelProfileDetails;
        return this;
    }

    public final LiveChatBanSnippet setLiveChatId(String str) {
        this.liveChatId = str;
        return this;
    }

    public final LiveChatBanSnippet setType(String str) {
        this.type = str;
        return this;
    }
}
