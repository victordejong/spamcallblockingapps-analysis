package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatBanSnippet.class */
public final class LiveChatBanSnippet extends GenericJson {
    @q
    @JsonString
    private BigInteger banDurationSeconds;
    @q
    private ChannelProfileDetails bannedUserDetails;
    @q
    private String liveChatId;
    @q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
