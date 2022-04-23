package com.google.api.services.youtube.model;

import com.google.api.client.a.l;
import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PlaylistItemSnippet.class */
public final class PlaylistItemSnippet extends GenericJson {
    @q
    private String channelId;
    @q
    private String channelTitle;
    @q
    private String description;
    @q
    private String playlistId;
    @q
    private Long position;
    @q
    private l publishedAt;
    @q
    private ResourceId resourceId;
    @q
    private ThumbnailDetails thumbnails;
    @q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final PlaylistItemSnippet clone() {
        return (PlaylistItemSnippet) super.clone();
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

    public final String getPlaylistId() {
        return this.playlistId;
    }

    public final Long getPosition() {
        return this.position;
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
    public final PlaylistItemSnippet set(String str, Object obj) {
        return (PlaylistItemSnippet) super.set(str, obj);
    }

    public final PlaylistItemSnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final PlaylistItemSnippet setChannelTitle(String str) {
        this.channelTitle = str;
        return this;
    }

    public final PlaylistItemSnippet setDescription(String str) {
        this.description = str;
        return this;
    }

    public final PlaylistItemSnippet setPlaylistId(String str) {
        this.playlistId = str;
        return this;
    }

    public final PlaylistItemSnippet setPosition(Long l) {
        this.position = l;
        return this;
    }

    public final PlaylistItemSnippet setPublishedAt(l lVar) {
        this.publishedAt = lVar;
        return this;
    }

    public final PlaylistItemSnippet setResourceId(ResourceId resourceId) {
        this.resourceId = resourceId;
        return this;
    }

    public final PlaylistItemSnippet setThumbnails(ThumbnailDetails thumbnailDetails) {
        this.thumbnails = thumbnailDetails;
        return this;
    }

    public final PlaylistItemSnippet setTitle(String str) {
        this.title = str;
        return this;
    }
}
