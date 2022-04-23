package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ActivityContentDetailsBulletin.class */
public final class ActivityContentDetailsBulletin extends GenericJson {
    @q
    private ResourceId resourceId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ActivityContentDetailsBulletin clone() {
        return (ActivityContentDetailsBulletin) super.clone();
    }

    public final ResourceId getResourceId() {
        return this.resourceId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ActivityContentDetailsBulletin set(String str, Object obj) {
        return (ActivityContentDetailsBulletin) super.set(str, obj);
    }

    public final ActivityContentDetailsBulletin setResourceId(ResourceId resourceId) {
        this.resourceId = resourceId;
        return this;
    }
}
