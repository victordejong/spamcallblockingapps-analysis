package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ActivitySnippet.class */
public final class ActivitySnippet extends GenericJson {
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private String channelTitle;
    @AbstractC15247q
    private String description;
    @AbstractC15247q
    private String groupId;
    @AbstractC15247q
    private C15237l publishedAt;
    @AbstractC15247q
    private ThumbnailDetails thumbnails;
    @AbstractC15247q
    private String title;
    @AbstractC15247q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ActivitySnippet clone() {
        return (ActivitySnippet) super.clone();
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

    public final String getGroupId() {
        return this.groupId;
    }

    public final C15237l getPublishedAt() {
        return this.publishedAt;
    }

    public final ThumbnailDetails getThumbnails() {
        return this.thumbnails;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ActivitySnippet set(String str, Object obj) {
        return (ActivitySnippet) super.set(str, obj);
    }

    public final ActivitySnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final ActivitySnippet setChannelTitle(String str) {
        this.channelTitle = str;
        return this;
    }

    public final ActivitySnippet setDescription(String str) {
        this.description = str;
        return this;
    }

    public final ActivitySnippet setGroupId(String str) {
        this.groupId = str;
        return this;
    }

    public final ActivitySnippet setPublishedAt(C15237l c15237l) {
        this.publishedAt = c15237l;
        return this;
    }

    public final ActivitySnippet setThumbnails(ThumbnailDetails thumbnailDetails) {
        this.thumbnails = thumbnailDetails;
        return this;
    }

    public final ActivitySnippet setTitle(String str) {
        this.title = str;
        return this;
    }

    public final ActivitySnippet setType(String str) {
        this.type = str;
        return this;
    }
}
