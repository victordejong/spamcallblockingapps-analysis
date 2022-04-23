package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/VideoContentDetails.class */
public final class VideoContentDetails extends GenericJson {
    @q
    private String caption;
    @q
    private ContentRating contentRating;
    @q
    private AccessPolicy countryRestriction;
    @q
    private String definition;
    @q
    private String dimension;
    @q
    private String duration;
    @q
    private Boolean hasCustomThumbnail;
    @q
    private Boolean licensedContent;
    @q
    private String projection;
    @q
    private VideoContentDetailsRegionRestriction regionRestriction;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final VideoContentDetails clone() {
        return (VideoContentDetails) super.clone();
    }

    public final String getCaption() {
        return this.caption;
    }

    public final ContentRating getContentRating() {
        return this.contentRating;
    }

    public final AccessPolicy getCountryRestriction() {
        return this.countryRestriction;
    }

    public final String getDefinition() {
        return this.definition;
    }

    public final String getDimension() {
        return this.dimension;
    }

    public final String getDuration() {
        return this.duration;
    }

    public final Boolean getHasCustomThumbnail() {
        return this.hasCustomThumbnail;
    }

    public final Boolean getLicensedContent() {
        return this.licensedContent;
    }

    public final String getProjection() {
        return this.projection;
    }

    public final VideoContentDetailsRegionRestriction getRegionRestriction() {
        return this.regionRestriction;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final VideoContentDetails set(String str, Object obj) {
        return (VideoContentDetails) super.set(str, obj);
    }

    public final VideoContentDetails setCaption(String str) {
        this.caption = str;
        return this;
    }

    public final VideoContentDetails setContentRating(ContentRating contentRating) {
        this.contentRating = contentRating;
        return this;
    }

    public final VideoContentDetails setCountryRestriction(AccessPolicy accessPolicy) {
        this.countryRestriction = accessPolicy;
        return this;
    }

    public final VideoContentDetails setDefinition(String str) {
        this.definition = str;
        return this;
    }

    public final VideoContentDetails setDimension(String str) {
        this.dimension = str;
        return this;
    }

    public final VideoContentDetails setDuration(String str) {
        this.duration = str;
        return this;
    }

    public final VideoContentDetails setHasCustomThumbnail(Boolean bool) {
        this.hasCustomThumbnail = bool;
        return this;
    }

    public final VideoContentDetails setLicensedContent(Boolean bool) {
        this.licensedContent = bool;
        return this;
    }

    public final VideoContentDetails setProjection(String str) {
        this.projection = str;
        return this;
    }

    public final VideoContentDetails setRegionRestriction(VideoContentDetailsRegionRestriction videoContentDetailsRegionRestriction) {
        this.regionRestriction = videoContentDetailsRegionRestriction;
        return this;
    }
}
