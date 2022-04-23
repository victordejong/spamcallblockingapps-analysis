package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelProfileDetails.class */
public final class ChannelProfileDetails extends GenericJson {
    @q
    private String channelId;
    @q
    private String channelUrl;
    @q
    private String displayName;
    @q
    private String profileImageUrl;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
