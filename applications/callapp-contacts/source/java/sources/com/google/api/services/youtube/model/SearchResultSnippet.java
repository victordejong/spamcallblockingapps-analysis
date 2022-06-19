package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SearchResultSnippet.class */
public final class SearchResultSnippet extends GenericJson {
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private String channelTitle;
    @AbstractC15247q
    private String description;
    @AbstractC15247q
    private String liveBroadcastContent;
    @AbstractC15247q
    private C15237l publishedAt;
    @AbstractC15247q
    private ThumbnailDetails thumbnails;
    @AbstractC15247q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final SearchResultSnippet clone() {
        return (SearchResultSnippet) super.clone();
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

    public final String getLiveBroadcastContent() {
        return this.liveBroadcastContent;
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final SearchResultSnippet set(String str, Object obj) {
        return (SearchResultSnippet) super.set(str, obj);
    }

    public final SearchResultSnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final SearchResultSnippet setChannelTitle(String str) {
        this.channelTitle = str;
        return this;
    }

    public final SearchResultSnippet setDescription(String str) {
        this.description = str;
        return this;
    }

    public final SearchResultSnippet setLiveBroadcastContent(String str) {
        this.liveBroadcastContent = str;
        return this;
    }

    public final SearchResultSnippet setPublishedAt(C15237l c15237l) {
        this.publishedAt = c15237l;
        return this;
    }

    public final SearchResultSnippet setThumbnails(ThumbnailDetails thumbnailDetails) {
        this.thumbnails = thumbnailDetails;
        return this;
    }

    public final SearchResultSnippet setTitle(String str) {
        this.title = str;
        return this;
    }
}
