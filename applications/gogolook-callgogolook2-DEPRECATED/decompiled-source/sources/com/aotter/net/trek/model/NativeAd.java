package com.aotter.net.trek.model;

import androidx.core.app.Person;
import com.aotter.net.gson.annotations.SerializedName;
import com.aotter.net.trek.util.CollectionUtils;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/NativeAd.class */
public class NativeAd implements Serializable {
    @SerializedName("advertiserName")
    public String adAdvertiserName;
    @SerializedName("img_icon")
    public String adImg_icon;
    @SerializedName("img_icon_hd")
    public String adImg_icon_hd;
    @SerializedName("img_main")
    public String adImg_main;
    @SerializedName("setId")
    public String adSetId;
    @SerializedName("sponser")
    public String adSponsor;
    @SerializedName("text")
    public String adText;
    @SerializedName("title")
    public String adTitle;
    @SerializedName(AdFetch.AD_ADTYPE_KEY)
    public String adType;
    @SerializedName("uuid")
    public String adUUID;
    @SerializedName("url")
    public String adUrl;
    @SerializedName("url_imp")
    public String adurl_imp;
    @SerializedName("callToAction")
    public String callToAction;
    @SerializedName("categories")
    public List<String> categories;
    @SerializedName("imgs")
    public List<ImageSrc> imgs;
    @SerializedName("impSetting")
    public ImpSetting impSetting;
    @SerializedName("interactSrc")
    public InteractSrc interactSrc;
    @SerializedName("isOutAppBrowser")
    public boolean isOutAppBrowser;
    @SerializedName("src")
    public SrcBean src;
    @SerializedName("suprAdSrc")
    public SuprAdSrc suprAdSrc;
    @SerializedName("third_party_clc")
    public String[] third_party_clc;
    @SerializedName("third_party_imp")
    public String[] third_party_imp;
    @SerializedName("unitInstanceId")
    public String unitInstanceId;
    @SerializedName("url_original")
    public String urlOriginal;
    @SerializedName("url_pop")
    public String urlPop;
    @SerializedName("url_session")
    public String urlSession;
    @SerializedName("validUntil")
    public Long validUntil;

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/NativeAd$ImpSetting.class */
    public class ImpSetting implements Serializable {
        @SerializedName("impDetectPercent")
        public double impDetectPercent;
        @SerializedName("impRefreshMillis")
        public Long impRefreshMillis;

        public double getImpDetectPercent() {
            return this.impDetectPercent;
        }

        public Long getImpRefreshMillis() {
            return this.impRefreshMillis;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/NativeAd$InteractSrc.class */
    public class InteractSrc implements Serializable {
        @SerializedName("bg_placeholder")
        public String bgPlaceholder;
        @SerializedName("height")
        public int height;
        @SerializedName("urlInteractive")
        public String urlInteractive;
        @SerializedName("urlInteractivePopup")
        public String urlInteractivePopup;
        @SerializedName("urlInteractivePopups")
        public List<UrlInteractivePopupsBean> urlInteractivePopups;
        @SerializedName("webViewPayload")
        public Object webViewPayload;
        @SerializedName("width")
        public int width;

        public String getBgPlaceholder() {
            return this.bgPlaceholder;
        }

        public int getHeight() {
            return this.height;
        }

        public String getUrlInteractive() {
            return this.urlInteractive;
        }

        public String getUrlInteractivePopup() {
            return this.urlInteractivePopup;
        }

        public List<UrlInteractivePopupsBean> getUrlInteractivePopups() {
            return this.urlInteractivePopups;
        }

        public Object getWebViewPayload() {
            return this.webViewPayload;
        }

        public int getWidth() {
            return this.width;
        }

        public void setBgPlaceholder(String str) {
            this.bgPlaceholder = str;
        }

        public void setHeight(int i) {
            this.height = i;
        }

        public void setUrlInteractive(String str) {
            this.urlInteractive = str;
        }

        public void setUrlInteractivePopup(String str) {
            this.urlInteractivePopup = str;
        }

        public void setUrlInteractivePopups(List<UrlInteractivePopupsBean> list) {
            this.urlInteractivePopups = list;
        }

        public void setWebViewPayload(Object obj) {
            this.webViewPayload = obj;
        }

        public void setWidth(int i) {
            this.width = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/NativeAd$SrcBean.class */
    public class SrcBean implements Serializable {
        @SerializedName("direct_download_link")
        public String directDownloadLink;
        @SerializedName("direct_link")
        public String directLink;
        @SerializedName("height")
        public int height;
        @SerializedName("videoHost")
        public String videoHost;
        @SerializedName("videoId")
        public String videoId;
        @SerializedName("width")
        public int width;

        public String getDirectDownloadLink() {
            return this.directDownloadLink;
        }

        public String getDirectLink() {
            return this.directLink;
        }

        public int getHeight() {
            return this.height;
        }

        public String getVideoHost() {
            return this.videoHost;
        }

        public String getVideoId() {
            return this.videoId;
        }

        public int getWidth() {
            return this.width;
        }

        public void setDirectDownloadLink(String str) {
            this.directDownloadLink = str;
        }

        public void setDirectLink(String str) {
            this.directLink = str;
        }

        public void setHeight(int i) {
            this.height = i;
        }

        public void setVideoHost(String str) {
            this.videoHost = str;
        }

        public void setVideoId(String str) {
            this.videoId = str;
        }

        public void setWidth(int i) {
            this.width = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/NativeAd$SuprAdSrc.class */
    public class SuprAdSrc implements Serializable {
        @SerializedName("bg_placeholder")
        public String bg_placeholder;
        @SerializedName("height")
        public int height;
        @SerializedName("isHasPopupRatio")
        public boolean isHasPopupRatio;
        @SerializedName("popupHeight")
        public int popupHeight;
        @SerializedName("popupWidth")
        public int popupWidth;
        @SerializedName("urlInteractivePopups")
        public List<UrlInteractivePopupsBean> urlInteractivePopups;
        @SerializedName("vastTag")
        public String vastTag;
        @SerializedName("widget_url")
        public String widgetUrl;
        @SerializedName("width")
        public int width;

        public String getBgPlaceholder() {
            return this.bg_placeholder;
        }

        public int getHeight() {
            return this.height;
        }

        public int getPopupHeight() {
            return this.popupHeight;
        }

        public int getPopupWidth() {
            return this.popupWidth;
        }

        public List<UrlInteractivePopupsBean> getUrlInteractivePopups() {
            return this.urlInteractivePopups;
        }

        public String getVastTag() {
            return this.vastTag;
        }

        public String getWidgetUrl() {
            return this.widgetUrl;
        }

        public int getWidth() {
            return this.width;
        }

        public boolean isHasPopupRatio() {
            return this.isHasPopupRatio;
        }

        public void setHasPopupRatio(boolean z) {
            this.isHasPopupRatio = z;
        }

        public void setHeight(int i) {
            this.height = i;
        }

        public void setPopupHeight(int i) {
            this.popupHeight = i;
        }

        public void setPopupWidth(int i) {
            this.popupWidth = i;
        }

        public void setUrlInteractivePopups(List<UrlInteractivePopupsBean> list) {
            this.urlInteractivePopups = list;
        }

        public void setVastTag(String str) {
            this.vastTag = str;
        }

        public void setWidgetUrl(String str) {
            this.widgetUrl = str;
        }

        public void setWidth(int i) {
            this.width = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/aotter/net/trek/model/NativeAd$UrlInteractivePopupsBean.class */
    public class UrlInteractivePopupsBean {
        @SerializedName(Person.KEY_KEY)
        public String key;
        @SerializedName("url")
        public String urlX;

        public String getKey() {
            return this.key;
        }

        public String getUrlX() {
            return this.urlX;
        }

        public void setKey(String str) {
            this.key = str;
        }

        public void setUrlX(String str) {
            this.urlX = str;
        }
    }

    public String getActionText() {
        return this.callToAction;
    }

    public String getAdAdvertiserName() {
        return this.adAdvertiserName;
    }

    public List<String> getAdCategories() {
        return this.categories;
    }

    public String getAdImgIcon() {
        return CollectionUtils.isNullOrEmpty(getAdImgs()) ? this.adImg_icon : getAdImgs().get("img_icon").getSrc();
    }

    public String getAdImgIconHd() {
        return CollectionUtils.isNullOrEmpty(getAdImgs()) ? this.adImg_icon_hd : getAdImgs().get("img_icon_hd").getSrc();
    }

    public String getAdImgMain() {
        return CollectionUtils.isNullOrEmpty(getAdImgs()) ? this.adImg_main : getAdImgs().get("img_main").getSrc();
    }

    @Deprecated
    public String getAdImg_icon() {
        return this.adImg_icon;
    }

    @Deprecated
    public String getAdImg_icon_hd() {
        return this.adImg_icon_hd;
    }

    @Deprecated
    public String getAdImg_main() {
        return this.adImg_main;
    }

    public Map<String, ImageSrc> getAdImgs() {
        HashMap hashMap = new HashMap();
        if (!CollectionUtils.isNullOrEmpty(this.imgs)) {
            for (ImageSrc imageSrc : this.imgs) {
                hashMap.put(imageSrc.getLabel(), imageSrc);
            }
        }
        return hashMap;
    }

    public String getAdSetId() {
        return this.adSetId;
    }

    public String getAdSponsor() {
        return this.adSponsor;
    }

    public String getAdText() {
        return this.adText;
    }

    public String getAdTitle() {
        return this.adTitle;
    }

    public String getAdTrekUrl() {
        return this.adUrl;
    }

    public String getAdType() {
        return this.adType;
    }

    public String getAdUUID() {
        return this.adUUID;
    }

    public String getAdUnitInstanceId() {
        return this.unitInstanceId;
    }

    public String getAdUrl() {
        return this.adUrl;
    }

    public String getAdurl_imp() {
        return this.adurl_imp;
    }

    public String getCallToAction() {
        return this.callToAction;
    }

    public ImpSetting getImpSetting() {
        return this.impSetting;
    }

    public InteractSrc getInteractSrc() {
        return this.interactSrc;
    }

    public SrcBean getSrc() {
        return this.src;
    }

    public SuprAdSrc getSuprAdSrc() {
        return this.suprAdSrc;
    }

    public String[] getThird_party_clc() {
        return this.third_party_clc;
    }

    public String[] getThird_party_imp() {
        return this.third_party_imp;
    }

    public String getUnitInstanceId() {
        return this.unitInstanceId;
    }

    public String getUrlOriginal() {
        return this.urlOriginal;
    }

    public String getUrlPop() {
        return this.urlPop;
    }

    public String getUrlSession() {
        return this.urlSession;
    }

    public Long getValidUntil() {
        return this.validUntil;
    }

    public boolean isOutAppBrowser() {
        return this.isOutAppBrowser;
    }
}
