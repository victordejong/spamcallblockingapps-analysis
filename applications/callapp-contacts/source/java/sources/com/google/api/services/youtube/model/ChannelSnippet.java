package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import com.google.api.client.p379a.C15237l;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelSnippet.class */
public final class ChannelSnippet extends GenericJson {
    @AbstractC15247q
    private String country;
    @AbstractC15247q
    private String customUrl;
    @AbstractC15247q
    private String defaultLanguage;
    @AbstractC15247q
    private String description;
    @AbstractC15247q
    private ChannelLocalization localized;
    @AbstractC15247q
    private C15237l publishedAt;
    @AbstractC15247q
    private ThumbnailDetails thumbnails;
    @AbstractC15247q
    private String title;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ChannelSnippet clone() {
        return (ChannelSnippet) super.clone();
    }

    public final String getCountry() {
        return this.country;
    }

    public final String getCustomUrl() {
        return this.customUrl;
    }

    public final String getDefaultLanguage() {
        return this.defaultLanguage;
    }

    public final String getDescription() {
        return this.description;
    }

    public final ChannelLocalization getLocalized() {
        return this.localized;
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
    public final ChannelSnippet set(String str, Object obj) {
        return (ChannelSnippet) super.set(str, obj);
    }

    public final ChannelSnippet setCountry(String str) {
        this.country = str;
        return this;
    }

    public final ChannelSnippet setCustomUrl(String str) {
        this.customUrl = str;
        return this;
    }

    public final ChannelSnippet setDefaultLanguage(String str) {
        this.defaultLanguage = str;
        return this;
    }

    public final ChannelSnippet setDescription(String str) {
        this.description = str;
        return this;
    }

    public final ChannelSnippet setLocalized(ChannelLocalization channelLocalization) {
        this.localized = channelLocalization;
        return this;
    }

    public final ChannelSnippet setPublishedAt(C15237l c15237l) {
        this.publishedAt = c15237l;
        return this;
    }

    public final ChannelSnippet setThumbnails(ThumbnailDetails thumbnailDetails) {
        this.thumbnails = thumbnailDetails;
        return this;
    }

    public final ChannelSnippet setTitle(String str) {
        this.title = str;
        return this;
    }
}
