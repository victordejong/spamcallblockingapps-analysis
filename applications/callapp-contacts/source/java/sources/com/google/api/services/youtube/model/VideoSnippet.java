package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoSnippet.class */
public final class VideoSnippet extends GenericJson {
    @AbstractC15247q
    private String categoryId;
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private String channelTitle;
    @AbstractC15247q
    private String defaultAudioLanguage;
    @AbstractC15247q
    private String defaultLanguage;
    @AbstractC15247q
    private String description;
    @AbstractC15247q
    private String liveBroadcastContent;
    @AbstractC15247q
    private VideoLocalization localized;
    @AbstractC15247q
    private C15237l publishedAt;
    @AbstractC15247q
    private List<String> tags;
    @AbstractC15247q
    private ThumbnailDetails thumbnails;
    @AbstractC15247q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final VideoSnippet clone() {
        return (VideoSnippet) super.clone();
    }

    public final String getCategoryId() {
        return this.categoryId;
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getChannelTitle() {
        return this.channelTitle;
    }

    public final String getDefaultAudioLanguage() {
        return this.defaultAudioLanguage;
    }

    public final String getDefaultLanguage() {
        return this.defaultLanguage;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getLiveBroadcastContent() {
        return this.liveBroadcastContent;
    }

    public final VideoLocalization getLocalized() {
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
    public final VideoSnippet set(String str, Object obj) {
        return (VideoSnippet) super.set(str, obj);
    }

    public final VideoSnippet setCategoryId(String str) {
        this.categoryId = str;
        return this;
    }

    public final VideoSnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final VideoSnippet setChannelTitle(String str) {
        this.channelTitle = str;
        return this;
    }

    public final VideoSnippet setDefaultAudioLanguage(String str) {
        this.defaultAudioLanguage = str;
        return this;
    }

    public final VideoSnippet setDefaultLanguage(String str) {
        this.defaultLanguage = str;
        return this;
    }

    public final VideoSnippet setDescription(String str) {
        this.description = str;
        return this;
    }

    public final VideoSnippet setLiveBroadcastContent(String str) {
        this.liveBroadcastContent = str;
        return this;
    }

    public final VideoSnippet setLocalized(VideoLocalization videoLocalization) {
        this.localized = videoLocalization;
        return this;
    }

    public final VideoSnippet setPublishedAt(C15237l c15237l) {
        this.publishedAt = c15237l;
        return this;
    }

    public final VideoSnippet setTags(List<String> list) {
        this.tags = list;
        return this;
    }

    public final VideoSnippet setThumbnails(ThumbnailDetails thumbnailDetails) {
        this.thumbnails = thumbnailDetails;
        return this;
    }

    public final VideoSnippet setTitle(String str) {
        this.title = str;
        return this;
    }
}
