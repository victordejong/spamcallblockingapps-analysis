package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ActivityContentDetailsRecommendation.class */
public final class ActivityContentDetailsRecommendation extends GenericJson {
    @AbstractC15247q
    private String reason;
    @AbstractC15247q
    private ResourceId resourceId;
    @AbstractC15247q
    private ResourceId seedResourceId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ActivityContentDetailsRecommendation clone() {
        return (ActivityContentDetailsRecommendation) super.clone();
    }

    public final String getReason() {
        return this.reason;
    }

    public final ResourceId getResourceId() {
        return this.resourceId;
    }

    public final ResourceId getSeedResourceId() {
        return this.seedResourceId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ActivityContentDetailsRecommendation set(String str, Object obj) {
        return (ActivityContentDetailsRecommendation) super.set(str, obj);
    }

    public final ActivityContentDetailsRecommendation setReason(String str) {
        this.reason = str;
        return this;
    }

    public final ActivityContentDetailsRecommendation setResourceId(ResourceId resourceId) {
        this.resourceId = resourceId;
        return this;
    }

    public final ActivityContentDetailsRecommendation setSeedResourceId(ResourceId resourceId) {
        this.seedResourceId = resourceId;
        return this;
    }
}
