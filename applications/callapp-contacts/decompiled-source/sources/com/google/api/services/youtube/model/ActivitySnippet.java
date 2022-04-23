package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ActivitySnippet.class */
public final class ActivitySnippet extends GenericJson {
    @q
    private String channelId;
    @q
    private String channelTitle;
    @q
    private String description;
    @q
    private String groupId;
    @q
    private l publishedAt;
    @q
    private ThumbnailDetails thumbnails;
    @q
    private String title;
    @q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    public final l getPublishedAt() {
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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

    public final ActivitySnippet setPublishedAt(l lVar) {
        this.publishedAt = lVar;
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
