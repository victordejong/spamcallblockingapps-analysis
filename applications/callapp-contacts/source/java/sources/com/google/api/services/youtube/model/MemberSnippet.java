package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/MemberSnippet.class */
public final class MemberSnippet extends GenericJson {
    @AbstractC15247q
    private String creatorChannelId;
    @AbstractC15247q
    private ChannelProfileDetails memberDetails;
    @AbstractC15247q
    private MembershipsDetails membershipsDetails;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final MemberSnippet clone() {
        return (MemberSnippet) super.clone();
    }

    public final String getCreatorChannelId() {
        return this.creatorChannelId;
    }

    public final ChannelProfileDetails getMemberDetails() {
        return this.memberDetails;
    }

    public final MembershipsDetails getMembershipsDetails() {
        return this.membershipsDetails;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final MemberSnippet set(String str, Object obj) {
        return (MemberSnippet) super.set(str, obj);
    }

    public final MemberSnippet setCreatorChannelId(String str) {
        this.creatorChannelId = str;
        return this;
    }

    public final MemberSnippet setMemberDetails(ChannelProfileDetails channelProfileDetails) {
        this.memberDetails = channelProfileDetails;
        return this;
    }

    public final MemberSnippet setMembershipsDetails(MembershipsDetails membershipsDetails) {
        this.membershipsDetails = membershipsDetails;
        return this;
    }
}
