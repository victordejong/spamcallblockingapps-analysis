package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ActivityContentDetailsChannelItem.class */
public final class ActivityContentDetailsChannelItem extends GenericJson {
    @AbstractC15247q
    private ResourceId resourceId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ActivityContentDetailsChannelItem clone() {
        return (ActivityContentDetailsChannelItem) super.clone();
    }

    public final ResourceId getResourceId() {
        return this.resourceId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ActivityContentDetailsChannelItem set(String str, Object obj) {
        return (ActivityContentDetailsChannelItem) super.set(str, obj);
    }

    public final ActivityContentDetailsChannelItem setResourceId(ResourceId resourceId) {
        this.resourceId = resourceId;
        return this;
    }
}
