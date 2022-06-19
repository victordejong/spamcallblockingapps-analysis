package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelProfileDetails.class */
public final class ChannelProfileDetails extends GenericJson {
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private String channelUrl;
    @AbstractC15247q
    private String displayName;
    @AbstractC15247q
    private String profileImageUrl;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ChannelProfileDetails clone() {
        return (ChannelProfileDetails) super.clone();
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getChannelUrl() {
        return this.channelUrl;
    }

    public final String getDisplayName() {
        return this.displayName;
    }

    public final String getProfileImageUrl() {
        return this.profileImageUrl;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ChannelProfileDetails set(String str, Object obj) {
        return (ChannelProfileDetails) super.set(str, obj);
    }

    public final ChannelProfileDetails setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final ChannelProfileDetails setChannelUrl(String str) {
        this.channelUrl = str;
        return this;
    }

    public final ChannelProfileDetails setDisplayName(String str) {
        this.displayName = str;
        return this;
    }

    public final ChannelProfileDetails setProfileImageUrl(String str) {
        this.profileImageUrl = str;
        return this;
    }
}
