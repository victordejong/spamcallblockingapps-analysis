package com.applovin.impl.mediation.ads;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import android.text.TextUtils;
import com.applovin.impl.mediation.MaxErrorImpl;
import com.applovin.impl.mediation.ads.AbstractC1078a;
import com.applovin.impl.mediation.p038a.C1047d;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl.class */
public class MaxNativeAdLoaderImpl extends AbstractC1078a {

    /* renamed from: b */
    private String f3893b;

    /* renamed from: c */
    private MaxNativeAdListener f3894c;

    /* renamed from: a */
    private final C1076a f3892a = new C1076a();

    /* renamed from: d */
    private final Map<String, MaxNativeAdView> f3895d = new HashMap();

    /* renamed from: e */
    private final Object f3896e = new Object();

    /* renamed from: com.applovin.impl.mediation.ads.MaxNativeAdLoaderImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxNativeAdLoaderImpl$a.class */
    public class C1076a implements AbstractC1078a.AbstractC1079a {
        private C1076a() {
            MaxNativeAdLoaderImpl.this = r4;
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            C1496j.m5023a(MaxNativeAdLoaderImpl.this.f3894c, maxAd, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, MaxError maxError) {
            MaxNativeAdLoaderImpl.this.m6547a(((MaxErrorImpl) maxError).getLoadTag());
            C1496j.m5021a(MaxNativeAdLoaderImpl.this.f3894c, str, maxError, true);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(final MaxAd maxAd) {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.mediation.ads.MaxNativeAdLoaderImpl.a.1
                @Override // java.lang.Runnable
                public void run() {
                    C1047d c1047d = (C1047d) maxAd;
                    c1047d.m6621d(MaxNativeAdLoaderImpl.this.f3893b);
                    c1047d.m6620e(MaxNativeAdLoaderImpl.this.customPostbackData);
                    MaxNativeAd m6667u = c1047d.m6667u();
                    MaxNativeAdView m6547a = MaxNativeAdLoaderImpl.this.m6547a(c1047d.m6720a());
                    MaxNativeAdView maxNativeAdView = m6547a;
                    if (m6547a == null) {
                        String m6665w = c1047d.m6665w();
                        if (!StringUtils.isValidString(m6665w)) {
                            MaxNativeAdLoaderImpl maxNativeAdLoaderImpl = MaxNativeAdLoaderImpl.this;
                            maxNativeAdLoaderImpl.logger.m5116b(maxNativeAdLoaderImpl.tag, "Native ad failed to load: Both template and native ad view are null. Please select a template in the dashboard or provide a `MaxNativeAdView` when loading the ad to render the native ad.");
                            C1496j.m5021a(MaxNativeAdLoaderImpl.this.f3894c, MaxNativeAdLoaderImpl.this.adUnitId, (MaxError) new MaxErrorImpl(-5001, "Both template and native ad view are null. Please select a template in the dashboard or provide a `MaxNativeAdView` when loading the ad to render the native ad."), true);
                            return;
                        }
                        maxNativeAdView = new MaxNativeAdView(m6665w, MaxNativeAdLoaderImpl.this.sdk.m5532K());
                    }
                    c1047d.m6668a(maxNativeAdView);
                    C1076a c1076a = C1076a.this;
                    maxNativeAdView.render(c1047d, c1076a, MaxNativeAdLoaderImpl.this.sdk);
                    m6667u.prepareViewForInteraction(maxNativeAdView);
                    C1496j.m5022a(MaxNativeAdLoaderImpl.this.f3894c, maxNativeAdView, maxAd, true);
                }
            });
        }

        @Override // com.applovin.mediation.MaxAdRevenueListener
        public void onAdRevenuePaid(MaxAd maxAd) {
            C1496j.m5024a(MaxNativeAdLoaderImpl.this.revenueListener, maxAd, true);
        }
    }

    public MaxNativeAdLoaderImpl(String str, C1408l c1408l, Context context) {
        super(str, MaxAdFormat.NATIVE, "MaxNativeAdLoader", c1408l);
        C1479t c1479t = this.logger;
        String str2 = this.tag;
        c1479t.m5116b(str2, "Created new MaxNativeAdLoader (" + this + ")");
    }

    /* renamed from: a */
    public MaxNativeAdView m6547a(String str) {
        MaxNativeAdView remove;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.f3896e) {
            remove = this.f3895d.remove(str);
        }
        return remove;
    }

    /* renamed from: a */
    private void m6546a(String str, MaxNativeAdView maxNativeAdView) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (this.f3896e) {
            this.f3895d.put(str, maxNativeAdView);
        }
    }

    @Override // com.applovin.impl.mediation.ads.AbstractC1078a
    public void destroy() {
        this.f3894c = null;
        super.destroy();
    }

    public void destroy(MaxAd maxAd) {
        C1479t c1479t;
        StringBuilder sb;
        String str;
        String str2;
        if (maxAd instanceof C1047d) {
            C1047d c1047d = (C1047d) maxAd;
            if (c1047d.m6664x()) {
                C1479t c1479t2 = this.logger;
                String str3 = this.tag;
                c1479t2.m5116b(str3, "Native ad(" + c1047d + ") has already been destroyed");
                return;
            }
            MaxNativeAdView m6666v = c1047d.m6666v();
            if (m6666v != null) {
                m6666v.recycle();
                return;
            }
            c1479t = this.logger;
            str2 = this.tag;
            sb = new StringBuilder();
            sb.append("Destroy failed on native ad(");
            sb.append(c1047d);
            str = "): native ad view not found";
        } else {
            c1479t = this.logger;
            String str4 = this.tag;
            sb = new StringBuilder();
            sb.append("Destroy failed on non-native ad(");
            sb.append(maxAd);
            str = ")";
            str2 = str4;
        }
        sb.append(str);
        c1479t.m5116b(str2, sb.toString());
    }

    public String getPlacement() {
        return this.f3893b;
    }

    public void loadAd(MaxNativeAdView maxNativeAdView) {
        C1479t c1479t = this.logger;
        String str = this.tag;
        StringBuilder m8752j = C0082b.m8752j("Loading native ad for '");
        m8752j.append(this.adUnitId);
        m8752j.append("' and notifying ");
        m8752j.append(this.f3892a);
        m8752j.append("...");
        c1479t.m5116b(str, m8752j.toString());
        this.loadRequestBuilder.m5161a("integration_type", maxNativeAdView != null ? "custom_ad_view" : "template");
        String lowerCase = UUID.randomUUID().toString().toLowerCase(Locale.US);
        m6546a(lowerCase, maxNativeAdView);
        this.sdk.m5539D().loadAd(this.adUnitId, lowerCase, MaxAdFormat.NATIVE, this.localExtraParameters, this.loadRequestBuilder.m5164a(), this.sdk.m5532K(), this.f3892a);
    }

    public void setNativeAdListener(MaxNativeAdListener maxNativeAdListener) {
        C1479t c1479t = this.logger;
        String str = this.tag;
        c1479t.m5116b(str, "Setting native ad listener: " + maxNativeAdListener);
        this.f3894c = maxNativeAdListener;
    }

    public void setPlacement(String str) {
        this.f3893b = str;
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("MaxNativeAdLoader{adUnitId='");
        C0033h.m8882o(m8752j, this.adUnitId, '\'', ", nativeAdListener=");
        m8752j.append(this.f3894c);
        m8752j.append(", revenueListener=");
        m8752j.append(this.revenueListener);
        m8752j.append('}');
        return m8752j.toString();
    }
}
