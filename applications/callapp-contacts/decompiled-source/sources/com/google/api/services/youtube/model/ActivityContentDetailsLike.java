package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ActivityContentDetailsLike.class */
public final class ActivityContentDetailsLike extends GenericJson {
    @q
    private ResourceId resourceId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ActivityContentDetailsLike clone() {
        return (ActivityContentDetailsLike) super.clone();
    }

    public final ResourceId getResourceId() {
        return this.resourceId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ActivityContentDetailsLike set(String str, Object obj) {
        return (ActivityContentDetailsLike) super.set(str, obj);
    }

    public final ActivityContentDetailsLike setResourceId(ResourceId resourceId) {
        this.resourceId = resourceId;
        return this;
    }
}
