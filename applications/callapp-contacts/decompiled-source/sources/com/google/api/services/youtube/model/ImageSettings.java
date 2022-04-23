package com.google.api.services.youtube.model;

import com.google.api.client.a.q;
import com.google.api.client.json.GenericJson;
/* loaded from: classes4-dex2jar.jar:com/google/api/services/youtube/model/ImageSettings.class */
public final class ImageSettings extends GenericJson {
    @q
    private LocalizedProperty backgroundImageUrl;
    @q
    private String bannerExternalUrl;
    @q
    private String bannerImageUrl;
    @q
    private String bannerMobileExtraHdImageUrl;
    @q
    private String bannerMobileHdImageUrl;
    @q
    private String bannerMobileImageUrl;
    @q
    private String bannerMobileLowImageUrl;
    @q
    private String bannerMobileMediumHdImageUrl;
    @q
    private String bannerTabletExtraHdImageUrl;
    @q
    private String bannerTabletHdImageUrl;
    @q
    private String bannerTabletImageUrl;
    @q
    private String bannerTabletLowImageUrl;
    @q
    private String bannerTvHighImageUrl;
    @q
    private String bannerTvImageUrl;
    @q
    private String bannerTvLowImageUrl;
    @q
    private String bannerTvMediumImageUrl;
    @q
    private LocalizedProperty largeBrandedBannerImageImapScript;
    @q
    private LocalizedProperty largeBrandedBannerImageUrl;
    @q
    private LocalizedProperty smallBrandedBannerImageImapScript;
    @q
    private LocalizedProperty smallBrandedBannerImageUrl;
    @q
    private String trackingImageUrl;
    @q
    private String watchIconImageUrl;

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n, java.util.AbstractMap
    public final ImageSettings clone() {
        return (ImageSettings) super.clone();
    }

    public final LocalizedProperty getBackgroundImageUrl() {
        return this.backgroundImageUrl;
    }

    public final String getBannerExternalUrl() {
        return this.bannerExternalUrl;
    }

    public final String getBannerImageUrl() {
        return this.bannerImageUrl;
    }

    public final String getBannerMobileExtraHdImageUrl() {
        return this.bannerMobileExtraHdImageUrl;
    }

    public final String getBannerMobileHdImageUrl() {
        return this.bannerMobileHdImageUrl;
    }

    public final String getBannerMobileImageUrl() {
        return this.bannerMobileImageUrl;
    }

    public final String getBannerMobileLowImageUrl() {
        return this.bannerMobileLowImageUrl;
    }

    public final String getBannerMobileMediumHdImageUrl() {
        return this.bannerMobileMediumHdImageUrl;
    }

    public final String getBannerTabletExtraHdImageUrl() {
        return this.bannerTabletExtraHdImageUrl;
    }

    public final String getBannerTabletHdImageUrl() {
        return this.bannerTabletHdImageUrl;
    }

    public final String getBannerTabletImageUrl() {
        return this.bannerTabletImageUrl;
    }

    public final String getBannerTabletLowImageUrl() {
        return this.bannerTabletLowImageUrl;
    }

    public final String getBannerTvHighImageUrl() {
        return this.bannerTvHighImageUrl;
    }

    public final String getBannerTvImageUrl() {
        return this.bannerTvImageUrl;
    }

    public final String getBannerTvLowImageUrl() {
        return this.bannerTvLowImageUrl;
    }

    public final String getBannerTvMediumImageUrl() {
        return this.bannerTvMediumImageUrl;
    }

    public final LocalizedProperty getLargeBrandedBannerImageImapScript() {
        return this.largeBrandedBannerImageImapScript;
    }

    public final LocalizedProperty getLargeBrandedBannerImageUrl() {
        return this.largeBrandedBannerImageUrl;
    }

    public final LocalizedProperty getSmallBrandedBannerImageImapScript() {
        return this.smallBrandedBannerImageImapScript;
    }

    public final LocalizedProperty getSmallBrandedBannerImageUrl() {
        return this.smallBrandedBannerImageUrl;
    }

    public final String getTrackingImageUrl() {
        return this.trackingImageUrl;
    }

    public final String getWatchIconImageUrl() {
        return this.watchIconImageUrl;
    }

    @Override // com.google.api.client.json.GenericJson, com.google.api.client.a.n
    public final ImageSettings set(String str, Object obj) {
        return (ImageSettings) super.set(str, obj);
    }

    public final ImageSettings setBackgroundImageUrl(LocalizedProperty localizedProperty) {
        this.backgroundImageUrl = localizedProperty;
        return this;
    }

    public final ImageSettings setBannerExternalUrl(String str) {
        this.bannerExternalUrl = str;
        return this;
    }

    public final ImageSettings setBannerImageUrl(String str) {
        this.bannerImageUrl = str;
        return this;
    }

    public final ImageSettings setBannerMobileExtraHdImageUrl(String str) {
        this.bannerMobileExtraHdImageUrl = str;
        return this;
    }

    public final ImageSettings setBannerMobileHdImageUrl(String str) {
        this.bannerMobileHdImageUrl = str;
        return this;
    }

    public final ImageSettings setBannerMobileImageUrl(String str) {
        this.bannerMobileImageUrl = str;
        return this;
    }

    public final ImageSettings setBannerMobileLowImageUrl(String str) {
        this.bannerMobileLowImageUrl = str;
        return this;
    }

    public final ImageSettings setBannerMobileMediumHdImageUrl(String str) {
        this.bannerMobileMediumHdImageUrl = str;
        return this;
    }

    public final ImageSettings setBannerTabletExtraHdImageUrl(String str) {
        this.bannerTabletExtraHdImageUrl = str;
        return this;
    }

    public final ImageSettings setBannerTabletHdImageUrl(String str) {
        this.bannerTabletHdImageUrl = str;
        return this;
    }

    public final ImageSettings setBannerTabletImageUrl(String str) {
        this.bannerTabletImageUrl = str;
        return this;
    }

    public final ImageSettings setBannerTabletLowImageUrl(String str) {
        this.bannerTabletLowImageUrl = str;
        return this;
    }

    public final ImageSettings setBannerTvHighImageUrl(String str) {
        this.bannerTvHighImageUrl = str;
        return this;
    }

    public final ImageSettings setBannerTvImageUrl(String str) {
        this.bannerTvImageUrl = str;
        return this;
    }

    public final ImageSettings setBannerTvLowImageUrl(String str) {
        this.bannerTvLowImageUrl = str;
        return this;
    }

    public final ImageSettings setBannerTvMediumImageUrl(String str) {
        this.bannerTvMediumImageUrl = str;
        return this;
    }

    public final ImageSettings setLargeBrandedBannerImageImapScript(LocalizedProperty localizedProperty) {
        this.largeBrandedBannerImageImapScript = localizedProperty;
        return this;
    }

    public final ImageSettings setLargeBrandedBannerImageUrl(LocalizedProperty localizedProperty) {
        this.largeBrandedBannerImageUrl = localizedProperty;
        return this;
    }

    public final ImageSettings setSmallBrandedBannerImageImapScript(LocalizedProperty localizedProperty) {
        this.smallBrandedBannerImageImapScript = localizedProperty;
        return this;
    }

    public final ImageSettings setSmallBrandedBannerImageUrl(LocalizedProperty localizedProperty) {
        this.smallBrandedBannerImageUrl = localizedProperty;
        return this;
    }

    public final ImageSettings setTrackingImageUrl(String str) {
        this.trackingImageUrl = str;
        return this;
    }

    public final ImageSettings setWatchIconImageUrl(String str) {
        this.watchIconImageUrl = str;
        return this;
    }
}
