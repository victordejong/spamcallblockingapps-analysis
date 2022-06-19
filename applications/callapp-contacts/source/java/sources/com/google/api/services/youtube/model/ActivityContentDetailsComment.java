package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ActivityContentDetailsComment.class */
public final class ActivityContentDetailsComment extends GenericJson {
    @AbstractC15247q
    private ResourceId resourceId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ActivityContentDetailsComment clone() {
        return (ActivityContentDetailsComment) super.clone();
    }

    public final ResourceId getResourceId() {
        return this.resourceId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ActivityContentDetailsComment set(String str, Object obj) {
        return (ActivityContentDetailsComment) super.set(str, obj);
    }

    public final ActivityContentDetailsComment setResourceId(ResourceId resourceId) {
        this.resourceId = resourceId;
        return this;
    }
}
