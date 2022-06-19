package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SponsorSnippet.class */
public final class SponsorSnippet extends GenericJson {
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private Integer cumulativeDurationMonths;
    @AbstractC15247q
    private ChannelProfileDetails sponsorDetails;
    @AbstractC15247q
    private C15237l sponsorSince;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
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

    public final C15237l getSponsorSince() {
        return this.sponsorSince;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
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

    public final SponsorSnippet setSponsorSince(C15237l c15237l) {
        this.sponsorSince = c15237l;
        return this;
    }
}
