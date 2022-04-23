package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PromotedItemId.class */
public final class PromotedItemId extends GenericJson {
    @q
    private String recentlyUploadedBy;
    @q
    private String type;
    @q
    private String videoId;
    @q
    private String websiteUrl;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
