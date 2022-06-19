package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelStatus.class */
public final class ChannelStatus extends GenericJson {
    @AbstractC15247q
    private Boolean isLinked;
    @AbstractC15247q
    private String longUploadsStatus;
    @AbstractC15247q
    private Boolean madeForKids;
    @AbstractC15247q
    private String privacyStatus;
    @AbstractC15247q
    private Boolean selfDeclaredMadeForKids;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ChannelStatus clone() {
        return (ChannelStatus) super.clone();
    }

    public final Boolean getIsLinked() {
        return this.isLinked;
    }

    public final String getLongUploadsStatus() {
        return this.longUploadsStatus;
    }

    public final Boolean getMadeForKids() {
        return this.madeForKids;
    }

    public final String getPrivacyStatus() {
        return this.privacyStatus;
    }

    public final Boolean getSelfDeclaredMadeForKids() {
        return this.selfDeclaredMadeForKids;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ChannelStatus set(String str, Object obj) {
        return (ChannelStatus) super.set(str, obj);
    }

    public final ChannelStatus setIsLinked(Boolean bool) {
        this.isLinked = bool;
        return this;
    }

    public final ChannelStatus setLongUploadsStatus(String str) {
        this.longUploadsStatus = str;
        return this;
    }

    public final ChannelStatus setMadeForKids(Boolean bool) {
        this.madeForKids = bool;
        return this;
    }

    public final ChannelStatus setPrivacyStatus(String str) {
        this.privacyStatus = str;
        return this;
    }

    public final ChannelStatus setSelfDeclaredMadeForKids(Boolean bool) {
        this.selfDeclaredMadeForKids = bool;
        return this;
    }
}
