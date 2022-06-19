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

    /* renamed from: a */
    private static final String f59902a = "GooglePlayServicesNative";

    /* renamed from: b */
    private GooglePlayServicesAdapterConfiguration f59903b = new GooglePlayServicesAdapterConfiguration();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.nativeads.GooglePlayServicesNative$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesNative$a.class */
    public static final class C16922a extends AbstractC16925b {
        public C16922a(CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.f59914h = customEventNativeListener;
        }

        public final void loadAd(final Context context, String str, Map<String, Object> map, String str2, double d, String str3) {
            this.f59910d = str;
            this.f59911e = str2;
            this.f59908b = d;
            this.f59909c = str3;
            AdLoader.Builder builder = new AdLoader.Builder(context.getApplicationContext(), str);
            if (map.containsKey("swap_margins")) {
                Object obj = map.get("swap_margins");
                if (obj instanceof Boolean) {
                    this.f59913g = ((Boolean) obj).booleanValue();
                }
            }
            NativeAdOptions.Builder builder2 = new NativeAdOptions.Builder();
            builder2.setRequestMultipleImages(false);
            if (map.containsKey("orientation_preference") && m6211a(map.get("orientation_preference"))) {
                builder2.setMediaAspectRatio(((Integer) map.get("orientation_preference")).intValue());
            }
            if (map.containsKey("ad_choices_placement") && m6210b(map.get("ad_choices_placement"))) {
                builder2.setAdChoicesPlacement(((Integer) map.get("ad_choices_placement")).intValue());
            }
            AdLoader build = builder.forUnifiedNativeAd(new UnifiedNativeAd.OnUnifiedNativeAdLoadedListener() { // from class: com.mopub.nativeads.GooglePlayServicesNative.a.2
                @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
                public final void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
                    if (!C16922a.m6213a(unifiedNativeAd)) {
                        MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, GooglePlayServicesNative.f59902a, "The Google native unified ad is missing one or more required assets, failing request.");
                        C16922a.this.f59914h.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
                        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, GooglePlayServicesNative.f59902a, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
                        return;
                    }
                    C16922a.this.f59912f = unifiedNativeAd;
                    List<NativeAd.Image> images = unifiedNativeAd.getImages();
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(images.get(0).getUri().toString());
                    arrayList.add(unifiedNativeAd.getIcon().getUri().toString());
                    C16922a.this.m6214a(context.getApplicationContext(), arrayList);
                }
            }).withAdListener(new AdListener() { // from class: com.mopub.nativeads.GooglePlayServicesNative.a.1
                @Override // com.google.android.gms.ads.AdListener
                public final void onAdClicked() {
                    super.onAdClicked();
                    C16922a.this.notifyAdClicked();
                    MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, GooglePlayServicesNative.f59902a);
                    if (!C16922a.this.f59907a.getAndSet(true)) {
                        CallAppAdsAnalyticsManager.m28737c(C16922a.this.f59911e, C16922a.this.f59910d, MoPub.AD_TYPE_AND_SIZE.NATIVE);
                    }
                }

                @Override // com.google.android.gms.ads.AdListener
                public final void onAdFailedToLoad(LoadAdError loadAdError) {
                    int code = loadAdError.getCode();
                    if (code == 0) {
                        C16922a.this.f59914h.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
                    } else if (code == 1) {
                        C16922a.this.f59914h.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_REQUEST);
                    } else if (code == 2) {
                        C16922a.this.f59914h.onNativeAdFailed(NativeErrorCode.CONNECTION_ERROR);
                    } else if (code != 3) {
                        C16922a.this.f59914h.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
                    } else {
                        C16922a.this.f59914h.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
                    }
                }

                @Override // com.google.android.gms.ads.AdListener
                public final void onAdImpression() {
                    super.onAdImpression();
                    C16922a.this.notifyAdImpressed();
                    MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_SUCCESS, GooglePlayServicesNative.f59902a);
                    CallAppAdsAnalyticsManager.m28740a(C16922a.this.f59911e, C16922a.this.f59910d, C16922a.this.f59908b, MoPub.AD_TYPE_AND_SIZE.NATIVE, C16922a.this.f59909c);
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
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, GooglePlayServicesNative.f59902a);
        }
    }

    /* renamed from: com.mopub.nativeads.GooglePlayServicesNative$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesNative$b.class */
    public static abstract class AbstractC16925b extends BaseNativeAd {

        /* renamed from: b */
        protected double f59908b;

        /* renamed from: c */
        protected String f59909c;

        /* renamed from: d */
        protected String f59910d;

        /* renamed from: e */
        protected String f59911e;

        /* renamed from: f */
        protected UnifiedNativeAd f59912f;

        /* renamed from: g */
        protected boolean f59913g;

        /* renamed from: h */
        protected CustomEventNative.CustomEventNativeListener f59914h;

        /* renamed from: i */
        private String f59915i;

        /* renamed from: j */
        private String f59916j;

        /* renamed from: k */
        private String f59917k;

        /* renamed from: l */
        private String f59918l;

        /* renamed from: m */
        private String f59919m;

        /* renamed from: n */
        private Double f59920n;

        /* renamed from: o */
        private String f59921o;

        /* renamed from: p */
        private String f59922p;

        /* renamed from: q */
        private String f59923q;

        /* renamed from: r */
        private String f59924r;

        /* renamed from: a */
        protected AtomicBoolean f59907a = new AtomicBoolean(false);

        /* renamed from: s */
        private final Map<String, Object> f59925s = new HashMap();

        /* renamed from: a */
        static /* synthetic */ void m6212a(AbstractC16925b abstractC16925b, UnifiedNativeAd unifiedNativeAd) {
            abstractC16925b.setMainImageUrl(unifiedNativeAd.getImages().get(0).getUri().toString());
            abstractC16925b.setIconImageUrl(unifiedNativeAd.getIcon().getUri().toString());
            abstractC16925b.setCallToAction(unifiedNativeAd.getCallToAction());
            abstractC16925b.setTitle(unifiedNativeAd.getHeadline());
            abstractC16925b.setText(unifiedNativeAd.getBody());
            if (unifiedNativeAd.getStarRating() != null) {
                abstractC16925b.setStarRating(unifiedNativeAd.getStarRating());
            }
            if (unifiedNativeAd.getStore() != null) {
                abstractC16925b.setStore(unifiedNativeAd.getStore());
            }
            if (unifiedNativeAd.getPrice() != null) {
                abstractC16925b.setPrice(unifiedNativeAd.getPrice());
            }
        }

        /* renamed from: a */
        public static boolean m6213a(UnifiedNativeAd unifiedNativeAd) {
            return (unifiedNativeAd.getHeadline() == null || unifiedNativeAd.getBody() == null || unifiedNativeAd.getImages() == null || unifiedNativeAd.getImages().size() <= 0 || unifiedNativeAd.getImages().get(0) == null || unifiedNativeAd.getIcon() == null || unifiedNativeAd.getCallToAction() == null) ? false : true;
        }

        /* renamed from: a */
        public static boolean m6211a(Object obj) {
            if (!(obj instanceof Integer)) {
                return false;
            }
            Integer num = (Integer) obj;
            return num.intValue() == 1 || num.intValue() == 2 || num.intValue() == 3;
        }

        /* renamed from: b */
        public static boolean m6210b(Object obj) {
            if (!(obj instanceof Integer)) {
                return false;
            }
            Integer num = (Integer) obj;
            return num.intValue() == 0 || num.intValue() == 1 || num.intValue() == 3 || num.intValue() == 2;
        }

        /* renamed from: a */
        public final void m6214a(Context context, List<String> list) {
            NativeImageHelper.preCacheImages(context, list, new NativeImageHelper.ImageListener() { // from class: com.mopub.nativeads.GooglePlayServicesNative.b.1
                @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
                public final void onImagesCached() {
                    if (AbstractC16925b.this.f59912f != null) {
                        AbstractC16925b abstractC16925b = AbstractC16925b.this;
                        AbstractC16925b.m6212a(abstractC16925b, abstractC16925b.f59912f);
                        AbstractC16925b.this.f59914h.onNativeAdLoaded(AbstractC16925b.this);
                        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, GooglePlayServicesNative.f59902a);
                    }
                }

                @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
                public final void onImagesFailedToCache(NativeErrorCode nativeErrorCode) {
                    AbstractC16925b.this.f59914h.onNativeAdFailed(nativeErrorCode);
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, GooglePlayServicesNative.f59902a, Integer.valueOf(nativeErrorCode.getIntCode()), nativeErrorCode);
                }
            });
        }

        public final void addExtra(String str, Object obj) {
            if (Preconditions.NoThrow.checkNotNull(str, "addExtra key is not allowed to be null")) {
                this.f59925s.put(str, obj);
            }
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void clear(View view) {
            this.f59914h = null;
            this.f59912f.cancelUnconfirmedClick();
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            UnifiedNativeAd unifiedNativeAd = this.f59912f;
            if (unifiedNativeAd != null) {
                unifiedNativeAd.destroy();
            }
        }

        public String getAdvertiser() {
            return this.f59921o;
        }

        public String getCallToAction() {
            return this.f59919m;
        }

        public final Object getExtra(String str) {
            if (!Preconditions.NoThrow.checkNotNull(str, "getExtra key is not allowed to be null")) {
                return null;
            }
            return this.f59925s.get(str);
        }

        public String getIconImageUrl() {
            return this.f59918l;
        }

        public String getMainImageUrl() {
            return this.f59917k;
        }

        public String getMediaView() {
            return this.f59924r;
        }

        public String getPrice() {
            return this.f59923q;
        }

        public Double getStarRating() {
            return this.f59920n;
        }

        public String getStore() {
            return this.f59922p;
        }

        public String getText() {
            return this.f59916j;
        }

        public String getTitle() {
            return this.f59915i;
        }

        public UnifiedNativeAd getUnifiedNativeAd() {
            return this.f59912f;
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void prepare(View view) {
        }

        public void setAdvertiser(String str) {
            this.f59921o = str;
        }

        public void setCallToAction(String str) {
            this.f59919m = str;
        }

        public void setIconImageUrl(String str) {
            this.f59918l = str;
        }

        public void setMainImageUrl(String str) {
            this.f59917k = str;
        }

        public void setMediaView(String str) {
            this.f59924r = str;
        }

        public void setPrice(String str) {
            this.f59923q = str;
        }

        public void setStarRating(Double d) {
            this.f59920n = d;
        }

        public void setStore(String str) {
            this.f59922p = str;
        }

        public void setText(String str) {
            this.f59916j = str;
        }

        public void setTitle(String str) {
            this.f59915i = str;
        }

        public boolean shouldSwapMargins() {
            return this.f59913g;
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        this.f59903b.initializeNetwork(context, map2);
        String str = map2.get(GooglePlayServicesNativeAd.KEY_EXTRA_AD_UNIT_ID);
        if (TextUtils.isEmpty(str)) {
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, f59902a, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
            return;
        }
        new C16922a(customEventNativeListener).loadAd(context, str, map, AdUtils.m27265a(map2, Payload.SOURCE_GOOGLE), AdUtils.m27266a(map2), null);
        this.f59903b.setCachedInitializationParameters(context, map2);
    }
}
