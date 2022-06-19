package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PromotedItemId.class */
public final class PromotedItemId extends GenericJson {
    @AbstractC15247q
    private String recentlyUploadedBy;
    @AbstractC15247q
    private String type;
    @AbstractC15247q
    private String videoId;
    @AbstractC15247q
    private String websiteUrl;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final PromotedItemId clone() {
        return (PromotedItemId) super.clone();
    }

    public final String getRecentlyUploadedBy() {
        return this.recentlyUploadedBy;
    }

    public final String getType() {
        return this.type;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    public final String getWebsiteUrl() {
        return this.websiteUrl;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final PromotedItemId set(String str, Object obj) {
        return (PromotedItemId) super.set(str, obj);
    }

    public final PromotedItemId setRecentlyUploadedBy(String str) {
        this.recentlyUploadedBy = str;
        return this;
    }

    public final PromotedItemId setType(String str) {
        this.type = str;
        return this;
    }

    public final PromotedItemId setVideoId(String str) {
        this.videoId = str;
        return this;
    }

    public final PromotedItemId setWebsiteUrl(String str) {
        this.websiteUrl = str;
        return this;
    }
}
