package net.pubnative.lite.sdk.vpaid.models.vast;

import java.util.List;
import net.pubnative.lite.sdk.vpaid.xml.Attribute;
import net.pubnative.lite.sdk.vpaid.xml.Tag;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/models/vast/Wrapper.class */
public class Wrapper implements VastAdSource {
    @Tag
    private AdSystem adSystem;
    @Attribute
    private boolean allowMultipleAds;
    @Tag
    private Creatives creatives;
    @Tag
    private Error error;
    @Tag("Extensions")
    private List<Extension> extensionList;
    @Attribute
    private boolean fallbackOnNoAd;
    @Attribute
    private boolean followAdditonalWrappers;
    @Tag("Impression")
    private List<Impression> impressionList;
    @Tag
    private VASTAdTagURI vastAdTagURI;

    @Override // net.pubnative.lite.sdk.vpaid.models.vast.VastAdSource
    public AdSystem getAdSystem() {
        return this.adSystem;
    }

    @Override // net.pubnative.lite.sdk.vpaid.models.vast.VastAdSource
    public Creatives getCreatives() {
        return this.creatives;
    }

    @Override // net.pubnative.lite.sdk.vpaid.models.vast.VastAdSource
    public Error getError() {
        return this.error;
    }

    @Override // net.pubnative.lite.sdk.vpaid.models.vast.VastAdSource
    public List<Extension> getExtensions() {
        return this.extensionList;
    }

    @Override // net.pubnative.lite.sdk.vpaid.models.vast.VastAdSource
    public List<Impression> getImpressionList() {
        return this.impressionList;
    }

    public VASTAdTagURI getVastAdTagURI() {
        return this.vastAdTagURI;
    }

    public boolean isAllowMultipleAds() {
        return this.allowMultipleAds;
    }

    public boolean isFallbackOnNoAd() {
        return this.fallbackOnNoAd;
    }

    public boolean isFollowAdditonalWrappers() {
        return this.followAdditonalWrappers;
    }
}
