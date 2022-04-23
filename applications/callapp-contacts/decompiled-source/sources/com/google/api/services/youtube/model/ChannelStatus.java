package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelStatus.class */
public final class ChannelStatus extends GenericJson {
    @q
    private Boolean isLinked;
    @q
    private String longUploadsStatus;
    @q
    private Boolean madeForKids;
    @q
    private String privacyStatus;
    @q
    private Boolean selfDeclaredMadeForKids;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
