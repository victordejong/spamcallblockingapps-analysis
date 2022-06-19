package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelSectionSnippet.class */
public final class ChannelSectionSnippet extends GenericJson {
    @AbstractC15247q
    private String channelId;
    @AbstractC15247q
    private String defaultLanguage;
    @AbstractC15247q
    private ChannelSectionLocalization localized;
    @AbstractC15247q
    private Long position;
    @AbstractC15247q
    private String style;
    @AbstractC15247q
    private String title;
    @AbstractC15247q
    private String type;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ChannelSectionSnippet clone() {
        return (ChannelSectionSnippet) super.clone();
    }

    public final String getChannelId() {
        return this.channelId;
    }

    public final String getDefaultLanguage() {
        return this.defaultLanguage;
    }

    public final ChannelSectionLocalization getLocalized() {
        return this.localized;
    }

    public final Long getPosition() {
        return this.position;
    }

    public final String getStyle() {
        return this.style;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getType() {
        return this.type;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ChannelSectionSnippet set(String str, Object obj) {
        return (ChannelSectionSnippet) super.set(str, obj);
    }

    public final ChannelSectionSnippet setChannelId(String str) {
        this.channelId = str;
        return this;
    }

    public final ChannelSectionSnippet setDefaultLanguage(String str) {
        this.defaultLanguage = str;
        return this;
    }

    public final ChannelSectionSnippet setLocalized(ChannelSectionLocalization channelSectionLocalization) {
        this.localized = channelSectionLocalization;
        return this;
    }

    public final ChannelSectionSnippet setPosition(Long l) {
        this.position = l;
        return this;
    }

    public final ChannelSectionSnippet setStyle(String str) {
        this.style = str;
        return this;
    }

    public final ChannelSectionSnippet setTitle(String str) {
        this.title = str;
        return this;
    }

    public final ChannelSectionSnippet setType(String str) {
        this.type = str;
        return this;
    }
}
