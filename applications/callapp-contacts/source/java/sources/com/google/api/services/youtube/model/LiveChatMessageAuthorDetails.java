package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/LiveChatMessageAuthorDetails.class */
public final class LiveChatMessageAuthorDetails extends GenericJson {
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private String channelUrl;
    @AbstractC15247q
    private String displayName;
    @AbstractC15247q
    private Boolean isChatModerator;
    @AbstractC15247q
    private Boolean isChatOwner;
    @AbstractC15247q
    private Boolean isChatSponsor;
    @AbstractC15247q
    private Boolean isVerified;
    @AbstractC15247q
    private String profileImageUrl;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final LiveChatMessageAuthorDetails clone() {
        return (LiveChatMessageAuthorDetails) super.clone();
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

    public final Boolean getIsChatModerator() {
        return this.isChatModerator;
    }

    public final Boolean getIsChatOwner() {
        return this.isChatOwner;
    }

    public final Boolean getIsChatSponsor() {
        return this.isChatSponsor;
    }

    public final Boolean getIsVerified() {
        return this.isVerified;
    }

    public final String getProfileImageUrl() {
        return this.profileImageUrl;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final LiveChatMessageAuthorDetails set(String str, Object obj) {
        return (LiveChatMessageAuthorDetails) super.set(str, obj);
    }

    public final LiveChatMessageAuthorDetails setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final LiveChatMessageAuthorDetails setChannelUrl(String str) {
        this.channelUrl = str;
        return this;
    }

    public final LiveChatMessageAuthorDetails setDisplayName(String str) {
        this.displayName = str;
        return this;
    }

    public final LiveChatMessageAuthorDetails setIsChatModerator(Boolean bool) {
        this.isChatModerator = bool;
        return this;
    }

    public final LiveChatMessageAuthorDetails setIsChatOwner(Boolean bool) {
        this.isChatOwner = bool;
        return this;
    }

    public final LiveChatMessageAuthorDetails setIsChatSponsor(Boolean bool) {
        this.isChatSponsor = bool;
        return this;
    }

    public final LiveChatMessageAuthorDetails setIsVerified(Boolean bool) {
        this.isVerified = bool;
        return this;
    }

    public final LiveChatMessageAuthorDetails setProfileImageUrl(String str) {
        this.profileImageUrl = str;
        return this;
    }
}
