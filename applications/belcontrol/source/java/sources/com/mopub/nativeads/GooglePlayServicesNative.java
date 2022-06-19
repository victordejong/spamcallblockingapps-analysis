package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd$OnAppInstallAdLoadedListener;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.formats.NativeContentAd$OnContentAdLoadedListener;
import com.mopub.common.logging.MoPubLog;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.NativeImageHelper;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesNative.class */
public class GooglePlayServicesNative extends CustomEventNative {
    public static final String KEY_EXPERIMENTAL_EXTRA_SWAP_MARGINS = "swap_margins";
    public static final String KEY_EXTRA_AD_CHOICES_PLACEMENT = "ad_choices_placement";
    public static final String KEY_EXTRA_ORIENTATION_PREFERENCE = "orientation_preference";

    /* renamed from: a */
    public static AtomicBoolean f5116a = new AtomicBoolean(false);

    /* renamed from: com.mopub.nativeads.GooglePlayServicesNative$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesNative$a.class */
    public static class C1172a extends BaseNativeAd {

        /* renamed from: e */
        public String f5117e;

        /* renamed from: f */
        public String f5118f;

        /* renamed from: g */
        public String f5119g;

        /* renamed from: h */
        public String f5120h;

        /* renamed from: i */
        public String f5121i;

        /* renamed from: j */
        public Double f5122j;

        /* renamed from: k */
        public String f5123k;

        /* renamed from: l */
        public String f5124l;

        /* renamed from: m */
        public String f5125m;

        /* renamed from: n */
        public boolean f5126n;

        /* renamed from: o */
        public CustomEventNative.CustomEventNativeListener f5127o;

        /* renamed from: p */
        public NativeContentAd f5128p;

        /* renamed from: q */
        public NativeAppInstallAd f5129q;

        /* renamed from: com.mopub.nativeads.GooglePlayServicesNative$a$a */
        /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesNative$a$a.class */
        public class C1173a extends AdListener {
            public C1173a() {
                C1172a.this = r4;
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdClicked() {
                super.onAdClicked();
                C1172a.this.m3376e();
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int i) {
                NativeErrorCode nativeErrorCode;
                CustomEventNative.CustomEventNativeListener customEventNativeListener;
                super.onAdFailedToLoad(i);
                if (i == 0) {
                    customEventNativeListener = C1172a.this.f5127o;
                    nativeErrorCode = NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR;
                } else if (i == 1) {
                    customEventNativeListener = C1172a.this.f5127o;
                    nativeErrorCode = NativeErrorCode.NETWORK_INVALID_REQUEST;
                } else if (i == 2) {
                    customEventNativeListener = C1172a.this.f5127o;
                    nativeErrorCode = NativeErrorCode.CONNECTION_ERROR;
                } else if (i != 3) {
                    customEventNativeListener = C1172a.this.f5127o;
                    nativeErrorCode = NativeErrorCode.UNSPECIFIED;
                } else {
                    customEventNativeListener = C1172a.this.f5127o;
                    nativeErrorCode = NativeErrorCode.NETWORK_NO_FILL;
                }
                customEventNativeListener.onNativeAdFailed(nativeErrorCode);
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdImpression() {
                super.onAdImpression();
                C1172a.this.m3375f();
            }
        }

        /* renamed from: com.mopub.nativeads.GooglePlayServicesNative$a$b */
        /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesNative$a$b.class */
        public class C1174b implements NativeAppInstallAd$OnAppInstallAdLoadedListener {

            /* renamed from: a */
            public final /* synthetic */ Context f5131a;

            public C1174b(Context context) {
                C1172a.this = r4;
                this.f5131a = context;
            }

            @Override // com.google.android.gms.ads.formats.NativeAppInstallAd$OnAppInstallAdLoadedListener
            public void onAppInstallAdLoaded(NativeAppInstallAd nativeAppInstallAd) {
                if (!C1172a.this.m3359r(nativeAppInstallAd)) {
                    Log.i("MoPubToAdMobNative", "The Google native app install ad is missing one or more required assets, failing request.");
                    C1172a.this.f5127o.onNativeAdFailed(NativeErrorCode.INVALID_RESPONSE);
                    return;
                }
                C1172a.this.f5129q = nativeAppInstallAd;
                List images = nativeAppInstallAd.getImages();
                ArrayList arrayList = new ArrayList();
                arrayList.add(((NativeAd.Image) images.get(0)).getUri().toString());
                arrayList.add(nativeAppInstallAd.getIcon().getUri().toString());
                C1172a.this.m3356u(this.f5131a, arrayList);
            }
        }

        /* renamed from: com.mopub.nativeads.GooglePlayServicesNative$a$c */
        /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesNative$a$c.class */
        public class C1175c implements NativeContentAd$OnContentAdLoadedListener {

            /* renamed from: a */
            public final /* synthetic */ Context f5133a;

            public C1175c(Context context) {
                C1172a.this = r4;
                this.f5133a = context;
            }

            @Override // com.google.android.gms.ads.formats.NativeContentAd$OnContentAdLoadedListener
            public void onContentAdLoaded(NativeContentAd nativeContentAd) {
                if (!C1172a.this.m3358s(nativeContentAd)) {
                    Log.i("MoPubToAdMobNative", "The Google native content ad is missing one or more required assets, failing request.");
                    C1172a.this.f5127o.onNativeAdFailed(NativeErrorCode.INVALID_RESPONSE);
                    return;
                }
                C1172a.this.f5128p = nativeContentAd;
                List images = nativeContentAd.getImages();
                ArrayList arrayList = new ArrayList();
                arrayList.add(((NativeAd.Image) images.get(0)).getUri().toString());
                arrayList.add(nativeContentAd.getLogo().getUri().toString());
                C1172a.this.m3356u(this.f5133a, arrayList);
            }
        }

        /* renamed from: com.mopub.nativeads.GooglePlayServicesNative$a$d */
        /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/GooglePlayServicesNative$a$d.class */
        public class C1176d implements NativeImageHelper.ImageListener {
            public C1176d() {
                C1172a.this = r4;
            }

            @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
            public void onImagesCached() {
                if (C1172a.this.f5128p != null) {
                    C1172a c1172a = C1172a.this;
                    c1172a.m3354w(c1172a.f5128p);
                } else if (C1172a.this.f5129q == null) {
                    return;
                } else {
                    C1172a c1172a2 = C1172a.this;
                    c1172a2.m3355v(c1172a2.f5129q);
                }
                C1172a.this.f5127o.onNativeAdLoaded(C1172a.this);
            }

            @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
            public void onImagesFailedToCache(NativeErrorCode nativeErrorCode) {
                C1172a.this.f5127o.onNativeAdFailed(nativeErrorCode);
            }
        }

        public C1172a(CustomEventNative.CustomEventNativeListener customEventNativeListener) {
            this.f5127o = customEventNativeListener;
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void clear(View view) {
            GooglePlayServicesAdRenderer.m3373b(view, shouldSwapMargins());
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            NativeContentAd nativeContentAd = this.f5128p;
            if (nativeContentAd != null) {
                nativeContentAd.destroy();
            }
            NativeAppInstallAd nativeAppInstallAd = this.f5129q;
            if (nativeAppInstallAd != null) {
                nativeAppInstallAd.destroy();
            }
        }

        public String getAdvertiser() {
            return this.f5123k;
        }

        public NativeAppInstallAd getAppInstallAd() {
            return this.f5129q;
        }

        public String getCallToAction() {
            return this.f5121i;
        }

        public NativeContentAd getContentAd() {
            return this.f5128p;
        }

        public String getIconImageUrl() {
            return this.f5120h;
        }

        public String getMainImageUrl() {
            return this.f5119g;
        }

        public String getPrice() {
            return this.f5125m;
        }

        public Double getStarRating() {
            return this.f5122j;
        }

        public String getStore() {
            return this.f5124l;
        }

        public String getText() {
            return this.f5118f;
        }

        public String getTitle() {
            return this.f5117e;
        }

        public boolean isNativeAppInstallAd() {
            return this.f5129q != null;
        }

        public boolean isNativeContentAd() {
            return this.f5128p != null;
        }

        public void loadAd(Context context, String str, Map<String, Object> map) {
            AdLoader.Builder builder = new AdLoader.Builder(context, str);
            if (map.containsKey(GooglePlayServicesNative.KEY_EXPERIMENTAL_EXTRA_SWAP_MARGINS)) {
                Object obj = map.get(GooglePlayServicesNative.KEY_EXPERIMENTAL_EXTRA_SWAP_MARGINS);
                if (obj instanceof Boolean) {
                    this.f5126n = ((Boolean) obj).booleanValue();
                }
            }
            NativeAdOptions.Builder builder2 = new NativeAdOptions.Builder();
            builder2.setReturnUrlsForImageAssets(true);
            builder2.setRequestMultipleImages(false);
            if (map.containsKey(GooglePlayServicesNative.KEY_EXTRA_ORIENTATION_PREFERENCE) && m3357t(map.get(GooglePlayServicesNative.KEY_EXTRA_ORIENTATION_PREFERENCE))) {
                builder2.setImageOrientation(((Integer) map.get(GooglePlayServicesNative.KEY_EXTRA_ORIENTATION_PREFERENCE)).intValue());
            }
            if (map.containsKey(GooglePlayServicesNative.KEY_EXTRA_AD_CHOICES_PLACEMENT) && m3360q(map.get(GooglePlayServicesNative.KEY_EXTRA_AD_CHOICES_PLACEMENT))) {
                builder2.setAdChoicesPlacement(((Integer) map.get(GooglePlayServicesNative.KEY_EXTRA_AD_CHOICES_PLACEMENT)).intValue());
            }
            builder.forContentAd(new C1175c(context)).forAppInstallAd(new C1174b(context)).withAdListener(new C1173a()).withNativeAdOptions(builder2.build()).build().loadAd(new AdRequest.Builder().setRequestAgent(MoPubLog.LOGTAG).build());
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void prepare(View view) {
        }

        /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
            if (r0.intValue() == 2) goto L15;
         */
        /* renamed from: q */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean m3360q(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
                r0 = r5
                r6 = r0
                r0 = r4
                if (r0 == 0) goto L3c
                r0 = r4
                boolean r0 = r0 instanceof java.lang.Integer
                if (r0 != 0) goto L14
                r0 = r5
                r6 = r0
                goto L3c
            L14:
                r0 = r4
                java.lang.Integer r0 = (java.lang.Integer) r0
                r4 = r0
                r0 = r4
                int r0 = r0.intValue()
                if (r0 == 0) goto L3a
                r0 = r4
                int r0 = r0.intValue()
                r1 = 1
                if (r0 == r1) goto L3a
                r0 = r4
                int r0 = r0.intValue()
                r1 = 3
                if (r0 == r1) goto L3a
                r0 = r5
                r6 = r0
                r0 = r4
                int r0 = r0.intValue()
                r1 = 2
                if (r0 != r1) goto L3c
            L3a:
                r0 = 1
                r6 = r0
            L3c:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.GooglePlayServicesNative.C1172a.m3360q(java.lang.Object):boolean");
        }

        /* renamed from: r */
        public final boolean m3359r(NativeAppInstallAd nativeAppInstallAd) {
            boolean z = false;
            if (nativeAppInstallAd.getHeadline() != null) {
                z = false;
                if (nativeAppInstallAd.getBody() != null) {
                    z = false;
                    if (nativeAppInstallAd.getImages() != null) {
                        z = false;
                        if (nativeAppInstallAd.getImages().size() > 0) {
                            z = false;
                            if (nativeAppInstallAd.getImages().get(0) != null) {
                                z = false;
                                if (nativeAppInstallAd.getIcon() != null) {
                                    z = false;
                                    if (nativeAppInstallAd.getCallToAction() != null) {
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }

        /* renamed from: s */
        public final boolean m3358s(NativeContentAd nativeContentAd) {
            boolean z = false;
            if (nativeContentAd.getHeadline() != null) {
                z = false;
                if (nativeContentAd.getBody() != null) {
                    z = false;
                    if (nativeContentAd.getImages() != null) {
                        z = false;
                        if (nativeContentAd.getImages().size() > 0) {
                            z = false;
                            if (nativeContentAd.getImages().get(0) != null) {
                                z = false;
                                if (nativeContentAd.getLogo() != null) {
                                    z = false;
                                    if (nativeContentAd.getCallToAction() != null) {
                                        z = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return z;
        }

        public void setAdvertiser(String str) {
            this.f5123k = str;
        }

        public void setCallToAction(String str) {
            this.f5121i = str;
        }

        public void setIconImageUrl(String str) {
            this.f5120h = str;
        }

        public void setMainImageUrl(String str) {
            this.f5119g = str;
        }

        public void setPrice(String str) {
            this.f5125m = str;
        }

        public void setStarRating(Double d) {
            this.f5122j = d;
        }

        public void setStore(String str) {
            this.f5124l = str;
        }

        public void setText(String str) {
            this.f5118f = str;
        }

        public void setTitle(String str) {
            this.f5117e = str;
        }

        public boolean shouldSwapMargins() {
            return this.f5126n;
        }

        /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
            if (r0.intValue() == 1) goto L13;
         */
        /* renamed from: t */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final boolean m3357t(java.lang.Object r4) {
            /*
                r3 = this;
                r0 = 0
                r5 = r0
                r0 = r5
                r6 = r0
                r0 = r4
                if (r0 == 0) goto L34
                r0 = r4
                boolean r0 = r0 instanceof java.lang.Integer
                if (r0 != 0) goto L14
                r0 = r5
                r6 = r0
                goto L34
            L14:
                r0 = r4
                java.lang.Integer r0 = (java.lang.Integer) r0
                r4 = r0
                r0 = r4
                int r0 = r0.intValue()
                if (r0 == 0) goto L32
                r0 = r4
                int r0 = r0.intValue()
                r1 = 2
                if (r0 == r1) goto L32
                r0 = r5
                r6 = r0
                r0 = r4
                int r0 = r0.intValue()
                r1 = 1
                if (r0 != r1) goto L34
            L32:
                r0 = 1
                r6 = r0
            L34:
                r0 = r6
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.GooglePlayServicesNative.C1172a.m3357t(java.lang.Object):boolean");
        }

        /* renamed from: u */
        public final void m3356u(Context context, List<String> list) {
            NativeImageHelper.preCacheImages(context, list, new C1176d());
        }

        /* renamed from: v */
        public final void m3355v(NativeAppInstallAd nativeAppInstallAd) {
            setMainImageUrl(((NativeAd.Image) nativeAppInstallAd.getImages().get(0)).getUri().toString());
            setIconImageUrl(nativeAppInstallAd.getIcon().getUri().toString());
            setCallToAction(nativeAppInstallAd.getCallToAction().toString());
            setTitle(nativeAppInstallAd.getHeadline().toString());
            setText(nativeAppInstallAd.getBody().toString());
            if (nativeAppInstallAd.getStarRating() != null) {
                setStarRating(nativeAppInstallAd.getStarRating());
            }
            if (nativeAppInstallAd.getStore() != null) {
                setStore(nativeAppInstallAd.getStore().toString());
            }
            if (nativeAppInstallAd.getPrice() != null) {
                setPrice(nativeAppInstallAd.getPrice().toString());
            }
        }

        /* renamed from: w */
        public final void m3354w(NativeContentAd nativeContentAd) {
            setMainImageUrl(((NativeAd.Image) nativeContentAd.getImages().get(0)).getUri().toString());
            setIconImageUrl(nativeContentAd.getLogo().getUri().toString());
            setCallToAction(nativeContentAd.getCallToAction().toString());
            setTitle(nativeContentAd.getHeadline().toString());
            setText(nativeContentAd.getBody().toString());
            setAdvertiser(nativeContentAd.getAdvertiser().toString());
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    /* renamed from: a */
    public void mo3342a(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        if (!f5116a.getAndSet(true)) {
            Log.i("MoPubToAdMobNative", "Adapter version - 0.3.1");
            if (!map2.containsKey("appid") || TextUtils.isEmpty(map2.get("appid"))) {
                MobileAds.initialize(context);
            } else {
                MobileAds.initialize(context, map2.get("appid"));
            }
        }
        String str = map2.get("adunit");
        if (TextUtils.isEmpty(str)) {
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_REQUEST);
        } else {
            new C1172a(customEventNativeListener).loadAd(context, str, map);
        }
    }
}
