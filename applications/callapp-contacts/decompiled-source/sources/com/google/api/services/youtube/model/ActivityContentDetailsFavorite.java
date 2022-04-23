package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ActivityContentDetailsFavorite.class */
public final class ActivityContentDetailsFavorite extends GenericJson {
    @q
    private ResourceId resourceId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ActivityContentDetailsFavorite clone() {
        return (ActivityContentDetailsFavorite) super.clone();
    }

    public final ResourceId getResourceId() {
        return this.resourceId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ActivityContentDetailsFavorite set(String str, Object obj) {
        return (ActivityContentDetailsFavorite) super.set(str, obj);
    }

    public final ActivityContentDetailsFavorite setResourceId(ResourceId resourceId) {
        this.resourceId = resourceId;
        return this;
    }
}
