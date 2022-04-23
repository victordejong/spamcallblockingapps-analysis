package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/Channel.class */
public final class Channel extends GenericJson {
    @q
    private ChannelAuditDetails auditDetails;
    @q
    private ChannelBrandingSettings brandingSettings;
    @q
    private ChannelContentDetails contentDetails;
    @q
    private ChannelContentOwnerDetails contentOwnerDetails;
    @q
    private ChannelConversionPings conversionPings;
    @q
    private String etag;
    @q
    private String id;
    @q
    private InvideoPromotion invideoPromotion;
    @q
    private String kind;
    @q
    private Map<String, ChannelLocalization> localizations;
    @q
    private ChannelSnippet snippet;
    @q
    private ChannelStatistics statistics;
    @q
    private ChannelStatus status;
    @q
    private ChannelTopicDetails topicDetails;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
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
        return this.id;
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

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
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
        this.id = str;
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
