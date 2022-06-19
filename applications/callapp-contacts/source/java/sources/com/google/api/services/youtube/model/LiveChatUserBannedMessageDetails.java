package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.json.JsonString;
import com.google.api.client.p379a.AbstractC15247q;
import java.math.BigInteger;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatUserBannedMessageDetails.class */
public final class LiveChatUserBannedMessageDetails extends GenericJson {
    @AbstractC15247q
    @JsonString
    private BigInteger banDurationSeconds;
    @AbstractC15247q
    private String banType;
    @AbstractC15247q
    private ChannelProfileDetails bannedUserDetails;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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
