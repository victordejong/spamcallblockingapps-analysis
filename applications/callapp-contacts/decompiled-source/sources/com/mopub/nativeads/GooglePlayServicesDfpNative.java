package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.util.ads.AdUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.doubleclick.PublisherAdRequest;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.mopub.common.MoPub;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.GooglePlayServicesAdapterConfiguration;
import com.mopub.mobileads.GooglePlayServicesInterstitial;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.GooglePlayServicesNative;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesDfpNative.class */
public class GooglePlayServicesDfpNative extends CustomEventNative {

    /* renamed from: a  reason: collision with root package name */
    private static final String f34516a = GooglePlayServicesNative.class.getSimpleName();

    /* renamed from: b  reason: collision with root package name */
    private GooglePlayServicesAdapterConfiguration f34517b = new GooglePlayServicesAdapterConfiguration();

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesDfpNative$a.class */
    static final class a extends GooglePlayServicesNative.b {
        public a(CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.h = customEventNativeListener;
        }

        public final void loadAd(final Context context, String str, Map<String, Object> map, String str2, double d2) {
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
            AdLoader build = builder.forUnifiedNativeAd(new UnifiedNativeAd.OnUnifiedNativeAdLoadedListener() { // from class: com.mopub.nativeads.GooglePlayServicesDfpNative.a.2
                @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
                public final void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
                    if (!a.a(unifiedNativeAd)) {
                        MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, GooglePlayServicesDfpNative.f34516a, "The Google native unified ad is missing one or more required assets, failing request.");
                        a.this.h.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
                        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, GooglePlayServicesDfpNative.f34516a, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
                        return;
                    }
                    a.this.f = unifiedNativeAd;
                    List<NativeAd.Image> images = unifiedNativeAd.getImages();
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(images.get(0).getUri().toString());
                    arrayList.add(unifiedNativeAd.getIcon().getUri().toString());
                    a.this.a(context.getApplicationContext(), arrayList);
                }
            }).withAdListener(new AdListener() { // from class: com.mopub.nativeads.GooglePlayServicesDfpNative.a.1
                @Override // com.google.android.gms.ads.AdListener
                public final void onAdClicked() {
                    super.onAdClicked();
                    a.this.notifyAdClicked();
                    MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, GooglePlayServicesDfpNative.f34516a);
                    if (!a.this.f34526a.getAndSet(true)) {
                        CallAppAdsAnalyticsManager.b(a.this.e, a.this.f34529d, MoPub.AD_TYPE_AND_SIZE.NATIVE);
                    }
                }

                @Override // com.google.android.gms.ads.AdListener
                public final void onAdFailedToLoad(LoadAdError loadAdError) {
                    int code = loadAdError.getCode();
                    if (code == 0) {
                        a.this.h.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
                    } else if (code == 1) {
                        a.this.h.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_REQUEST);
                    } else if (code == 2) {
                        a.this.h.onNativeAdFailed(NativeErrorCode.CONNECTION_ERROR);
                    } else if (code != 3) {
                        a.this.h.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
                    } else {
                        a.this.h.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
                    }
                }

                @Override // com.google.android.gms.ads.AdListener
                public final void onAdImpression() {
                    super.onAdImpression();
                    a.this.notifyAdImpressed();
                    MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_SUCCESS, GooglePlayServicesDfpNative.f34516a);
                    CallAppAdsAnalyticsManager.a(a.this.e, a.this.f34529d, a.this.f34527b, MoPub.AD_TYPE_AND_SIZE.NATIVE);
                }
            }).withNativeAdOptions(builder2.build()).build();
            PublisherAdRequest.Builder builder3 = new PublisherAdRequest.Builder();
            builder3.setRequestAgent(MoPubLog.LOGTAG);
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
            build.loadAd(builder3.build());
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, GooglePlayServicesDfpNative.f34516a);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        this.f34517b.initializeNetwork(context, map2);
        String str = map2.get(GooglePlayServicesNativeAd.KEY_EXTRA_AD_UNIT_ID);
        if (TextUtils.isEmpty(str)) {
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, f34516a, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
            return;
        }
        new a(customEventNativeListener).loadAd(context, str, map, AdUtils.a(map2, Payload.SOURCE_GOOGLE), AdUtils.a(map2));
        this.f34517b.setCachedInitializationParameters(context, map2);
    }
}
