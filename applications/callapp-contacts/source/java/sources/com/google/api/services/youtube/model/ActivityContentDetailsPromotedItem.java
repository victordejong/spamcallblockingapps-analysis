package com.google.api.services.youtube.model;

import com.google.api.client.json.GenericJson;
import com.google.api.client.p379a.AbstractC15247q;
import java.util.List;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ActivityContentDetailsPromotedItem.class */
public final class ActivityContentDetailsPromotedItem extends GenericJson {
    @AbstractC15247q
    private String adTag;
    @AbstractC15247q
    private String clickTrackingUrl;
    @AbstractC15247q
    private String creativeViewUrl;
    @AbstractC15247q
    private String ctaType;
    @AbstractC15247q
    private String customCtaButtonText;
    @AbstractC15247q
    private String descriptionText;
    @AbstractC15247q
    private String destinationUrl;
    @AbstractC15247q
    private List<String> forecastingUrl;
    @AbstractC15247q
    private List<String> impressionUrl;
    @AbstractC15247q
    private String videoId;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n, java.util.AbstractMap
    public final ActivityContentDetailsPromotedItem clone() {
        return (ActivityContentDetailsPromotedItem) super.clone();
    }

    public final String getAdTag() {
        return this.adTag;
    }

    public final String getClickTrackingUrl() {
        return this.clickTrackingUrl;
    }

    public final String getCreativeViewUrl() {
        return this.creativeViewUrl;
    }

    public final String getCtaType() {
        return this.ctaType;
    }

    public final String getCustomCtaButtonText() {
        return this.customCtaButtonText;
    }

    public final String getDescriptionText() {
        return this.descriptionText;
    }

    public final String getDestinationUrl() {
        return this.destinationUrl;
    }

    public final List<String> getForecastingUrl() {
        return this.forecastingUrl;
    }

    public final List<String> getImpressionUrl() {
        return this.impressionUrl;
    }

    public final String getVideoId() {
        return this.videoId;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.p379a.C15241n
    public final ActivityContentDetailsPromotedItem set(String str, Object obj) {
        return (ActivityContentDetailsPromotedItem) super.set(str, obj);
    }

    public final ActivityContentDetailsPromotedItem setAdTag(String str) {
        this.adTag = str;
        return this;
    }

    public final ActivityContentDetailsPromotedItem setClickTrackingUrl(String str) {
        this.clickTrackingUrl = str;
        return this;
    }

    public final ActivityContentDetailsPromotedItem setCreativeViewUrl(String str) {
        this.creativeViewUrl = str;
        return this;
    }

    public final ActivityContentDetailsPromotedItem setCtaType(String str) {
        this.ctaType = str;
        return this;
    }

    public final ActivityContentDetailsPromotedItem setCustomCtaButtonText(String str) {
        this.customCtaButtonText = str;
        return this;
    }

    public final ActivityContentDetailsPromotedItem setDescriptionText(String str) {
        this.descriptionText = str;
        return this;
    }

    public final ActivityContentDetailsPromotedItem setDestinationUrl(String str) {
        this.destinationUrl = str;
        return this;
    }

    public final ActivityContentDetailsPromotedItem setForecastingUrl(List<String> list) {
        this.forecastingUrl = list;
        return this;
    }

    public final ActivityContentDetailsPromotedItem setImpressionUrl(List<String> list) {
        this.impressionUrl = list;
        return this;
    }

    public final ActivityContentDetailsPromotedItem setVideoId(String str) {
        this.videoId = str;
        return this;
    }
}
