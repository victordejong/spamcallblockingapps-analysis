package com.appnext.core;

import android.text.TextUtils;
import com.amazon.device.ads.DtbConstants;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes-dex2jar.jar:com/appnext/core/AppnextAd.class */
public class AppnextAd extends C0554h {
    private String androidPackage;
    private String appSize;
    private String bId;
    private String buttonText;
    private String campaignGoal;
    private String campaignId;
    private String campaignType;
    private String categories;

    /* renamed from: cb */
    private String f1713cb;
    private String country;
    private String cpt_list;
    private String desc;
    private String ecpm;
    private String gdpr;
    private String idx;
    private String market_url;
    private String pbaBId;
    private String pbaZId;
    private String pixelImp;
    private String revenueRate;
    private String revenueType;
    private String specificCategories;
    private String storeDownloads;
    private String storeRating;
    private String supportedVersion;
    private String title;
    private String urlApp;
    private String urlImg;
    private String urlImgWide;
    private String urlVideo;
    private String urlVideo30Sec;
    private String urlVideo30SecHigh;
    private String urlVideoHigh;
    private String webview;
    private String zId;

    public AppnextAd() {
        this.desc = "";
        this.title = "";
        this.urlImg = "";
        this.urlImgWide = "";
        this.urlApp = "";
        this.bId = "";
        this.campaignId = "";
        this.f1713cb = "";
        this.zId = "";
        this.androidPackage = "";
        this.pbaZId = "";
        this.pbaBId = "";
        this.revenueType = "";
        this.revenueRate = "";
        this.categories = "";
        this.specificCategories = "";
        this.idx = "";
        this.pixelImp = "";
        this.country = "";
        this.campaignType = "";
        this.supportedVersion = "";
        this.storeRating = "";
        this.storeDownloads = "";
        this.appSize = "";
        this.urlVideo = "";
        this.urlVideoHigh = "";
        this.urlVideo30Sec = "";
        this.urlVideo30SecHigh = "";
        this.campaignGoal = "";
        this.buttonText = "";
        this.ecpm = "";
        this.cpt_list = "";
        this.webview = DtbConstants.NETWORK_TYPE_UNKNOWN;
        this.gdpr = DtbConstants.NETWORK_TYPE_UNKNOWN;
    }

    public AppnextAd(AppnextAd appnextAd) {
        this.desc = "";
        this.title = "";
        this.urlImg = "";
        this.urlImgWide = "";
        this.urlApp = "";
        this.bId = "";
        this.campaignId = "";
        this.f1713cb = "";
        this.zId = "";
        this.androidPackage = "";
        this.pbaZId = "";
        this.pbaBId = "";
        this.revenueType = "";
        this.revenueRate = "";
        this.categories = "";
        this.specificCategories = "";
        this.idx = "";
        this.pixelImp = "";
        this.country = "";
        this.campaignType = "";
        this.supportedVersion = "";
        this.storeRating = "";
        this.storeDownloads = "";
        this.appSize = "";
        this.urlVideo = "";
        this.urlVideoHigh = "";
        this.urlVideo30Sec = "";
        this.urlVideo30SecHigh = "";
        this.campaignGoal = "";
        this.buttonText = "";
        this.ecpm = "";
        this.cpt_list = "";
        this.webview = DtbConstants.NETWORK_TYPE_UNKNOWN;
        this.gdpr = DtbConstants.NETWORK_TYPE_UNKNOWN;
        if (appnextAd == null) {
            return;
        }
        this.desc = appnextAd.desc;
        this.title = appnextAd.title;
        this.urlImg = appnextAd.urlImg;
        this.urlImgWide = appnextAd.urlImgWide;
        this.urlApp = appnextAd.urlApp;
        this.bId = appnextAd.bId;
        this.campaignId = appnextAd.campaignId;
        this.f1713cb = appnextAd.f1713cb;
        this.zId = appnextAd.zId;
        this.androidPackage = appnextAd.androidPackage;
        this.pbaZId = appnextAd.pbaZId;
        this.pbaBId = appnextAd.pbaBId;
        this.revenueType = appnextAd.revenueType;
        this.revenueRate = appnextAd.revenueRate;
        this.categories = appnextAd.categories;
        this.specificCategories = appnextAd.specificCategories;
        this.idx = appnextAd.idx;
        this.pixelImp = appnextAd.pixelImp;
        this.country = appnextAd.country;
        this.campaignType = appnextAd.campaignType;
        this.supportedVersion = appnextAd.supportedVersion;
        this.storeRating = appnextAd.storeRating;
        this.storeDownloads = appnextAd.storeDownloads;
        this.appSize = appnextAd.appSize;
        this.urlVideo = appnextAd.urlVideo;
        this.urlVideoHigh = appnextAd.urlVideoHigh;
        this.urlVideo30Sec = appnextAd.urlVideo30Sec;
        this.urlVideo30SecHigh = appnextAd.urlVideo30SecHigh;
        this.campaignGoal = appnextAd.campaignGoal;
        this.buttonText = appnextAd.buttonText;
        this.ecpm = appnextAd.ecpm;
        this.cpt_list = appnextAd.cpt_list;
        this.webview = appnextAd.webview;
        this.gdpr = appnextAd.gdpr;
        this.market_url = appnextAd.market_url;
        setAdID(appnextAd.getAdID());
        setSession(appnextAd.getSession());
        setPlacementID(appnextAd.getPlacementID());
        setAdJSON(appnextAd.getAdJSON());
    }

    public String getAdDescription() {
        return this.desc;
    }

    public String getAdPackage() {
        return this.androidPackage;
    }

    public String getAdTitle() {
        return this.title;
    }

    public String getAppSize() {
        return this.appSize;
    }

    public String getAppURL() {
        return this.urlApp;
    }

    public String getBannerID() {
        return this.bId;
    }

    public String getBpub() {
        return this.pbaBId;
    }

    public String getButtonText() {
        return this.buttonText;
    }

    public String getCampaignGoal() {
        return this.campaignGoal;
    }

    public String getCampaignID() {
        return this.campaignId;
    }

    public String getCampaignType() {
        return this.campaignType;
    }

    public String getCategories() {
        return this.categories;
    }

    public String getCb() {
        return this.f1713cb;
    }

    public String getCountry() {
        return this.country;
    }

    public String getCptList() {
        return this.cpt_list;
    }

    public AppnextAdCreativeType getCreativeType() {
        return (!TextUtils.isEmpty(getVideoUrl()) || !TextUtils.isEmpty(getVideoUrlHigh()) || !TextUtils.isEmpty(getVideoUrl30Sec()) || !TextUtils.isEmpty(getVideoUrlHigh30Sec())) ? AppnextAdCreativeType.VIDEO : AppnextAdCreativeType.STATIC;
    }

    public float getECPM() {
        return Float.parseFloat(getEcpm());
    }

    public String getEcpm() {
        return this.ecpm;
    }

    public String getEpub() {
        return this.pbaZId;
    }

    public String getIdx() {
        return this.idx;
    }

    public String getImageURL() {
        return this.urlImg;
    }

    public String getImpressionURL() {
        return this.pixelImp;
    }

    public String getMarketUrl() {
        return this.market_url;
    }

    public float getPPR() {
        return getECPM() / 1000.0f;
    }

    public String getRevenueRate() {
        return this.revenueRate;
    }

    public String getRevenueType() {
        return this.revenueType;
    }

    public String getSpecificCategories() {
        return this.specificCategories;
    }

    public String getStoreDownloads() {
        return this.storeDownloads;
    }

    public String getStoreRating() {
        return this.storeRating;
    }

    public String getSupportedVersion() {
        return this.supportedVersion;
    }

    public String getVideoUrl() {
        return this.urlVideo;
    }

    public String getVideoUrl30Sec() {
        return this.urlVideo30Sec;
    }

    public String getVideoUrlHigh() {
        return this.urlVideoHigh;
    }

    public String getVideoUrlHigh30Sec() {
        return this.urlVideo30SecHigh;
    }

    public String getWebview() {
        return this.webview;
    }

    public String getWideImageURL() {
        return this.urlImgWide;
    }

    public String getZoneID() {
        return this.zId;
    }

    public boolean isGdpr() {
        return !TextUtils.isEmpty(this.gdpr) && !this.gdpr.equals(DtbConstants.NETWORK_TYPE_UNKNOWN);
    }

    public void setAdDesc(String str) {
        this.desc = str;
    }

    public void setAdPackage(String str) {
        this.androidPackage = str;
    }

    public void setAdTitle(String str) {
        this.title = str;
    }

    public void setAppSize(String str) {
        this.appSize = str;
    }

    public void setAppURL(String str) {
        this.urlApp = str;
    }

    public void setBannerID(String str) {
        this.bId = str;
    }

    public void setBpub(String str) {
        this.pbaBId = str;
    }

    public void setButtonText(String str) {
        this.buttonText = str;
    }

    public void setCampaignGoal(String str) {
        this.campaignGoal = str;
    }

    public void setCampaignID(String str) {
        this.campaignId = str;
    }

    public void setCampaignType(String str) {
        this.campaignType = str;
    }

    public void setCategories(String str) {
        this.categories = str;
    }

    public void setCb(String str) {
        this.f1713cb = str;
    }

    public void setCounty(String str) {
        this.country = str;
    }

    public void setCptList(String str) {
        this.cpt_list = str;
    }

    public void setEcpm(String str) {
        this.ecpm = str;
    }

    public void setEpub(String str) {
        this.pbaZId = str;
    }

    public void setGdpr(String str) {
        this.gdpr = str;
    }

    public void setIdx(String str) {
        this.idx = str;
    }

    public void setImageURL(String str) {
        this.urlImg = str;
    }

    public void setImpressionURL(String str) {
        this.pixelImp = str;
    }

    public void setMarketUrl(String str) {
        this.market_url = str;
    }

    public void setRevenueRate(String str) {
        this.revenueRate = str;
    }

    public void setRevenueType(String str) {
        this.revenueType = str;
    }

    public void setSpecificCategories(String str) {
        this.specificCategories = str;
    }

    public void setStoreDownloads(String str) {
        this.storeDownloads = str;
    }

    public void setStoreRating(String str) {
        this.storeRating = str;
    }

    public void setSupportedVersion(String str) {
        this.supportedVersion = str;
    }

    public void setVideoUrl(String str) {
        this.urlVideo = str;
    }

    public void setVideoUrl30Sec(String str) {
        this.urlVideo30Sec = str;
    }

    public void setVideoUrlHigh(String str) {
        this.urlVideoHigh = str;
    }

    public void setVideoUrlHigh30Sec(String str) {
        this.urlVideo30SecHigh = str;
    }

    public void setWebview(String str) {
        this.webview = str;
    }

    public void setWideImageURL(String str) {
        this.urlImgWide = str;
    }

    public void setZoneID(String str) {
        this.zId = str;
    }

    public String toString() {
        return C22128a.m8626f(new StringBuilder("AppnextAd{androidPackage='"), this.androidPackage, '\'', '}');
    }
}
