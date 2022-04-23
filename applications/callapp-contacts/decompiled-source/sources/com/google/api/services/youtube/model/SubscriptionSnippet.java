package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SubscriptionSnippet.class */
public final class SubscriptionSnippet extends GenericJson {
    @q
    private String channelId;
    @q
    private String channelTitle;
    @q
    private String description;
    @q
    private l publishedAt;
    @q
    private ResourceId resourceId;
    @q
    private ThumbnailDetails thumbnails;
    @q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final SubscriptionSnippet clone() {
        return (SubscriptionSnippet) super.clone();
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getChannelTitle() {
        return this.channelTitle;
    }

    public final String getDescription() {
        return this.description;
    }

    public final l getPublishedAt() {
        return this.publishedAt;
    }

    public final ResourceId getResourceId() {
        return this.resourceId;
    }

    public final ThumbnailDetails getThumbnails() {
        return this.thumbnails;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final SubscriptionSnippet set(String str, Object obj) {
        return (SubscriptionSnippet) super.set(str, obj);
    }

    public final SubscriptionSnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final SubscriptionSnippet setChannelTitle(String str) {
        this.channelTitle = str;
        return this;
    }

    public final SubscriptionSnippet setDescription(String str) {
        this.description = str;
        return this;
    }

    public final SubscriptionSnippet setPublishedAt(l lVar) {
        this.publishedAt = lVar;
        return this;
    }

    public final SubscriptionSnippet setResourceId(ResourceId resourceId) {
        this.resourceId = resourceId;
        return this;
    }

    public final SubscriptionSnippet setThumbnails(ThumbnailDetails thumbnailDetails) {
        this.thumbnails = thumbnailDetails;
        return this;
    }

    public final SubscriptionSnippet setTitle(String str) {
        this.title = str;
        return this;
    }
}
