package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatUserBannedMessageDetails.class */
public final class LiveChatUserBannedMessageDetails extends GenericJson {
    @q
    @JsonString
    private BigInteger banDurationSeconds;
    @q
    private String banType;
    @q
    private ChannelProfileDetails bannedUserDetails;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final LiveChatUserBannedMessageDetails clone() {
        return (LiveChatUserBannedMessageDetails) super.clone();
    }

    public final BigInteger getBanDurationSeconds() {
        return this.banDurationSeconds;
    }

    public final String getBanType() {
        return this.banType;
    }

    public final ChannelProfileDetails getBannedUserDetails() {
        return this.bannedUserDetails;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final LiveChatUserBannedMessageDetails set(String str, Object obj) {
        return (LiveChatUserBannedMessageDetails) super.set(str, obj);
    }

    public final LiveChatUserBannedMessageDetails setBanDurationSeconds(BigInteger bigInteger) {
        this.banDurationSeconds = bigInteger;
        return this;
    }

    public final LiveChatUserBannedMessageDetails setBanType(String str) {
        this.banType = str;
        return this;
    }

    public final LiveChatUserBannedMessageDetails setBannedUserDetails(ChannelProfileDetails channelProfileDetails) {
        this.bannedUserDetails = channelProfileDetails;
        return this;
    }
}
