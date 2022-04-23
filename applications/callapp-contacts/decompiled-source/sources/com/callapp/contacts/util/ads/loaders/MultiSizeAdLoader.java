package com.callapp.contacts.util.ads.loaders;

import android.content.Context;
import android.widget.FrameLayout;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.util.Activities;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.CrashlyticsUtils;
import com.callapp.contacts.util.ads.AdSettings;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.contacts.util.ads.JSONAdUnit;
import com.callapp.contacts.util.ads.NativeAdParamGetter;
import com.callapp.contacts.util.serializer.string.Parser;
import com.callapp.framework.util.CollectionUtils;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.MoPubNative;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/loaders/MultiSizeAdLoader.class */
public class MultiSizeAdLoader extends BaseMultiSizeAdLoader {
    private List<JSONAdUnit> n;
    private MoPubNative o;
    private MoPubView p;
    private int m = 0;
    private final AdUtils.AdEvents q = new AdUtils.AdEvents() { // from class: com.callapp.contacts.util.ads.loaders.MultiSizeAdLoader.4
        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public void onAdClick() {
            MultiSizeAdLoader.this.h.onAdClick();
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
            CLog.a(MultiSizeAdLoader.this.f16103b);
            MultiSizeAdLoader.this.f16105d++;
            if (moPubView != null) {
                moPubView.setBannerAdListener(null);
                moPubView.destroy();
            }
            MultiSizeAdLoader.f(MultiSizeAdLoader.this);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public void onBannerAdLoaded(MoPubView moPubView, boolean z) {
            if (MultiSizeAdLoader.this.f16104c) {
                moPubView.destroy();
                return;
            }
            MultiSizeAdLoader.this.p = moPubView;
            MultiSizeAdLoader.this.m = 0;
            int a2 = (int) Activities.a(8.0f);
            Integer num = (Integer) moPubView.getTag(2131362238);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, ((int) Activities.a(num != null ? num.intValue() : moPubView.getAdHeight())) + 1);
            layoutParams.setMargins(a2, a2, a2, a2);
            moPubView.setLayoutParams(layoutParams);
            MultiSizeAdLoader.this.f16105d = 1;
            MultiSizeAdLoader.this.e = true;
            MultiSizeAdLoader.this.f = true;
            if (!z) {
                MultiSizeAdLoader.this.d();
            }
            MultiSizeAdLoader.this.h.onBannerAdLoaded(moPubView, z);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
            AdUtils.AdEvents._CC.$default$onInterstitialClicked(this, moPubInterstitial);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
            AdUtils.AdEvents._CC.$default$onInterstitialDismissed(this, moPubInterstitial);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
            AdUtils.AdEvents._CC.$default$onInterstitialFailed(this, moPubInterstitial, moPubErrorCode);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
            AdUtils.AdEvents._CC.$default$onInterstitialLoaded(this, moPubInterstitial);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public /* synthetic */ void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
            AdUtils.AdEvents._CC.$default$onInterstitialShown(this, moPubInterstitial);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
            String str = MultiSizeAdLoader.this.f16103b;
            "onNativeFail: ".concat(String.valueOf(nativeErrorCode));
            CLog.a(str);
            MultiSizeAdLoader.this.f16105d++;
            MultiSizeAdLoader.f(MultiSizeAdLoader.this);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public void onNativeAdLoaded(NativeAd nativeAd, boolean z) {
            if (MultiSizeAdLoader.this.f16104c) {
                nativeAd.destroy();
                return;
            }
            MultiSizeAdLoader.this.m = 0;
            MultiSizeAdLoader.this.f16105d = 1;
            MultiSizeAdLoader.this.e = true;
            MultiSizeAdLoader.this.f = true;
            if (!z) {
                MultiSizeAdLoader.this.d();
            }
            MultiSizeAdLoader.this.h.onNativeAdLoaded(nativeAd, z);
        }
    };

    public MultiSizeAdLoader(Context context, AdUtils.AdEvents adEvents, String str, int i, boolean z, NativeAdParamGetter nativeAdParamGetter, float f) {
        super(context, adEvents, str, i, z, nativeAdParamGetter, f);
    }

    static /* synthetic */ void f(MultiSizeAdLoader multiSizeAdLoader) {
        String str = multiSizeAdLoader.f16103b;
        new StringBuilder("Ad loading failed for idx: ").append(multiSizeAdLoader.m);
        CLog.a(str);
        multiSizeAdLoader.m++;
        multiSizeAdLoader.f16102a.post(multiSizeAdLoader.k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public JSONAdUnit getAdUnitId() {
        if (!CollectionUtils.b(this.n) || this.m >= this.n.size()) {
            return null;
        }
        return this.n.get(this.m);
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader
    protected final void a(String str) {
        if (StringUtils.b((CharSequence) str)) {
            c();
            try {
                this.n = (List) Parser.a(str, new TypeReference<List<JSONAdUnit>>() { // from class: com.callapp.contacts.util.ads.loaders.MultiSizeAdLoader.1
                });
            } catch (Exception e) {
                CLog.a(this.f16103b, e);
            }
        }
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader
    public final void b() {
        super.b();
        MoPubNative moPubNative = this.o;
        if (moPubNative != null) {
            moPubNative.destroy();
            this.o = null;
        }
        CallAppApplication.get().d(new Runnable() { // from class: com.callapp.contacts.util.ads.loaders.MultiSizeAdLoader.2
            @Override // java.lang.Runnable
            public void run() {
                if (MultiSizeAdLoader.this.p != null) {
                    MultiSizeAdLoader.this.p.destroy();
                    MultiSizeAdLoader.this.p = null;
                }
            }
        });
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader
    protected Runnable getAdRunnable() {
        return new Runnable() { // from class: com.callapp.contacts.util.ads.loaders.MultiSizeAdLoader.3
            @Override // java.lang.Runnable
            public void run() {
                HashMap hashMap;
                try {
                    if (!MultiSizeAdLoader.this.f16104c) {
                        JSONAdUnit adUnitId = MultiSizeAdLoader.this.getAdUnitId();
                        if (adUnitId != null) {
                            if (MultiSizeAdLoader.this.l > BitmapDescriptorFactory.HUE_RED) {
                                hashMap = new HashMap();
                                hashMap.put("callapp_adaptive_ad_width", Float.valueOf(MultiSizeAdLoader.this.l));
                            } else {
                                hashMap = null;
                            }
                            int adType = adUnitId.getAdType();
                            if (adType != 0) {
                                if (adType == 1) {
                                    AdUtils.a(MultiSizeAdLoader.this.g, adUnitId.getAdUnitId(), MoPubView.MoPubAdSize.HEIGHT_50, MultiSizeAdLoader.this.q, MultiSizeAdLoader.this.f, hashMap);
                                    return;
                                } else if (adType == 2) {
                                    AdUtils.a(MultiSizeAdLoader.this.g, adUnitId.getAdUnitId(), MoPubView.MoPubAdSize.HEIGHT_250, MultiSizeAdLoader.this.q, MultiSizeAdLoader.this.f, hashMap);
                                    return;
                                } else if (adType != 3) {
                                    return;
                                }
                            }
                            AdSettings a2 = MultiSizeAdLoader.this.j.a(adUnitId.getAdUnitId());
                            if (MultiSizeAdLoader.this.o != null) {
                                MultiSizeAdLoader.this.o.destroy();
                                MultiSizeAdLoader.this.o = null;
                            }
                            MultiSizeAdLoader multiSizeAdLoader = MultiSizeAdLoader.this;
                            multiSizeAdLoader.o = AdUtils.a(a2, multiSizeAdLoader.j.a(a2), MultiSizeAdLoader.this.j.b(a2), MultiSizeAdLoader.this.q, MultiSizeAdLoader.this.f, (Map<String, Object>) hashMap, false);
                            return;
                        }
                        MultiSizeAdLoader.this.m = 0;
                        MultiSizeAdLoader.this.e = false;
                        MultiSizeAdLoader.this.f = true;
                        if (MultiSizeAdLoader.this.i) {
                            CLog.a(MultiSizeAdLoader.this.f16103b);
                            MultiSizeAdLoader.this.d();
                        }
                        MultiSizeAdLoader.this.h.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
                    }
                } catch (Exception e) {
                    if (MultiSizeAdLoader.this.h != null) {
                        MultiSizeAdLoader.this.h.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
                    }
                    CrashlyticsUtils.a(e);
                    CLog.a(MultiSizeAdLoader.this.f16103b, e);
                }
            }
        };
    }
}
