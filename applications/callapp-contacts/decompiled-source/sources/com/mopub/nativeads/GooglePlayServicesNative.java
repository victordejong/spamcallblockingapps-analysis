package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import com.appsflyer.internal.referrer.Payload;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.util.ads.AdUtils;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.GooglePlayServicesAdapterConfiguration;
import com.mopub.mobileads.GooglePlayServicesInterstitial;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.NativeImageHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesNative.class */
public class GooglePlayServicesNative extends CustomEventNative {

    /* renamed from: a  reason: collision with root package name */
    private static final String f34521a = "GooglePlayServicesNative";

    /* renamed from: b  reason: collision with root package name */
    private GooglePlayServicesAdapterConfiguration f34522b = new GooglePlayServicesAdapterConfiguration();

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesNative$a.class */
    static final class a extends b {
        public a(CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.h = customEventNativeListener;
        }

        public final void loadAd(final Context context, String str, Map<String, Object> map, String str2, double d2, String str3) {
            this.f34529d = str;
            this.e = str2;
            this.f34527b = d2;
            this.f34528c = str3;
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
            AdLoader build = builder.forUnifiedNativeAd(new UnifiedNativeAd.OnUnifiedNativeAdLoadedListener() { // from class: com.mopub.nativeads.GooglePlayServicesNative.a.2
                @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
                public final void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
                    if (!a.a(unifiedNativeAd)) {
                        MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, GooglePlayServicesNative.f34521a, "The Google native unified ad is missing one or more required assets, failing request.");
                        a.this.h.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
                        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, GooglePlayServicesNative.f34521a, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
                        return;
                    }
                    a.this.f = unifiedNativeAd;
                    List<NativeAd.Image> images = unifiedNativeAd.getImages();
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(images.get(0).getUri().toString());
                    arrayList.add(unifiedNativeAd.getIcon().getUri().toString());
                    a.this.a(context.getApplicationContext(), arrayList);
                }
            }).withAdListener(new AdListener() { // from class: com.mopub.nativeads.GooglePlayServicesNative.a.1
                @Override // com.google.android.gms.ads.AdListener
                public final void onAdClicked() {
                    super.onAdClicked();
                    a.this.notifyAdClicked();
                    MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, GooglePlayServicesNative.f34521a);
                    if (!a.this.f34526a.getAndSet(true)) {
                        CallAppAdsAnalyticsManager.c(a.this.e, a.this.f34529d, MoPub.AD_TYPE_AND_SIZE.NATIVE);
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
                    MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_SUCCESS, GooglePlayServicesNative.f34521a);
                    CallAppAdsAnalyticsManager.a(a.this.e, a.this.f34529d, a.this.f34527b, MoPub.AD_TYPE_AND_SIZE.NATIVE, a.this.f34528c);
                }
            }).withNativeAdOptions(builder2.build()).build();
            AdRequest.Builder builder3 = new AdRequest.Builder();
            builder3.setRequestAgent(MoPubLog.LOGTAG);
            String str4 = (String) map.get(GooglePlayServicesInterstitial.CONTENT_URL_KEY);
            if (!TextUtils.isEmpty(str4)) {
                builder3.setContentUrl(str4);
            }
            String str5 = (String) map.get(GooglePlayServicesInterstitial.TEST_DEVICES_KEY);
            if (!TextUtils.isEmpty(str5)) {
                builder3.addTestDevice(str5);
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
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, GooglePlayServicesNative.f34521a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesNative$b.class */
    public static abstract class b extends BaseNativeAd {

        /* renamed from: b  reason: collision with root package name */
        protected double f34527b;

        /* renamed from: c  reason: collision with root package name */
        protected String f34528c;

        /* renamed from: d  reason: collision with root package name */
        protected String f34529d;
        protected String e;
        protected UnifiedNativeAd f;
        protected boolean g;
        protected CustomEventNative.CustomEventNativeListener h;
        private String i;
        private String j;
        private String k;
        private String l;
        private String m;
        private Double n;
        private String o;
        private String p;
        private String q;
        private String r;

        /* renamed from: a  reason: collision with root package name */
        protected AtomicBoolean f34526a = new AtomicBoolean(false);
        private final Map<String, Object> s = new HashMap();

        static /* synthetic */ void a(b bVar, UnifiedNativeAd unifiedNativeAd) {
            bVar.setMainImageUrl(unifiedNativeAd.getImages().get(0).getUri().toString());
            bVar.setIconImageUrl(unifiedNativeAd.getIcon().getUri().toString());
            bVar.setCallToAction(unifiedNativeAd.getCallToAction());
            bVar.setTitle(unifiedNativeAd.getHeadline());
            bVar.setText(unifiedNativeAd.getBody());
            if (unifiedNativeAd.getStarRating() != null) {
                bVar.setStarRating(unifiedNativeAd.getStarRating());
            }
            if (unifiedNativeAd.getStore() != null) {
                bVar.setStore(unifiedNativeAd.getStore());
            }
            if (unifiedNativeAd.getPrice() != null) {
                bVar.setPrice(unifiedNativeAd.getPrice());
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static boolean a(UnifiedNativeAd unifiedNativeAd) {
            return (unifiedNativeAd.getHeadline() == null || unifiedNativeAd.getBody() == null || unifiedNativeAd.getImages() == null || unifiedNativeAd.getImages().size() <= 0 || unifiedNativeAd.getImages().get(0) == null || unifiedNativeAd.getIcon() == null || unifiedNativeAd.getCallToAction() == null) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static boolean a(Object obj) {
            if (!(obj instanceof Integer)) {
                return false;
            }
            Integer num = (Integer) obj;
            return num.intValue() == 1 || num.intValue() == 2 || num.intValue() == 3;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public static boolean b(Object obj) {
            if (!(obj instanceof Integer)) {
                return false;
            }
            Integer num = (Integer) obj;
            return num.intValue() == 0 || num.intValue() == 1 || num.intValue() == 3 || num.intValue() == 2;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        public final void a(Context context, List<String> list) {
            NativeImageHelper.preCacheImages(context, list, new NativeImageHelper.ImageListener() { // from class: com.mopub.nativeads.GooglePlayServicesNative.b.1
                @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
                public final void onImagesCached() {
                    if (b.this.f != null) {
                        b bVar = b.this;
                        b.a(bVar, bVar.f);
                        b.this.h.onNativeAdLoaded(b.this);
                        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, GooglePlayServicesNative.f34521a);
                    }
                }

                @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
                public final void onImagesFailedToCache(NativeErrorCode nativeErrorCode) {
                    b.this.h.onNativeAdFailed(nativeErrorCode);
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, GooglePlayServicesNative.f34521a, Integer.valueOf(nativeErrorCode.getIntCode()), nativeErrorCode);
                }
            });
        }

        public final void addExtra(String str, Object obj) {
            if (Preconditions.NoThrow.checkNotNull(str, "addExtra key is not allowed to be null")) {
                this.s.put(str, obj);
            }
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void clear(View view) {
            this.h = null;
            this.f.cancelUnconfirmedClick();
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            UnifiedNativeAd unifiedNativeAd = this.f;
            if (unifiedNativeAd != null) {
                unifiedNativeAd.destroy();
            }
        }

        public String getAdvertiser() {
            return this.o;
        }

        public String getCallToAction() {
            return this.m;
        }

        public final Object getExtra(String str) {
            if (!Preconditions.NoThrow.checkNotNull(str, "getExtra key is not allowed to be null")) {
                return null;
            }
            return this.s.get(str);
        }

        public String getIconImageUrl() {
            return this.l;
        }

        public String getMainImageUrl() {
            return this.k;
        }

        public String getMediaView() {
            return this.r;
        }

        public String getPrice() {
            return this.q;
        }

        public Double getStarRating() {
            return this.n;
        }

        public String getStore() {
            return this.p;
        }

        public String getText() {
            return this.j;
        }

        public String getTitle() {
            return this.i;
        }

        public UnifiedNativeAd getUnifiedNativeAd() {
            return this.f;
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void prepare(View view) {
        }

        public void setAdvertiser(String str) {
            this.o = str;
        }

        public void setCallToAction(String str) {
            this.m = str;
        }

        public void setIconImageUrl(String str) {
            this.l = str;
        }

        public void setMainImageUrl(String str) {
            this.k = str;
        }

        public void setMediaView(String str) {
            this.r = str;
        }

        public void setPrice(String str) {
            this.q = str;
        }

        public void setStarRating(Double d2) {
            this.n = d2;
        }

        public void setStore(String str) {
            this.p = str;
        }

        public void setText(String str) {
            this.j = str;
        }

        public void setTitle(String str) {
            this.i = str;
        }

        public boolean shouldSwapMargins() {
            return this.g;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        this.f34522b.initializeNetwork(context, map2);
        String str = map2.get(GooglePlayServicesNativeAd.KEY_EXTRA_AD_UNIT_ID);
        if (TextUtils.isEmpty(str)) {
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, f34521a, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
            return;
        }
        new a(customEventNativeListener).loadAd(context, str, map, AdUtils.a(map2, Payload.SOURCE_GOOGLE), AdUtils.a(map2), null);
        this.f34522b.setCachedInitializationParameters(context, map2);
    }
}
