package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ActivityContentDetailsSocial.class */
public final class ActivityContentDetailsSocial extends GenericJson {
    @AbstractC15247q
    private String author;
    @AbstractC15247q
    private String imageUrl;
    @AbstractC15247q
    private String referenceUrl;
    @AbstractC15247q
    private ResourceId resourceId;
    @AbstractC15247q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ActivityContentDetailsSocial clone() {
        return (ActivityContentDetailsSocial) super.clone();
    }

    public final String getAuthor() {
        return this.author;
    }

    public final String getImageUrl() {
        return this.imageUrl;
    }

    public final String getReferenceUrl() {
        return this.referenceUrl;
    }

    public final ResourceId getResourceId() {
        return this.resourceId;
    }

    public final String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ActivityContentDetailsSocial set(String str, Object obj) {
        return (ActivityContentDetailsSocial) super.set(str, obj);
    }

    public final ActivityContentDetailsSocial setAuthor(String str) {
        this.author = str;
        return this;
    }

    public final ActivityContentDetailsSocial setImageUrl(String str) {
        this.imageUrl = str;
        return this;
    }

    public final ActivityContentDetailsSocial setReferenceUrl(String str) {
        this.referenceUrl = str;
        return this;
    }

    public final ActivityContentDetailsSocial setResourceId(ResourceId resourceId) {
        this.resourceId = resourceId;
        return this;
    }

    public final ActivityContentDetailsSocial setType(String str) {
        this.type = str;
        return this;
    }
}
