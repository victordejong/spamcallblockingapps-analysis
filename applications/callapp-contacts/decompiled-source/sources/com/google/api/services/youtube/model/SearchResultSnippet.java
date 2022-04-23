package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/SearchResultSnippet.class */
public final class SearchResultSnippet extends GenericJson {
    @q
    private String channelId;
    @q
    private String channelTitle;
    @q
    private String description;
    @q
    private String liveBroadcastContent;
    @q
    private l publishedAt;
    @q
    private ThumbnailDetails thumbnails;
    @q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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

    public final l getPublishedAt() {
        return this.publishedAt;
    }

    public final ThumbnailDetails getThumbnails() {
        return this.thumbnails;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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

    public final SearchResultSnippet setPublishedAt(l lVar) {
        this.publishedAt = lVar;
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
