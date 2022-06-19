package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelAuditDetails.class */
public final class ChannelAuditDetails extends GenericJson {
    @AbstractC15247q
    private Boolean communityGuidelinesGoodStanding;
    @AbstractC15247q
    private Boolean contentIdClaimsGoodStanding;
    @AbstractC15247q
    private Boolean copyrightStrikesGoodStanding;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ChannelAuditDetails clone() {
        return (ChannelAuditDetails) super.clone();
    }

    public final Boolean getCommunityGuidelinesGoodStanding() {
        return this.communityGuidelinesGoodStanding;
    }

    public final Boolean getContentIdClaimsGoodStanding() {
        return this.contentIdClaimsGoodStanding;
    }

    public final Boolean getCopyrightStrikesGoodStanding() {
        return this.copyrightStrikesGoodStanding;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ChannelAuditDetails set(String str, Object obj) {
        return (ChannelAuditDetails) super.set(str, obj);
    }

    public final ChannelAuditDetails setCommunityGuidelinesGoodStanding(Boolean bool) {
        this.communityGuidelinesGoodStanding = bool;
        return this;
    }

    public final ChannelAuditDetails setContentIdClaimsGoodStanding(Boolean bool) {
        this.contentIdClaimsGoodStanding = bool;
        return this;
    }

    public final ChannelAuditDetails setCopyrightStrikesGoodStanding(Boolean bool) {
        this.copyrightStrikesGoodStanding = bool;
        return this;
    }
}
