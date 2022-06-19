package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelContentOwnerDetails.class */
public final class ChannelContentOwnerDetails extends GenericJson {
    @AbstractC15247q
    private String contentOwner;
    @AbstractC15247q
    private C15237l timeLinked;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ChannelContentOwnerDetails clone() {
        return (ChannelContentOwnerDetails) super.clone();
    }

    public final String getContentOwner() {
        return this.contentOwner;
    }

    public final C15237l getTimeLinked() {
        return this.timeLinked;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ChannelContentOwnerDetails set(String str, Object obj) {
        return (ChannelContentOwnerDetails) super.set(str, obj);
    }

    public final ChannelContentOwnerDetails setContentOwner(String str) {
        this.contentOwner = str;
        return this;
    }

    public final ChannelContentOwnerDetails setTimeLinked(C15237l c15237l) {
        this.timeLinked = c15237l;
        return this;
    }
}
