package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.framework.util.CollectionUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.doubleclick.PublisherAdView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdLifecycleListener;
import com.mopub.mobileads.GooglePlayServicesInterstitial;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.GooglePlayServicesNative;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesNativeAd.class */
public class GooglePlayServicesNativeAd extends GooglePlayServicesNative.b {
    public static final String KEY_EXTRA_AD_UNIT_ID = "adunit";
    public static final String KEY_EXTRA_CALLAPP_ADAPTIVE_AD_WIDTH = "callapp_adaptive_ad_width";
    public static final String KEY_EXTRA_CALLAPP_AD_SIZES = "callapp_ad_sizes";
    public static final String KEY_EXTRA_CALLAPP_BID_PRICE = "callapp_bid_price";
    public static final String KEY_EXTRA_CALLAPP_TIMEOUT = "KEY_EXTRA_CALLAPP_TIMEOUT";
    private static final String i = "GooglePlayServicesNativeAd";
    private PublisherAdView j;
    private AdLifecycleListener.LoadListener k;
    private AdLifecycleListener.InteractionListener l;

    public GooglePlayServicesNativeAd(CustomEventNative.CustomEventNativeListener customEventNativeListener, AdLifecycleListener.LoadListener loadListener, AdLifecycleListener.InteractionListener interactionListener) {
        this.h = customEventNativeListener;
        this.k = loadListener;
        this.l = interactionListener;
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b, com.mopub.nativeads.BaseNativeAd
    public /* bridge */ /* synthetic */ void clear(View view) {
        super.clear(view);
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b, com.mopub.nativeads.BaseNativeAd
    public void destroy() {
        super.destroy();
        this.k = null;
        this.l = null;
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ String getAdvertiser() {
        return super.getAdvertiser();
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ String getCallToAction() {
        return super.getCallToAction();
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ String getIconImageUrl() {
        return super.getIconImageUrl();
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ String getMainImageUrl() {
        return super.getMainImageUrl();
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ String getMediaView() {
        return super.getMediaView();
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ String getPrice() {
        return super.getPrice();
    }

    public PublisherAdView getPublisherAdView() {
        return this.j;
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ Double getStarRating() {
        return super.getStarRating();
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ String getStore() {
        return super.getStore();
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ String getText() {
        return super.getText();
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ String getTitle() {
        return super.getTitle();
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ UnifiedNativeAd getUnifiedNativeAd() {
        return super.getUnifiedNativeAd();
    }

    public void loadAd(final Context context, String str, Map<String, Object> map, String str2, double d2) {
        boolean z;
        Long l;
        this.f34529d = str;
        this.e = str2;
        this.f34527b = d2;
        AdLoader.Builder builder = new AdLoader.Builder(context.getApplicationContext(), str);
        if (map.containsKey("swap_margins")) {
            Object obj = map.get("swap_margins");
            if (obj instanceof Boolean) {
                this.g = ((Boolean) obj).booleanValue();
            }
        }
        NativeAdOptions.Builder builder2 = new NativeAdOptions.Builder();
        builder2.setRequestMultipleImages(false);
        if (map.containsKey("orientation_preference") && a(map.get("orientation_preference"))) {
            builder2.setMediaAspectRatio(((Integer) map.get("orientation_preference")).intValue());
        }
        if (map.containsKey("ad_choices_placement") && b(map.get("ad_choices_placement"))) {
            builder2.setAdChoicesPlacement(((Integer) map.get("ad_choices_placement")).intValue());
        }
        NativeAdOptions build = builder2.build();
        List list = null;
        if (map.containsKey(KEY_EXTRA_CALLAPP_AD_SIZES)) {
            list = (List) map.get(KEY_EXTRA_CALLAPP_AD_SIZES);
        }
        ArrayList arrayList = new ArrayList();
        if (CollectionUtils.b(list)) {
            Iterator it2 = list.iterator();
            boolean z2 = false;
            while (true) {
                z = z2;
                if (!it2.hasNext()) {
                    break;
                }
                AdSize adSize = (AdSize) it2.next();
                if (adSize != AdSize.INVALID) {
                    arrayList.add(adSize);
                } else {
                    z2 = true;
                }
            }
        } else {
            z = true;
        }
        if (CollectionUtils.b(arrayList)) {
            builder.forPublisherAdView(new OnPublisherAdViewLoadedListener() { // from class: com.mopub.nativeads.GooglePlayServicesNativeAd.1
                @Override // com.google.android.gms.ads.formats.OnPublisherAdViewLoadedListener
                public final void onPublisherAdViewLoaded(PublisherAdView publisherAdView) {
                    GooglePlayServicesNativeAd.this.j = publisherAdView;
                    if (GooglePlayServicesNativeAd.this.k != null) {
                        GooglePlayServicesNativeAd.this.k.onAdLoaded();
                    }
                }
            }, (AdSize[]) arrayList.toArray(new AdSize[0]));
        }
        if (z) {
            builder.forUnifiedNativeAd(new UnifiedNativeAd.OnUnifiedNativeAdLoadedListener() { // from class: com.mopub.nativeads.GooglePlayServicesNativeAd.2
                @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
                public final void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
                    if (!GooglePlayServicesNativeAd.a(unifiedNativeAd)) {
                        MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, GooglePlayServicesNativeAd.i, "The Google native unified ad is missing one or more required assets, failing request.");
                        GooglePlayServicesNativeAd.this.h.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
                        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, GooglePlayServicesNativeAd.i, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
                        return;
                    }
                    GooglePlayServicesNativeAd.this.f = unifiedNativeAd;
                    List<NativeAd.Image> images = unifiedNativeAd.getImages();
                    ArrayList arrayList2 = new ArrayList();
                    arrayList2.add(images.get(0).getUri().toString());
                    arrayList2.add(unifiedNativeAd.getIcon().getUri().toString());
                    GooglePlayServicesNativeAd.this.a(context.getApplicationContext(), arrayList2);
                }
            });
        }
        AdLoader build2 = builder.withAdListener(new AdListener() { // from class: com.mopub.nativeads.GooglePlayServicesNativeAd.3
            @Override // com.google.android.gms.ads.AdListener
            public final void onAdClicked() {
                super.onAdClicked();
                if (GooglePlayServicesNativeAd.this.j != null) {
                    if (GooglePlayServicesNativeAd.this.l != null) {
                        GooglePlayServicesNativeAd.this.l.onAdClicked();
                    }
                    if (!GooglePlayServicesNativeAd.this.f34526a.getAndSet(true)) {
                        CallAppAdsAnalyticsManager.b(GooglePlayServicesNativeAd.this.e, GooglePlayServicesNativeAd.this.f34529d, CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(GooglePlayServicesNativeAd.this.j.getAdSize().getHeight()));
                    }
                } else {
                    GooglePlayServicesNativeAd.this.notifyAdClicked();
                    if (!GooglePlayServicesNativeAd.this.f34526a.getAndSet(true)) {
                        CallAppAdsAnalyticsManager.b(GooglePlayServicesNativeAd.this.e, GooglePlayServicesNativeAd.this.f34529d, MoPub.AD_TYPE_AND_SIZE.NATIVE);
                    }
                }
                MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, GooglePlayServicesNativeAd.i);
            }

            @Override // com.google.android.gms.ads.AdListener
            public final void onAdFailedToLoad(LoadAdError loadAdError) {
                int code = loadAdError.getCode();
                if (code == 0) {
                    GooglePlayServicesNativeAd.this.h.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
                } else if (code == 1) {
                    GooglePlayServicesNativeAd.this.h.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_REQUEST);
                } else if (code == 2) {
                    GooglePlayServicesNativeAd.this.h.onNativeAdFailed(NativeErrorCode.CONNECTION_ERROR);
                } else if (code != 3) {
                    GooglePlayServicesNativeAd.this.h.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
                } else {
                    GooglePlayServicesNativeAd.this.h.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public final void onAdImpression() {
                super.onAdImpression();
                if (GooglePlayServicesNativeAd.this.j != null) {
                    if (GooglePlayServicesNativeAd.this.l != null) {
                        GooglePlayServicesNativeAd.this.l.onAdImpression();
                    }
                    CallAppAdsAnalyticsManager.a(GooglePlayServicesNativeAd.this.e, GooglePlayServicesNativeAd.this.f34529d, GooglePlayServicesNativeAd.this.f34527b, CallAppAdsAnalyticsManager.getAdTypeAndSizeForBanner(GooglePlayServicesNativeAd.this.j.getAdSize().getHeight()));
                } else {
                    GooglePlayServicesNativeAd.this.notifyAdImpressed();
                    CallAppAdsAnalyticsManager.a(GooglePlayServicesNativeAd.this.e, GooglePlayServicesNativeAd.this.f34529d, GooglePlayServicesNativeAd.this.f34527b, MoPub.AD_TYPE_AND_SIZE.NATIVE);
                }
                MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_SUCCESS, GooglePlayServicesNativeAd.i);
            }
        }).withNativeAdOptions(build).build();
        PublisherAdRequest.Builder builder3 = new PublisherAdRequest.Builder();
        if (map.containsKey(KEY_EXTRA_CALLAPP_TIMEOUT) && (l = (Long) map.get(KEY_EXTRA_CALLAPP_TIMEOUT)) != null) {
            builder3.setHttpTimeoutMillis(l.intValue());
        }
        String str3 = (String) map.get(GooglePlayServicesInterstitial.CONTENT_URL_KEY);
        if (!TextUtils.isEmpty(str3)) {
            builder3.setContentUrl(str3);
        }
        String str4 = (String) map.get(GooglePlayServicesInterstitial.TEST_DEVICES_KEY);
        if (!TextUtils.isEmpty(str4)) {
            builder3.addTestDevice(str4);
        }
        RequestConfiguration.Builder builder4 = new RequestConfiguration.Builder();
        Boolean bool = (Boolean) map.get(GooglePlayServicesInterstitial.TAG_FOR_CHILD_DIRECTED_KEY);
        if (bool == null) {
            builder4.setTagForChildDirectedTreatment(-1);
        } else if (bool.booleanValue()) {
            builder4.setTagForChildDirectedTreatment(1);
        } else {
            builder4.setTagForChildDirectedTreatment(0);
        }
        Boolean bool2 = (Boolean) map.get(GooglePlayServicesInterstitial.TAG_FOR_UNDER_AGE_OF_CONSENT_KEY);
        if (bool2 == null) {
            builder4.setTagForUnderAgeOfConsent(-1);
        } else if (bool2.booleanValue()) {
            builder4.setTagForUnderAgeOfConsent(1);
        } else {
            builder4.setTagForUnderAgeOfConsent(0);
        }
        MobileAds.setRequestConfiguration(builder4.build());
        if (map.containsKey("callapp_bid_price")) {
            builder3.addCustomTargeting("bid_price", AdUtils.a((Double) map.get("callapp_bid_price")));
        }
        build2.loadAd(builder3.build());
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, i);
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b, com.mopub.nativeads.BaseNativeAd
    public /* bridge */ /* synthetic */ void prepare(View view) {
        super.prepare(view);
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ void setAdvertiser(String str) {
        super.setAdvertiser(str);
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ void setCallToAction(String str) {
        super.setCallToAction(str);
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ void setIconImageUrl(String str) {
        super.setIconImageUrl(str);
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ void setMainImageUrl(String str) {
        super.setMainImageUrl(str);
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ void setMediaView(String str) {
        super.setMediaView(str);
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ void setPrice(String str) {
        super.setPrice(str);
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ void setStarRating(Double d2) {
        super.setStarRating(d2);
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ void setStore(String str) {
        super.setStore(str);
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ void setText(String str) {
        super.setText(str);
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ void setTitle(String str) {
        super.setTitle(str);
    }

    @Override // com.mopub.nativeads.GooglePlayServicesNative.b
    public /* bridge */ /* synthetic */ boolean shouldSwapMargins() {
        return super.shouldSwapMargins();
    }
}
