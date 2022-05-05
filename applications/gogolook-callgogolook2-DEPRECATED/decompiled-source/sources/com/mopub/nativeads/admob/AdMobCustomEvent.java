package com.mopub.nativeads.admob;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdLoader;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.ads.formats.UnifiedNativeAd;
import com.mopub.mobileads.AdMobBannerCustomEvent;
import com.mopub.nativeads.BaseCustomEventNative;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.ImpressionTracker;
import com.mopub.nativeads.NativeClickHandler;
import com.mopub.nativeads.NativeErrorCode;
import com.mopub.nativeads.StaticNativeAd;
import java.util.Map;
import p081h.p160h.p161a.p165k.C6219a;
import p081h.p160h.p161a.p165k.C6232c;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/admob/AdMobCustomEvent.class */
public class AdMobCustomEvent extends BaseCustomEventNative {

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/admob/AdMobCustomEvent$AdMobStaticNativeAd.class */
    public static class AdMobStaticNativeAd extends StaticNativeAd {

        /* renamed from: p */
        public final Context f9320p;

        /* renamed from: q */
        public final CustomEventNative.CustomEventNativeListener f9321q;

        /* renamed from: r */
        public final AdMobStaticNativeAd f9322r = this;
        @Nullable

        /* renamed from: s */
        public UnifiedNativeAd f9323s;

        /* renamed from: t */
        public ImpressionTracker f9324t;

        /* renamed from: u */
        public NativeClickHandler f9325u;

        /* renamed from: v */
        public boolean f9326v;

        /* renamed from: w */
        public int f9327w;

        /* renamed from: x */
        public C6260a f9328x;
        @NonNull

        /* renamed from: y */
        public String f9329y;
        @NonNull

        /* renamed from: z */
        public String f9330z;

        /* renamed from: com.mopub.nativeads.admob.AdMobCustomEvent$AdMobStaticNativeAd$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/admob/AdMobCustomEvent$AdMobStaticNativeAd$a.class */
        public class C4021a extends AdListener {
            public C4021a() {
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int i) {
                NativeErrorCode a = AdMobStaticNativeAd.this.m30059a(i);
                if (AdMobStaticNativeAd.this.f9328x != null) {
                    String str = null;
                    if (a == NativeErrorCode.UNSPECIFIED) {
                        str = "errorCode: " + i;
                    }
                    AdMobStaticNativeAd.this.f9328x.m23467b(C6260a.m23469a(a.name(), str));
                }
                C6219a.m23549a("AdMobStaticNativeAd", AdMobStaticNativeAd.this.f9329y, AdMobStaticNativeAd.this.f9330z, a.toString());
                if (AdMobStaticNativeAd.this.f9321q != null) {
                    AdMobStaticNativeAd.this.f9321q.onNativeAdFailed(a);
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdImpression() {
                super.onAdImpression();
                AdMobStaticNativeAd.this.notifyAdImpressed();
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                super.onAdLoaded();
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                super.onAdOpened();
                AdMobStaticNativeAd.this.notifyAdClicked();
            }
        }

        /* renamed from: com.mopub.nativeads.admob.AdMobCustomEvent$AdMobStaticNativeAd$b */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/admob/AdMobCustomEvent$AdMobStaticNativeAd$b.class */
        public class C4022b implements UnifiedNativeAd.OnUnifiedNativeAdLoadedListener {
            public C4022b() {
            }

            @Override // com.google.android.gms.ads.formats.UnifiedNativeAd.OnUnifiedNativeAdLoadedListener
            public void onUnifiedNativeAdLoaded(UnifiedNativeAd unifiedNativeAd) {
                if (!AdMobStaticNativeAd.this.m30058a(unifiedNativeAd)) {
                    if (AdMobStaticNativeAd.this.f9328x != null) {
                        AdMobStaticNativeAd.this.f9328x.m23467b(NativeErrorCode.NETWORK_INVALID_STATE.name());
                    }
                    C6219a.m23541b("AdMobStaticNativeAd", AdMobStaticNativeAd.this.f9329y, NativeErrorCode.NETWORK_INVALID_STATE.toString());
                    AdMobStaticNativeAd.this.f9321q.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_STATE);
                    return;
                }
                if (AdMobStaticNativeAd.this.f9328x != null) {
                    AdMobStaticNativeAd.this.f9328x.m23467b(C6262a.EnumC6263a.NETWORK_FILL.name());
                }
                AdMobStaticNativeAd.this.m30054b(unifiedNativeAd);
            }
        }

        public AdMobStaticNativeAd(Context context, boolean z, int i, @NonNull String str, @NonNull String str2, C6260a aVar, CustomEventNative.CustomEventNativeListener customEventNativeListener, ImpressionTracker impressionTracker, NativeClickHandler nativeClickHandler) {
            this.f9326v = false;
            this.f9327w = 1;
            this.f9320p = context;
            this.f9329y = str;
            this.f9330z = str2;
            this.f9328x = aVar;
            this.f9326v = z;
            this.f9327w = i;
            this.f9321q = customEventNativeListener;
            this.f9324t = impressionTracker;
            this.f9325u = nativeClickHandler;
        }

        /* renamed from: a */
        public final NativeErrorCode m30059a(int i) {
            return i != 0 ? i != 1 ? i != 2 ? i != 3 ? NativeErrorCode.UNSPECIFIED : NativeErrorCode.NETWORK_NO_FILL : NativeErrorCode.CONNECTION_ERROR : NativeErrorCode.NETWORK_INVALID_REQUEST : NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR;
        }

        /* renamed from: a */
        public final boolean m30058a(UnifiedNativeAd unifiedNativeAd) {
            boolean z = false;
            if (unifiedNativeAd.getHeadline() != null) {
                z = false;
                if (unifiedNativeAd.getBody() != null) {
                    z = false;
                    if (unifiedNativeAd.getImages() != null) {
                        z = false;
                        if (unifiedNativeAd.getImages().size() > 0) {
                            z = false;
                            if (unifiedNativeAd.getImages().get(0) != null) {
                                z = false;
                                if (unifiedNativeAd.getIcon() != null) {
                                    z = false;
                                    if (unifiedNativeAd.getCallToAction() != null) {
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

        /* renamed from: b */
        public final void m30054b(UnifiedNativeAd unifiedNativeAd) {
            NativeAd.Image image = unifiedNativeAd.getImages().get(0);
            NativeAd.Image icon = unifiedNativeAd.getIcon();
            setMainImageUrl(image.getUri().toString());
            setIconImageUrl(icon.getUri().toString());
            setCallToAction(unifiedNativeAd.getCallToAction());
            setTitle(unifiedNativeAd.getHeadline());
            setText(unifiedNativeAd.getBody());
            this.f9323s = unifiedNativeAd;
            CustomEventNative.CustomEventNativeListener customEventNativeListener = this.f9321q;
            if (customEventNativeListener != null) {
                customEventNativeListener.onNativeAdLoaded(this.f9322r);
            }
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void clear(@NonNull View view) {
            super.clear(view);
            ImpressionTracker impressionTracker = this.f9324t;
            if (impressionTracker != null) {
                impressionTracker.removeView(view);
            }
            NativeClickHandler nativeClickHandler = this.f9325u;
            if (nativeClickHandler != null) {
                nativeClickHandler.clearOnClickListener(view);
            }
            UnifiedNativeAd unifiedNativeAd = this.f9323s;
            if (unifiedNativeAd != null) {
                unifiedNativeAd.cancelUnconfirmedClick();
            }
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            super.destroy();
            this.f9324t.destroy();
            UnifiedNativeAd unifiedNativeAd = this.f9323s;
            if (unifiedNativeAd != null) {
                unifiedNativeAd.destroy();
            }
        }

        public void fetchAd(String str) {
            UnifiedNativeAd unifiedNativeAd = this.f9323s;
            if (unifiedNativeAd != null) {
                unifiedNativeAd.destroy();
                this.f9323s = null;
            }
            AdRequest.Builder builder = new AdRequest.Builder();
            if (this.f9326v) {
                builder.addTestDevice(C6232c.m23517a(this.f9320p));
            }
            AdLoader build = new AdLoader.Builder(this.f9320p, str).forUnifiedNativeAd(new C4022b()).withAdListener(new C4021a()).withNativeAdOptions(new NativeAdOptions.Builder().setAdChoicesPlacement(this.f9327w).build()).build();
            C6260a aVar = this.f9328x;
            if (aVar != null) {
                aVar.m23456j();
            }
            build.loadAd(builder.build());
        }

        @Nullable
        public UnifiedNativeAd getUnifiedNativeAd() {
            return this.f9323s;
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ClickInterface
        public void handleClick(@NonNull View view) {
            notifyAdClicked();
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.BaseNativeAd
        public void prepare(@NonNull View view) {
            super.prepare(view);
            ImpressionTracker impressionTracker = this.f9324t;
            if (impressionTracker != null) {
                impressionTracker.addView(view, this);
            }
            NativeClickHandler nativeClickHandler = this.f9325u;
            if (nativeClickHandler != null) {
                nativeClickHandler.setOnClickListener(view, this);
            }
        }

        @Override // com.mopub.nativeads.StaticNativeAd, com.mopub.nativeads.ImpressionInterface
        public void recordImpression(@NonNull View view) {
            super.recordImpression(view);
            notifyAdImpressed();
        }
    }

    /* renamed from: c */
    public final boolean m30061c(Map<String, String> map) {
        return map != null && map.containsKey(AdMobBannerCustomEvent.AD_UNIT_ID_KEY);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x002f, code lost:
        if (r5 < 0) goto L_0x0032;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m30060d(java.util.Map<java.lang.String, java.lang.String> r4) {
        /*
            r3 = this;
            r0 = r4
            if (r0 == 0) goto L_0x0036
            r0 = r4
            java.lang.String r1 = "ad_choice_icon_placement"
            boolean r0 = r0.containsKey(r1)
            if (r0 != 0) goto L_0x0012
            goto L_0x0036
        L_0x0012:
            r0 = r4
            java.lang.String r1 = "ad_choice_icon_placement"
            java.lang.Object r0 = r0.get(r1)     // Catch: Exception -> 0x0024
            java.lang.String r0 = (java.lang.String) r0     // Catch: Exception -> 0x0024
            int r0 = java.lang.Integer.parseInt(r0)     // Catch: Exception -> 0x0024
            r5 = r0
            goto L_0x0027
        L_0x0024:
            r4 = move-exception
            r0 = 1
            r5 = r0
        L_0x0027:
            r0 = r5
            r1 = 3
            if (r0 > r1) goto L_0x0032
            r0 = r5
            r6 = r0
            r0 = r5
            if (r0 >= 0) goto L_0x0034
        L_0x0032:
            r0 = 1
            r6 = r0
        L_0x0034:
            r0 = r6
            return r0
        L_0x0036:
            r0 = 1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.mopub.nativeads.admob.AdMobCustomEvent.m30060d(java.util.Map):int");
    }

    @Override // com.mopub.nativeads.BaseCustomEventNative, com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(@NonNull Context context, @NonNull CustomEventNative.CustomEventNativeListener customEventNativeListener, @NonNull Map<String, Object> map, @NonNull Map<String, String> map2) {
        super.loadNativeAd(context, customEventNativeListener, map, map2);
        C6260a aVar = this.f9009a;
        if (aVar != null) {
            aVar.m23470a(AdMobCustomEvent.class.getName());
        }
        int d = m30060d(map2);
        boolean isValidUsingTestAdSource = isValidUsingTestAdSource(map2);
        if (m30061c(map2)) {
            String str = map2.get(AdMobBannerCustomEvent.AD_UNIT_ID_KEY);
            if (!TextUtils.isEmpty(str)) {
                new AdMobStaticNativeAd(context, isValidUsingTestAdSource, d, this.f9010b, this.f9011c, this.f9009a, customEventNativeListener, new ImpressionTracker(context), new NativeClickHandler(context)).fetchAd(str);
                return;
            }
            C6219a.m23549a("AdMobCustomEvent", this.f9010b, this.f9011c, NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR.toString());
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        C6219a.m23549a("AdMobCustomEvent", this.f9010b, this.f9011c, NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR.toString());
        customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
    }
}
