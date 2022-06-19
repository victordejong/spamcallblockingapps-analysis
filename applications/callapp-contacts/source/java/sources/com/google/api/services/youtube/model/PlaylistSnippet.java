package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/PlaylistSnippet.class */
public final class PlaylistSnippet extends GenericJson {
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private String channelTitle;
    @AbstractC15247q
    private String defaultLanguage;
    @AbstractC15247q
    private String description;
    @AbstractC15247q
    private PlaylistLocalization localized;
    @AbstractC15247q
    private C15237l publishedAt;
    @AbstractC15247q
    private List<String> tags;
    @AbstractC15247q
    private ThumbnailDetails thumbnails;
    @AbstractC15247q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final PlaylistSnippet clone() {
        return (PlaylistSnippet) super.clone();
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getChannelTitle() {
        return this.channelTitle;
    }

    public final String getDefaultLanguage() {
        return this.defaultLanguage;
    }

    public final String getDescription() {
        return this.description;
    }

    public final PlaylistLocalization getLocalized() {
        return this.localized;
    }

    public final C15237l getPublishedAt() {
        return this.publishedAt;
    }

    public final List<String> getTags() {
        return this.tags;
    }

    public final ThumbnailDetails getThumbnails() {
        return this.thumbnails;
    }

    public final String getTitle() {
        return this.title;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final PlaylistSnippet set(String str, Object obj) {
        return (PlaylistSnippet) super.set(str, obj);
    }

    public final PlaylistSnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final PlaylistSnippet setChannelTitle(String str) {
        this.channelTitle = str;
        return this;
    }

    public final PlaylistSnippet setDefaultLanguage(String str) {
        this.defaultLanguage = str;
        return this;
    }

    public final PlaylistSnippet setDescription(String str) {
        this.description = str;
        return this;
    }

    public final PlaylistSnippet setLocalized(PlaylistLocalization playlistLocalization) {
        this.localized = playlistLocalization;
        return this;
    }

    public final PlaylistSnippet setPublishedAt(C15237l c15237l) {
        this.publishedAt = c15237l;
        return this;
    }

    public final PlaylistSnippet setTags(List<String> list) {
        this.tags = list;
        return this;
    }

    public final PlaylistSnippet setThumbnails(ThumbnailDetails thumbnailDetails) {
        this.thumbnails = thumbnailDetails;
        return this;
    }

    public final PlaylistSnippet setTitle(String str) {
        this.title = str;
        return this;
    }
}
