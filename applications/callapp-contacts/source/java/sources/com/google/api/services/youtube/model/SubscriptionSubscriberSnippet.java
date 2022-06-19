package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SubscriptionSubscriberSnippet.class */
public final class SubscriptionSubscriberSnippet extends GenericJson {
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private String description;
    @AbstractC15247q
    private ThumbnailDetails thumbnails;
    @AbstractC15247q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final SubscriptionSubscriberSnippet clone() {
        return (SubscriptionSubscriberSnippet) super.clone();
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getDescription() {
        return this.description;
    }

    public final ThumbnailDetails getThumbnails() {
        return this.thumbnails;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final SubscriptionSubscriberSnippet set(String str, Object obj) {
        return (SubscriptionSubscriberSnippet) super.set(str, obj);
    }

    public final SubscriptionSubscriberSnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final SubscriptionSubscriberSnippet setDescription(String str) {
        this.description = str;
        return this;
    }

    public final SubscriptionSubscriberSnippet setThumbnails(ThumbnailDetails thumbnailDetails) {
        this.thumbnails = thumbnailDetails;
        return this;
    }

    public final SubscriptionSubscriberSnippet setTitle(String str) {
        this.title = str;
        return this;
    }
}
