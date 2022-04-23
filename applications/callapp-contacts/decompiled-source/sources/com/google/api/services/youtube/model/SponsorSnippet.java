package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SponsorSnippet.class */
public final class SponsorSnippet extends GenericJson {
    @q
    private String channelId;
    @q
    private Integer cumulativeDurationMonths;
    @q
    private ChannelProfileDetails sponsorDetails;
    @q
    private l sponsorSince;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final SponsorSnippet clone() {
        return (SponsorSnippet) super.clone();
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final Integer getCumulativeDurationMonths() {
        return this.cumulativeDurationMonths;
    }

    public final ChannelProfileDetails getSponsorDetails() {
        return this.sponsorDetails;
    }

    public final l getSponsorSince() {
        return this.sponsorSince;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final SponsorSnippet set(String str, Object obj) {
        return (SponsorSnippet) super.set(str, obj);
    }

    public final SponsorSnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final SponsorSnippet setCumulativeDurationMonths(Integer num) {
        this.cumulativeDurationMonths = num;
        return this;
    }

    public final SponsorSnippet setSponsorDetails(ChannelProfileDetails channelProfileDetails) {
        this.sponsorDetails = channelProfileDetails;
        return this;
    }

    public final SponsorSnippet setSponsorSince(l lVar) {
        this.sponsorSince = lVar;
        return this;
    }
}
