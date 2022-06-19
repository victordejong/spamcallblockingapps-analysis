package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelSection.class */
public final class ChannelSection extends GenericJson {
    @AbstractC15247q
    private ChannelSectionContentDetails contentDetails;
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55572id;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private Map<String, ChannelSectionLocalization> localizations;
    @AbstractC15247q
    private ChannelSectionSnippet snippet;
    @AbstractC15247q
    private ChannelSectionTargeting targeting;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ChannelSection clone() {
        return (ChannelSection) super.clone();
    }

    public final ChannelSectionContentDetails getContentDetails() {
        return this.contentDetails;
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55572id;
    }

    public final String getKind() {
        return this.kind;
    }

    public final Map<String, ChannelSectionLocalization> getLocalizations() {
        return this.localizations;
    }

    public final ChannelSectionSnippet getSnippet() {
        return this.snippet;
    }

    public final ChannelSectionTargeting getTargeting() {
        return this.targeting;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ChannelSection set(String str, Object obj) {
        return (ChannelSection) super.set(str, obj);
    }

    public final ChannelSection setContentDetails(ChannelSectionContentDetails channelSectionContentDetails) {
        this.contentDetails = channelSectionContentDetails;
        return this;
    }

    public final ChannelSection setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final ChannelSection setId(String str) {
        this.f55572id = str;
        return this;
    }

    public final ChannelSection setKind(String str) {
        this.kind = str;
        return this;
    }

    public final ChannelSection setLocalizations(Map<String, ChannelSectionLocalization> map) {
        this.localizations = map;
        return this;
    }

    public final ChannelSection setSnippet(ChannelSectionSnippet channelSectionSnippet) {
        this.snippet = channelSectionSnippet;
        return this;
    }

    public final ChannelSection setTargeting(ChannelSectionTargeting channelSectionTargeting) {
        this.targeting = channelSectionTargeting;
        return this;
    }
}
