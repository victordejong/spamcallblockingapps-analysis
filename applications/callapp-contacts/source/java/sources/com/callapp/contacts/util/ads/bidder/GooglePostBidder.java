package com.callapp.contacts.util.ads.bidder;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.CallAppRemoteConfigManager;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.AppBidder;
import com.callapp.contacts.util.ads.JSONPostBidder;
import com.callapp.contacts.util.ads.JSONPostBidderAdUnit;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.callapp.contacts.util.ads.bidder.Bidder;
import com.callapp.framework.util.CollectionUtils;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.mopub.common.DataKeys;
import com.mopub.common.MoPubReward;
import com.mopub.mobileads.AdLifecycleListener;
import com.mopub.mobileads.GooglePlayServicesAdapterConfiguration;
import com.mopub.mobileads.GooglePlayServicesInterstitial;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.GooglePlayServicesAdRenderer;
import com.mopub.nativeads.GooglePlayServicesNativeAd;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/GooglePostBidder.class */
public class GooglePostBidder implements PostBidder {
    private AdUtils.AdEvents adEvents;
    private float adWidth;
    private AppBidder.BidListener bidListener;
    private Context context;
    private boolean isDestroyed;
    private JSONPostBidder jsonPostBidder;
    private JSONPostBidderAdUnit jsonPostBidderAdUnit;
    private MoPubView.MoPubAdSize moPubAdSize;
    private MoPubInterstitial moPubInterstitial;
    private MoPubView moPubView;
    private NativeAd nativeAd;
    private double priceToBeat;
    private PublisherAdView publisherAdView;
    private String requestId;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/bidder/GooglePostBidder$GooglePostBidderListener.class */
    public static class GooglePostBidderListener implements AdLifecycleListener.LoadListener {
        private final GooglePostBidder googlePostBidder;
        private GooglePlayServicesNativeAd nativeAd;

        public GooglePostBidderListener(GooglePostBidder googlePostBidder) {
            this.googlePostBidder = googlePostBidder;
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
        public void onAdLoadFailed(MoPubErrorCode moPubErrorCode) {
            this.googlePostBidder.bidListener.mo27236a(moPubErrorCode.toString());
        }

        @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
        public void onAdLoaded() {
            this.googlePostBidder.publisherAdView = this.nativeAd.getPublisherAdView();
            this.googlePostBidder.publisherAdView.setMinimumHeight(0);
            this.googlePostBidder.publisherAdView.setMinimumWidth(0);
            for (int i = 0; i < this.googlePostBidder.publisherAdView.getChildCount(); i++) {
                View childAt = this.googlePostBidder.publisherAdView.getChildAt(i);
                if (childAt != null) {
                    childAt.setMinimumHeight(0);
                    childAt.setMinimumWidth(0);
                }
            }
            if (this.googlePostBidder.isDestroyed) {
                this.googlePostBidder.publisherAdView.destroy();
                return;
            }
            GooglePostBidder googlePostBidder = this.googlePostBidder;
            googlePostBidder.moPubView = AdUtils.m27281a(googlePostBidder.context, this.googlePostBidder.moPubAdSize);
            this.googlePostBidder.moPubView.setAdContentView(this.googlePostBidder.publisherAdView);
            this.googlePostBidder.moPubView.setAdUnitId(this.googlePostBidder.jsonPostBidderAdUnit.getAdUnitId());
            this.googlePostBidder.bidListener.mo27237a(this.googlePostBidder.priceToBeat + 0.01d);
        }

        public void setNativeAd(GooglePlayServicesNativeAd googlePlayServicesNativeAd) {
            this.nativeAd = googlePlayServicesNativeAd;
        }
    }

    private List<AdSize> getAdSizes(List<Integer> list, int i) {
        if (CollectionUtils.m26076a(list)) {
            return null;
        }
        boolean z = i > 0 && CallAppRemoteConfigManager.get().m28698c("GoogleAdaptiveBannerEnabled");
        ArrayList arrayList = new ArrayList();
        for (Integer num : list) {
            int intValue = num.intValue();
            if (intValue == 0) {
                arrayList.add(AdSize.INVALID);
            } else if (intValue == 1) {
                if (z) {
                    arrayList.add(AdSize.getCurrentOrientationAnchoredAdaptiveBannerAdSize(this.context, i));
                }
                arrayList.add(AdSize.BANNER);
                arrayList.add(AdSize.LARGE_BANNER);
                this.moPubAdSize = MoPubView.MoPubAdSize.HEIGHT_50;
            } else if (intValue == 2) {
                if (z) {
                    arrayList.add(AdSize.getCurrentOrientationInlineAdaptiveBannerAdSize(this.context, i));
                }
                arrayList.add(AdSize.MEDIUM_RECTANGLE);
                arrayList.add(AdSize.LARGE_BANNER);
                arrayList.add(AdSize.BANNER);
                this.moPubAdSize = MoPubView.MoPubAdSize.HEIGHT_250;
            }
        }
        return arrayList;
    }

    public Map<String, String> getServerExtras() {
        HashMap hashMap = new HashMap();
        hashMap.put(GooglePlayServicesNativeAd.KEY_EXTRA_AD_UNIT_ID, this.jsonPostBidderAdUnit.getAdUnitId());
        hashMap.put(GooglePlayServicesInterstitial.AD_UNIT_ID_KEY, this.jsonPostBidderAdUnit.getAdUnitId());
        hashMap.put(DataKeys.CALLAPP_FLOOR_PRICE_KEY, String.valueOf(this.priceToBeat + 0.01d));
        hashMap.put("app_bidder_request_id", this.requestId);
        return hashMap;
    }

    private void hideWebViewScrollbars(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof WebView) {
                childAt.setVerticalScrollBarEnabled(false);
                childAt.setHorizontalScrollBarEnabled(false);
            }
            if (childAt instanceof ViewGroup) {
                hideWebViewScrollbars((ViewGroup) childAt);
            }
        }
    }

    private void loadInterstitial(final AppBidder.BidListener bidListener) {
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.GooglePostBidder.3
            @Override // java.lang.Runnable
            public void run() {
                HashMap hashMap = new HashMap();
                hashMap.put("callapp_bid_price", Double.valueOf(GooglePostBidder.this.priceToBeat));
                GooglePostBidder googlePostBidder = GooglePostBidder.this;
                googlePostBidder.moPubInterstitial = new MoPubInterstitial((Activity) googlePostBidder.context, GooglePostBidder.this.jsonPostBidderAdUnit.getAdUnitId());
                GooglePostBidder.this.moPubInterstitial.setLocalExtras(hashMap);
                GooglePostBidder.this.moPubInterstitial.setInterstitialAdListener(new MoPubInterstitial.InterstitialAdListener() { // from class: com.callapp.contacts.util.ads.bidder.GooglePostBidder.3.1
                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
                        GooglePostBidder.this.adEvents.onInterstitialClicked(moPubInterstitial);
                    }

                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
                        GooglePostBidder.this.adEvents.onInterstitialDismissed(moPubInterstitial);
                    }

                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
                        bidListener.mo27236a(moPubErrorCode.toString());
                    }

                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
                        bidListener.mo27237a(GooglePostBidder.this.priceToBeat + 0.01d);
                    }

                    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
                    public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
                        GooglePostBidder.this.adEvents.onInterstitialShown(moPubInterstitial);
                    }
                });
                GooglePostBidder.this.moPubInterstitial.fakeLoad(GooglePlayServicesInterstitial.class.getName(), GooglePostBidder.this.getServerExtras());
            }
        });
    }

    private void loadNativeOrBanner(final AppBidder.BidListener bidListener, final NativeAdParamGetter nativeAdParamGetter) {
        HashMap hashMap = new HashMap();
        hashMap.put("callapp_bid_price", Double.valueOf(this.priceToBeat));
        List<AdSize> adSizes = getAdSizes(this.jsonPostBidderAdUnit.getMultiAdType(), (int) this.adWidth);
        if (CollectionUtils.m26068b(adSizes)) {
            hashMap.put(GooglePlayServicesNativeAd.KEY_EXTRA_CALLAPP_AD_SIZES, adSizes);
        }
        if (this.jsonPostBidder.getAdUnitTimeout() > 0) {
            hashMap.put(GooglePlayServicesNativeAd.KEY_EXTRA_CALLAPP_TIMEOUT, Long.valueOf(this.jsonPostBidder.getAdUnitTimeout()));
        }
        GooglePostBidderListener googlePostBidderListener = new GooglePostBidderListener(this);
        GooglePlayServicesNativeAd googlePlayServicesNativeAd = new GooglePlayServicesNativeAd(new CustomEventNative.CustomEventNativeListener() { // from class: com.callapp.contacts.util.ads.bidder.GooglePostBidder.1
            @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
            public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                bidListener.mo27236a(nativeErrorCode.toString());
            }

            @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
            public void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
                if (!GooglePostBidder.this.isDestroyed) {
                    AdSettings mo26137a = nativeAdParamGetter.mo26137a(GooglePostBidder.this.jsonPostBidderAdUnit.getAdUnitId());
                    GooglePlayServicesAdRenderer googlePlayServicesAdRenderer = new GooglePlayServicesAdRenderer(nativeAdParamGetter.mo26138a(mo26137a), mo26137a);
                    GooglePostBidder googlePostBidder = GooglePostBidder.this;
                    googlePostBidder.nativeAd = new NativeAd(googlePostBidder.context, Collections.emptyList(), Collections.emptyList(), GooglePostBidder.this.jsonPostBidderAdUnit.getAdUnitId(), baseNativeAd, googlePlayServicesAdRenderer);
                    bidListener.mo27237a(GooglePostBidder.this.priceToBeat + 0.01d);
                }
            }
        }, googlePostBidderListener, new AdLifecycleListener.InteractionListener() { // from class: com.callapp.contacts.util.ads.bidder.GooglePostBidder.2
            @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
            public void onAdClicked() {
                if (GooglePostBidder.this.adEvents != null) {
                    GooglePostBidder.this.adEvents.onAdClick();
                }
            }

            @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
            public /* synthetic */ void onAdCollapsed() {
                AdLifecycleListener.InlineInteractionListener._CC.$default$onAdCollapsed(this);
            }

            @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
            public /* synthetic */ void onAdComplete(MoPubReward moPubReward) {
                AdLifecycleListener.FullscreenInteractionListener._CC.$default$onAdComplete(this, moPubReward);
            }

            @Override // com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
            public /* synthetic */ void onAdDismissed() {
                AdLifecycleListener.FullscreenInteractionListener._CC.$default$onAdDismissed(this);
            }

            @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
            public /* synthetic */ void onAdExpanded() {
                AdLifecycleListener.InlineInteractionListener._CC.$default$onAdExpanded(this);
            }

            @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
            public void onAdFailed(MoPubErrorCode moPubErrorCode) {
                bidListener.mo27236a(moPubErrorCode.toString());
            }

            @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
            public void onAdImpression() {
            }

            @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
            public /* synthetic */ void onAdPauseAutoRefresh() {
                AdLifecycleListener.InlineInteractionListener._CC.$default$onAdPauseAutoRefresh(this);
            }

            @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
            public /* synthetic */ void onAdResumeAutoRefresh() {
                AdLifecycleListener.InlineInteractionListener._CC.$default$onAdResumeAutoRefresh(this);
            }

            @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
            public void onAdShown() {
            }
        });
        googlePostBidderListener.setNativeAd(googlePlayServicesNativeAd);
        googlePlayServicesNativeAd.loadAd(this.context, this.jsonPostBidderAdUnit.getAdUnitId(), hashMap, Payload.SOURCE_GOOGLE, this.priceToBeat + 0.01d);
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void destroy() {
        this.isDestroyed = true;
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.bidder.GooglePostBidder.4
            @Override // java.lang.Runnable
            public void run() {
                if (GooglePostBidder.this.nativeAd != null) {
                    GooglePostBidder.this.nativeAd.destroy();
                }
                if (GooglePostBidder.this.publisherAdView != null) {
                    GooglePostBidder.this.publisherAdView.setAdListener(null);
                    GooglePostBidder.this.publisherAdView.destroy();
                }
                if (GooglePostBidder.this.moPubView != null) {
                    GooglePostBidder.this.moPubView.destroy();
                }
                if (GooglePostBidder.this.moPubInterstitial != null) {
                    GooglePostBidder.this.moPubInterstitial.destroy();
                    GooglePostBidder.this.moPubInterstitial = null;
                }
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public int getAdHeight() {
        PublisherAdView publisherAdView = this.publisherAdView;
        if (publisherAdView != null) {
            return publisherAdView.getAdSize().getHeight();
        }
        return 0;
    }

    @Override // com.callapp.contacts.util.ads.bidder.PostBidder
    public void getBid(Context context, JSONPostBidder jSONPostBidder, AppBidder.BidListener bidListener, NativeAdParamGetter nativeAdParamGetter, double d, String str, float f) {
        if (!GooglePlayServicesAdapterConfiguration.isInitialized()) {
            new GooglePlayServicesAdapterConfiguration().initializeNetwork(context, new HashMap());
        }
        if (!GooglePlayServicesAdapterConfiguration.isInitialized()) {
            bidListener.mo27236a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
            return;
        }
        this.jsonPostBidder = jSONPostBidder;
        this.requestId = str;
        this.context = context;
        this.adWidth = f;
        this.bidListener = bidListener;
        double d2 = this.priceToBeat;
        if (d2 * d < 30.0d) {
            this.priceToBeat = d2 * d;
        }
        double d3 = this.priceToBeat;
        if (d3 >= 30.0d) {
            bidListener.mo27236a(MoPubErrorCode.CANCELLED.toString());
            return;
        }
        if (d3 > 10.0d) {
            this.priceToBeat = (Math.round(d3 * 10.0d) / 10.0d) + 0.1d;
        }
        List<JSONPostBidderAdUnit> adUnits = jSONPostBidder.getAdUnits();
        if (!CollectionUtils.m26068b(adUnits) || adUnits.size() != 1) {
            bidListener.mo27236a(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.toString());
            return;
        }
        JSONPostBidderAdUnit jSONPostBidderAdUnit = adUnits.get(0);
        this.jsonPostBidderAdUnit = jSONPostBidderAdUnit;
        if (jSONPostBidderAdUnit.getMultiAdType().contains(4)) {
            loadInterstitial(bidListener);
        } else {
            loadNativeOrBanner(bidListener, nativeAdParamGetter);
        }
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public void loadAd(AdUtils.AdEvents adEvents) {
        this.adEvents = adEvents;
        NativeAd nativeAd = this.nativeAd;
        if (nativeAd != null) {
            adEvents.onNativeAdLoaded(nativeAd, this.jsonPostBidder.isCallappDisableRefresh());
        } else if (this.moPubView != null) {
            hideWebViewScrollbars(this.publisherAdView);
            adEvents.onBannerAdLoaded(this.moPubView, this.jsonPostBidder.isCallappDisableRefresh());
        } else {
            MoPubInterstitial moPubInterstitial = this.moPubInterstitial;
            if (moPubInterstitial != null) {
                adEvents.onInterstitialLoaded(moPubInterstitial);
            } else {
                adEvents.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
            }
        }
    }

    @Override // com.callapp.contacts.util.ads.bidder.Bidder
    public /* synthetic */ void notifyLoss() {
        Bidder._CC.$default$notifyLoss(this);
    }

    @Override // com.callapp.contacts.util.ads.bidder.PostBidder
    public void setPriceToBeat(double d) {
        this.priceToBeat = d;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("GooglePostBidder{nativeAd=");
        NativeAd nativeAd = this.nativeAd;
        sb.append(nativeAd != null ? nativeAd.getAdUnitId() : null);
        sb.append(", moPubView=");
        MoPubView moPubView = this.moPubView;
        sb.append(moPubView != null ? moPubView.getAdUnitId() : null);
        sb.append(", moPubInterstitial=");
        MoPubInterstitial moPubInterstitial = this.moPubInterstitial;
        String str = null;
        if (moPubInterstitial != null) {
            str = moPubInterstitial.getAdUnitId();
        }
        sb.append(str);
        sb.append('}');
        return sb.toString();
    }
}
