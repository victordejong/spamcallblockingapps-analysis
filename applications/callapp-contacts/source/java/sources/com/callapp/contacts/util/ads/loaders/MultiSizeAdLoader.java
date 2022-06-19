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

    /* renamed from: n */
    private List<JSONAdUnit> f28078n;

    /* renamed from: o */
    private MoPubNative f28079o;

    /* renamed from: p */
    private MoPubView f28080p;

    /* renamed from: m */
    private int f28077m = 0;

    /* renamed from: q */
    private final AdUtils.AdEvents f28081q = new AdUtils.AdEvents() { // from class: com.callapp.contacts.util.ads.loaders.MultiSizeAdLoader.4
        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public void onAdClick() {
            MultiSizeAdLoader.this.f28062h.onAdClick();
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public void onBannerAdFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
            CLog.m27606a(MultiSizeAdLoader.this.f28056b);
            MultiSizeAdLoader.this.f28058d++;
            if (moPubView != null) {
                moPubView.setBannerAdListener(null);
                moPubView.destroy();
            }
            MultiSizeAdLoader.m27197f(MultiSizeAdLoader.this);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public void onBannerAdLoaded(MoPubView moPubView, boolean z) {
            if (MultiSizeAdLoader.this.f28057c) {
                moPubView.destroy();
                return;
            }
            MultiSizeAdLoader.this.f28080p = moPubView;
            MultiSizeAdLoader.this.f28077m = 0;
            int m27699a = (int) Activities.m27699a(8.0f);
            Integer num = (Integer) moPubView.getTag(2131362238);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, ((int) Activities.m27699a(num != null ? num.intValue() : moPubView.getAdHeight())) + 1);
            layoutParams.setMargins(m27699a, m27699a, m27699a, m27699a);
            moPubView.setLayoutParams(layoutParams);
            MultiSizeAdLoader.this.f28058d = 1;
            MultiSizeAdLoader.this.f28059e = true;
            MultiSizeAdLoader.this.f28060f = true;
            if (!z) {
                MultiSizeAdLoader.this.m27208d();
            }
            MultiSizeAdLoader.this.f28062h.onBannerAdLoaded(moPubView, z);
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
            String str = MultiSizeAdLoader.this.f28056b;
            "onNativeFail: ".concat(String.valueOf(nativeErrorCode));
            CLog.m27606a(str);
            MultiSizeAdLoader.this.f28058d++;
            MultiSizeAdLoader.m27197f(MultiSizeAdLoader.this);
        }

        @Override // com.callapp.contacts.util.ads.AdUtils.AdEvents
        public void onNativeAdLoaded(NativeAd nativeAd, boolean z) {
            if (MultiSizeAdLoader.this.f28057c) {
                nativeAd.destroy();
                return;
            }
            MultiSizeAdLoader.this.f28077m = 0;
            MultiSizeAdLoader.this.f28058d = 1;
            MultiSizeAdLoader.this.f28059e = true;
            MultiSizeAdLoader.this.f28060f = true;
            if (!z) {
                MultiSizeAdLoader.this.m27208d();
            }
            MultiSizeAdLoader.this.f28062h.onNativeAdLoaded(nativeAd, z);
        }
    };

    public MultiSizeAdLoader(Context context, AdUtils.AdEvents adEvents, String str, int i, boolean z, NativeAdParamGetter nativeAdParamGetter, float f) {
        super(context, adEvents, str, i, z, nativeAdParamGetter, f);
    }

    /* renamed from: f */
    static /* synthetic */ void m27197f(MultiSizeAdLoader multiSizeAdLoader) {
        String str = multiSizeAdLoader.f28056b;
        new StringBuilder("Ad loading failed for idx: ").append(multiSizeAdLoader.f28077m);
        CLog.m27606a(str);
        multiSizeAdLoader.f28077m++;
        multiSizeAdLoader.f28055a.post(multiSizeAdLoader.f28065k);
    }

    public JSONAdUnit getAdUnitId() {
        if (!CollectionUtils.m26068b(this.f28078n) || this.f28077m >= this.f28078n.size()) {
            return null;
        }
        return this.f28078n.get(this.f28077m);
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader
    /* renamed from: a */
    protected final void mo27195a(String str) {
        if (StringUtils.m26045b((CharSequence) str)) {
            m27209c();
            try {
                this.f28078n = (List) Parser.m26917a(str, new TypeReference<List<JSONAdUnit>>() { // from class: com.callapp.contacts.util.ads.loaders.MultiSizeAdLoader.1
                });
            } catch (Exception e) {
                CLog.m27602a(this.f28056b, e);
            }
        }
    }

    @Override // com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader
    /* renamed from: b */
    public final void mo27194b() {
        super.mo27194b();
        MoPubNative moPubNative = this.f28079o;
        if (moPubNative != null) {
            moPubNative.destroy();
            this.f28079o = null;
        }
        CallAppApplication.get().m31858d(new Runnable() { // from class: com.callapp.contacts.util.ads.loaders.MultiSizeAdLoader.2
            @Override // java.lang.Runnable
            public void run() {
                if (MultiSizeAdLoader.this.f28080p != null) {
                    MultiSizeAdLoader.this.f28080p.destroy();
                    MultiSizeAdLoader.this.f28080p = null;
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
                    if (MultiSizeAdLoader.this.f28057c) {
                        return;
                    }
                    JSONAdUnit adUnitId = MultiSizeAdLoader.this.getAdUnitId();
                    if (adUnitId == null) {
                        MultiSizeAdLoader.this.f28077m = 0;
                        MultiSizeAdLoader.this.f28059e = false;
                        MultiSizeAdLoader.this.f28060f = true;
                        if (MultiSizeAdLoader.this.f28063i) {
                            CLog.m27606a(MultiSizeAdLoader.this.f28056b);
                            MultiSizeAdLoader.this.m27208d();
                        }
                        MultiSizeAdLoader.this.f28062h.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
                        return;
                    }
                    if (MultiSizeAdLoader.this.f28066l > BitmapDescriptorFactory.HUE_RED) {
                        hashMap = new HashMap();
                        hashMap.put("callapp_adaptive_ad_width", Float.valueOf(MultiSizeAdLoader.this.f28066l));
                    } else {
                        hashMap = null;
                    }
                    int adType = adUnitId.getAdType();
                    if (adType != 0) {
                        if (adType == 1) {
                            AdUtils.m27280a(MultiSizeAdLoader.this.f28061g, adUnitId.getAdUnitId(), MoPubView.MoPubAdSize.HEIGHT_50, MultiSizeAdLoader.this.f28081q, MultiSizeAdLoader.this.f28060f, hashMap);
                            return;
                        } else if (adType == 2) {
                            AdUtils.m27280a(MultiSizeAdLoader.this.f28061g, adUnitId.getAdUnitId(), MoPubView.MoPubAdSize.HEIGHT_250, MultiSizeAdLoader.this.f28081q, MultiSizeAdLoader.this.f28060f, hashMap);
                            return;
                        } else if (adType != 3) {
                            return;
                        }
                    }
                    AdSettings mo26137a = MultiSizeAdLoader.this.f28064j.mo26137a(adUnitId.getAdUnitId());
                    if (MultiSizeAdLoader.this.f28079o != null) {
                        MultiSizeAdLoader.this.f28079o.destroy();
                        MultiSizeAdLoader.this.f28079o = null;
                    }
                    MultiSizeAdLoader multiSizeAdLoader = MultiSizeAdLoader.this;
                    multiSizeAdLoader.f28079o = AdUtils.m27276a(mo26137a, multiSizeAdLoader.f28064j.mo26138a(mo26137a), MultiSizeAdLoader.this.f28064j.mo26136b(mo26137a), MultiSizeAdLoader.this.f28081q, MultiSizeAdLoader.this.f28060f, (Map<String, Object>) hashMap, false);
                } catch (Exception e) {
                    if (MultiSizeAdLoader.this.f28062h != null) {
                        MultiSizeAdLoader.this.f28062h.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
                    }
                    CrashlyticsUtils.m27547a(e);
                    CLog.m27602a(MultiSizeAdLoader.this.f28056b, e);
                }
            }
        };
    }
}
