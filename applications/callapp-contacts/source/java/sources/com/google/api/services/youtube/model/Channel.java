package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Channel.class */
public final class Channel extends GenericJson {
    @AbstractC15247q
    private ChannelAuditDetails auditDetails;
    @AbstractC15247q
    private ChannelBrandingSettings brandingSettings;
    @AbstractC15247q
    private ChannelContentDetails contentDetails;
    @AbstractC15247q
    private ChannelContentOwnerDetails contentOwnerDetails;
    @AbstractC15247q
    private ChannelConversionPings conversionPings;
    @AbstractC15247q
    private String etag;
    @AbstractC15247q

    /* renamed from: id */
    private String f55571id;
    @AbstractC15247q
    private InvideoPromotion invideoPromotion;
    @AbstractC15247q
    private String kind;
    @AbstractC15247q
    private Map<String, ChannelLocalization> localizations;
    @AbstractC15247q
    private ChannelSnippet snippet;
    @AbstractC15247q
    private ChannelStatistics statistics;
    @AbstractC15247q
    private ChannelStatus status;
    @AbstractC15247q
    private ChannelTopicDetails topicDetails;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final Channel clone() {
        return (Channel) super.clone();
    }

    public final ChannelAuditDetails getAuditDetails() {
        return this.auditDetails;
    }

    public final ChannelBrandingSettings getBrandingSettings() {
        return this.brandingSettings;
    }

    public final ChannelContentDetails getContentDetails() {
        return this.contentDetails;
    }

    public final ChannelContentOwnerDetails getContentOwnerDetails() {
        return this.contentOwnerDetails;
    }

    public final ChannelConversionPings getConversionPings() {
        return this.conversionPings;
    }

    public final String getEtag() {
        return this.etag;
    }

    public final String getId() {
        return this.f55571id;
    }

    public final InvideoPromotion getInvideoPromotion() {
        return this.invideoPromotion;
    }

    public final String getKind() {
        return this.kind;
    }

    public final Map<String, ChannelLocalization> getLocalizations() {
        return this.localizations;
    }

    public final ChannelSnippet getSnippet() {
        return this.snippet;
    }

    public final ChannelStatistics getStatistics() {
        return this.statistics;
    }

    public final ChannelStatus getStatus() {
        return this.status;
    }

    public final ChannelTopicDetails getTopicDetails() {
        return this.topicDetails;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final Channel set(String str, Object obj) {
        return (Channel) super.set(str, obj);
    }

    public final Channel setAuditDetails(ChannelAuditDetails channelAuditDetails) {
        this.auditDetails = channelAuditDetails;
        return this;
    }

    public final Channel setBrandingSettings(ChannelBrandingSettings channelBrandingSettings) {
        this.brandingSettings = channelBrandingSettings;
        return this;
    }

    public final Channel setContentDetails(ChannelContentDetails channelContentDetails) {
        this.contentDetails = channelContentDetails;
        return this;
    }

    public final Channel setContentOwnerDetails(ChannelContentOwnerDetails channelContentOwnerDetails) {
        this.contentOwnerDetails = channelContentOwnerDetails;
        return this;
    }

    public final Channel setConversionPings(ChannelConversionPings channelConversionPings) {
        this.conversionPings = channelConversionPings;
        return this;
    }

    public final Channel setEtag(String str) {
        this.etag = str;
        return this;
    }

    public final Channel setId(String str) {
        this.f55571id = str;
        return this;
    }

    public final Channel setInvideoPromotion(InvideoPromotion invideoPromotion) {
        this.invideoPromotion = invideoPromotion;
        return this;
    }

    public final Channel setKind(String str) {
        this.kind = str;
        return this;
    }

    public final Channel setLocalizations(Map<String, ChannelLocalization> map) {
        this.localizations = map;
        return this;
    }

    public final Channel setSnippet(ChannelSnippet channelSnippet) {
        this.snippet = channelSnippet;
        return this;
    }

    public final Channel setStatistics(ChannelStatistics channelStatistics) {
        this.statistics = channelStatistics;
        return this;
    }

    public final Channel setStatus(ChannelStatus channelStatus) {
        this.status = channelStatus;
        return this;
    }

    public final Channel setTopicDetails(ChannelTopicDetails channelTopicDetails) {
        this.topicDetails = channelTopicDetails;
        return this;
    }
}
