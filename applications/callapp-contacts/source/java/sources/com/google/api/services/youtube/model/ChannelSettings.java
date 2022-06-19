package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ChannelSettings.class */
public final class ChannelSettings extends GenericJson {
    @AbstractC15247q
    private String country;
    @AbstractC15247q
    private String defaultLanguage;
    @AbstractC15247q
    private String defaultTab;
    @AbstractC15247q
    private String description;
    @AbstractC15247q
    private String featuredChannelsTitle;
    @AbstractC15247q
    private List<String> featuredChannelsUrls;
    @AbstractC15247q
    private String keywords;
    @AbstractC15247q
    private Boolean moderateComments;
    @AbstractC15247q
    private String profileColor;
    @AbstractC15247q
    private Boolean showBrowseView;
    @AbstractC15247q
    private Boolean showRelatedChannels;
    @AbstractC15247q
    private String title;
    @AbstractC15247q
    private String trackingAnalyticsAccountId;
    @AbstractC15247q
    private String unsubscribedTrailer;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ChannelSettings clone() {
        return (ChannelSettings) super.clone();
    }

    public final String getCountry() {
        return this.country;
    }

    public final String getDefaultLanguage() {
        return this.defaultLanguage;
    }

    public final String getDefaultTab() {
        return this.defaultTab;
    }

    public final String getDescription() {
        return this.description;
    }

    public final String getFeaturedChannelsTitle() {
        return this.featuredChannelsTitle;
    }

    public final List<String> getFeaturedChannelsUrls() {
        return this.featuredChannelsUrls;
    }

    public final String getKeywords() {
        return this.keywords;
    }

    public final Boolean getModerateComments() {
        return this.moderateComments;
    }

    public final String getProfileColor() {
        return this.profileColor;
    }

    public final Boolean getShowBrowseView() {
        return this.showBrowseView;
    }

    public final Boolean getShowRelatedChannels() {
        return this.showRelatedChannels;
    }

    public final String getTitle() {
        return this.title;
    }

    public final String getTrackingAnalyticsAccountId() {
        return this.trackingAnalyticsAccountId;
    }

    public final String getUnsubscribedTrailer() {
        return this.unsubscribedTrailer;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ChannelSettings set(String str, Object obj) {
        return (ChannelSettings) super.set(str, obj);
    }

    public final ChannelSettings setCountry(String str) {
        this.country = str;
        return this;
    }

    public final ChannelSettings setDefaultLanguage(String str) {
        this.defaultLanguage = str;
        return this;
    }

    public final ChannelSettings setDefaultTab(String str) {
        this.defaultTab = str;
        return this;
    }

    public final ChannelSettings setDescription(String str) {
        this.description = str;
        return this;
    }

    public final ChannelSettings setFeaturedChannelsTitle(String str) {
        this.featuredChannelsTitle = str;
        return this;
    }

    public final ChannelSettings setFeaturedChannelsUrls(List<String> list) {
        this.featuredChannelsUrls = list;
        return this;
    }

    public final ChannelSettings setKeywords(String str) {
        this.keywords = str;
        return this;
    }

    public final ChannelSettings setModerateComments(Boolean bool) {
        this.moderateComments = bool;
        return this;
    }

    public final ChannelSettings setProfileColor(String str) {
        this.profileColor = str;
        return this;
    }

    public final ChannelSettings setShowBrowseView(Boolean bool) {
        this.showBrowseView = bool;
        return this;
    }

    public final ChannelSettings setShowRelatedChannels(Boolean bool) {
        this.showRelatedChannels = bool;
        return this;
    }

    public final ChannelSettings setTitle(String str) {
        this.title = str;
        return this;
    }

    public final ChannelSettings setTrackingAnalyticsAccountId(String str) {
        this.trackingAnalyticsAccountId = str;
        return this;
    }

    public final ChannelSettings setUnsubscribedTrailer(String str) {
        this.unsubscribedTrailer = str;
        return this;
    }
}
