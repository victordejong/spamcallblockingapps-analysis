package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelContentOwnerDetails.class */
public final class ChannelContentOwnerDetails extends GenericJson {
    @q
    private String contentOwner;
    @q
    private l timeLinked;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ChannelContentOwnerDetails clone() {
        return (ChannelContentOwnerDetails) super.clone();
    }

    public final String getContentOwner() {
        return this.contentOwner;
    }

    public final l getTimeLinked() {
        return this.timeLinked;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ChannelContentOwnerDetails set(String str, Object obj) {
        return (ChannelContentOwnerDetails) super.set(str, obj);
    }

    public final ChannelContentOwnerDetails setContentOwner(String str) {
        this.contentOwner = str;
        return this;
    }

    public final ChannelContentOwnerDetails setTimeLinked(l lVar) {
        this.timeLinked = lVar;
        return this;
    }
}
