package com.applovin.impl.mediation.debugger.p045ui.testmode;

import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.applovin.impl.mediation.debugger.p041a.p043b.C1123b;
import com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a;
import com.applovin.impl.mediation.debugger.p045ui.testmode.AdControlButton;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.mediation.ads.MaxInterstitialAd;
import com.applovin.mediation.ads.MaxRewardedAd;
import com.applovin.mediation.ads.MaxRewardedInterstitialAd;
import com.applovin.mediation.nativeAds.MaxNativeAdListener;
import com.applovin.mediation.nativeAds.MaxNativeAdLoader;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.C1583R;
import com.google.android.gms.internal.ads.C1676a;
import java.util.List;
/* renamed from: com.applovin.impl.mediation.debugger.ui.testmode.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/testmode/a.class */
public class ActivityC1183a extends ActivityC1130a implements AdControlButton.AbstractC1181a, MaxAdRevenueListener, MaxAdViewAdListener, MaxRewardedAdListener {

    /* renamed from: a */
    private C1123b f4285a;

    /* renamed from: b */
    private C1408l f4286b;

    /* renamed from: c */
    private MaxAdView f4287c;

    /* renamed from: d */
    private MaxAdView f4288d;

    /* renamed from: e */
    private MaxInterstitialAd f4289e;

    /* renamed from: f */
    private MaxRewardedInterstitialAd f4290f;

    /* renamed from: g */
    private MaxRewardedAd f4291g;

    /* renamed from: h */
    private MaxAd f4292h;

    /* renamed from: i */
    private MaxNativeAdLoader f4293i;

    /* renamed from: j */
    private String f4294j;

    /* renamed from: k */
    private AdControlButton f4295k;

    /* renamed from: l */
    private AdControlButton f4296l;

    /* renamed from: m */
    private AdControlButton f4297m;

    /* renamed from: n */
    private AdControlButton f4298n;

    /* renamed from: o */
    private AdControlButton f4299o;

    /* renamed from: p */
    private AdControlButton f4300p;

    /* renamed from: q */
    private Button f4301q;

    /* renamed from: r */
    private Button f4302r;

    /* renamed from: s */
    private FrameLayout f4303s;

    /* renamed from: t */
    private FrameLayout f4304t;

    /* renamed from: a */
    private AdControlButton m6203a(String str) {
        if (str.equals("test_mode_banner") || str.equals("test_mode_leader")) {
            return this.f4295k;
        }
        if (str.equals("test_mode_mrec")) {
            return this.f4296l;
        }
        if (str.equals("test_mode_interstitial")) {
            return this.f4297m;
        }
        if (str.equals("test_mode_rewarded_interstitial")) {
            return this.f4298n;
        }
        if (str.equals(this.f4294j)) {
            return this.f4299o;
        }
        if (!str.equals("test_mode_native")) {
            throw new IllegalArgumentException(C1676a.m4789h("Invalid test mode ad unit identifier provided ", str));
        }
        return this.f4300p;
    }

    /* renamed from: a */
    private void m6207a() {
        String str;
        MaxAdFormat maxAdFormat;
        boolean isTablet = AppLovinSdkUtils.isTablet(this);
        FrameLayout frameLayout = (FrameLayout) findViewById(C1583R.C1586id.banner_ad_view_container);
        if (isTablet) {
            maxAdFormat = MaxAdFormat.LEADER;
            ((TextView) findViewById(C1583R.C1586id.banner_label)).setText("Leader");
            str = "test_mode_leader";
        } else {
            maxAdFormat = MaxAdFormat.BANNER;
            str = "test_mode_banner";
        }
        if (!this.f4285a.m6366p().contains(maxAdFormat)) {
            findViewById(C1583R.C1586id.banner_control_view).setVisibility(8);
            frameLayout.setVisibility(8);
            return;
        }
        MaxAdView maxAdView = new MaxAdView(str, maxAdFormat, this.f4286b.m5519X(), this);
        this.f4287c = maxAdView;
        maxAdView.setListener(this);
        frameLayout.addView(this.f4287c, new FrameLayout.LayoutParams(AppLovinSdkUtils.dpToPx(this, maxAdFormat.getSize().getWidth()), AppLovinSdkUtils.dpToPx(this, maxAdFormat.getSize().getHeight())));
        AdControlButton adControlButton = (AdControlButton) findViewById(C1583R.C1586id.banner_control_button);
        this.f4295k = adControlButton;
        adControlButton.setOnClickListener(this);
        this.f4295k.setFormat(maxAdFormat);
    }

    /* renamed from: a */
    private void m6204a(MaxAdFormat maxAdFormat) {
        MaxAdView maxAdView;
        this.f4286b.m5534I().m6191a(this.f4285a.m6374h());
        if (MaxAdFormat.BANNER == maxAdFormat || MaxAdFormat.LEADER == maxAdFormat) {
            maxAdView = this.f4287c;
        } else if (MaxAdFormat.MREC != maxAdFormat) {
            if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
                this.f4289e.loadAd();
                return;
            } else if (MaxAdFormat.REWARDED_INTERSTITIAL == maxAdFormat) {
                this.f4290f.loadAd();
                return;
            } else if (MaxAdFormat.REWARDED == maxAdFormat) {
                this.f4291g.loadAd();
                return;
            } else if (MaxAdFormat.NATIVE != maxAdFormat) {
                return;
            } else {
                this.f4293i.loadAd();
                return;
            }
        } else {
            maxAdView = this.f4288d;
        }
        maxAdView.loadAd();
    }

    /* renamed from: b */
    private void m6202b() {
        this.f4303s = (FrameLayout) findViewById(C1583R.C1586id.mrec_ad_view_container);
        List<MaxAdFormat> m6366p = this.f4285a.m6366p();
        MaxAdFormat maxAdFormat = MaxAdFormat.MREC;
        if (!m6366p.contains(maxAdFormat)) {
            findViewById(C1583R.C1586id.mrec_control_view).setVisibility(8);
            this.f4303s.setVisibility(8);
            return;
        }
        MaxAdView maxAdView = new MaxAdView("test_mode_mrec", maxAdFormat, this.f4286b.m5519X(), this);
        this.f4288d = maxAdView;
        maxAdView.setListener(this);
        this.f4303s.addView(this.f4288d, new FrameLayout.LayoutParams(-1, -1));
        AdControlButton adControlButton = (AdControlButton) findViewById(C1583R.C1586id.mrec_control_button);
        this.f4296l = adControlButton;
        adControlButton.setOnClickListener(this);
        this.f4296l.setFormat(maxAdFormat);
    }

    /* renamed from: b */
    private void m6200b(MaxAdFormat maxAdFormat) {
        if (MaxAdFormat.INTERSTITIAL == maxAdFormat) {
            this.f4289e.showAd();
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL == maxAdFormat) {
            this.f4290f.showAd();
        } else if (MaxAdFormat.REWARDED != maxAdFormat) {
        } else {
            this.f4291g.showAd();
        }
    }

    /* renamed from: c */
    private void m6199c() {
        List<MaxAdFormat> m6366p = this.f4285a.m6366p();
        MaxAdFormat maxAdFormat = MaxAdFormat.INTERSTITIAL;
        if (!m6366p.contains(maxAdFormat)) {
            findViewById(C1583R.C1586id.interstitial_control_view).setVisibility(8);
            return;
        }
        MaxInterstitialAd maxInterstitialAd = new MaxInterstitialAd("test_mode_interstitial", this.f4286b.m5519X(), this);
        this.f4289e = maxInterstitialAd;
        maxInterstitialAd.setListener(this);
        AdControlButton adControlButton = (AdControlButton) findViewById(C1583R.C1586id.interstitial_control_button);
        this.f4297m = adControlButton;
        adControlButton.setOnClickListener(this);
        this.f4297m.setFormat(maxAdFormat);
    }

    /* renamed from: d */
    private void m6197d() {
        List<MaxAdFormat> m6366p = this.f4285a.m6366p();
        MaxAdFormat maxAdFormat = MaxAdFormat.REWARDED;
        if (!m6366p.contains(maxAdFormat)) {
            findViewById(C1583R.C1586id.rewarded_control_view).setVisibility(8);
            return;
        }
        StringBuilder m8752j = C0082b.m8752j("test_mode_rewarded_");
        m8752j.append(this.f4285a.m6374h());
        String sb = m8752j.toString();
        this.f4294j = sb;
        MaxRewardedAd maxRewardedAd = MaxRewardedAd.getInstance(sb, this.f4286b.m5519X(), this);
        this.f4291g = maxRewardedAd;
        maxRewardedAd.setListener(this);
        AdControlButton adControlButton = (AdControlButton) findViewById(C1583R.C1586id.rewarded_control_button);
        this.f4299o = adControlButton;
        adControlButton.setOnClickListener(this);
        this.f4299o.setFormat(maxAdFormat);
    }

    /* renamed from: e */
    private void m6195e() {
        this.f4304t = (FrameLayout) findViewById(C1583R.C1586id.native_ad_view_container);
        if (!this.f4285a.m6365q()) {
            findViewById(C1583R.C1586id.native_control_view).setVisibility(8);
            this.f4304t.setVisibility(8);
            return;
        }
        MaxNativeAdLoader maxNativeAdLoader = new MaxNativeAdLoader("test_mode_native", this.f4286b.m5519X(), this);
        this.f4293i = maxNativeAdLoader;
        maxNativeAdLoader.setNativeAdListener(new MaxNativeAdListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.a.3
            @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
            public void onNativeAdClicked(MaxAd maxAd) {
                ActivityC1183a.this.onAdClicked(maxAd);
            }

            @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
            public void onNativeAdLoadFailed(String str, MaxError maxError) {
                ActivityC1183a.this.onAdLoadFailed(str, maxError);
            }

            @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
            public void onNativeAdLoaded(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
                if (ActivityC1183a.this.f4292h != null) {
                    ActivityC1183a.this.f4293i.destroy(ActivityC1183a.this.f4292h);
                }
                ActivityC1183a.this.f4292h = maxAd;
                ActivityC1183a.this.f4304t.removeAllViews();
                ActivityC1183a.this.f4304t.addView(maxNativeAdView);
                ActivityC1183a.this.onAdLoaded(maxAd);
            }
        });
        this.f4293i.setRevenueListener(this);
        AdControlButton adControlButton = (AdControlButton) findViewById(C1583R.C1586id.native_control_button);
        this.f4300p = adControlButton;
        adControlButton.setOnClickListener(this);
        this.f4300p.setFormat(MaxAdFormat.NATIVE);
    }

    public void initialize(C1123b c1123b) {
        this.f4285a = c1123b;
        this.f4286b = c1123b.m6360v();
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdClicked(MaxAd maxAd) {
        Utils.showToast("onAdClicked", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdCollapsed(MaxAd maxAd) {
        Utils.showToast("onAdCollapsed", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayFailed(MaxAd maxAd, MaxError maxError) {
        AdControlButton m6203a = m6203a(maxAd.getAdUnitId());
        m6203a.setControlState(AdControlButton.EnumC1182b.LOAD);
        Utils.showAlert("", "Failed to display " + m6203a.getFormat().getDisplayName() + " with error code: " + maxError.getCode(), this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdDisplayed(MaxAd maxAd) {
        Utils.showToast("onAdDisplayed", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdViewAdListener
    public void onAdExpanded(MaxAd maxAd) {
        Utils.showToast("onAdExpanded", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdHidden(MaxAd maxAd) {
        Utils.showToast("onAdHidden", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoadFailed(String str, MaxError maxError) {
        AdControlButton m6203a = m6203a(str);
        m6203a.setControlState(AdControlButton.EnumC1182b.LOAD);
        Utils.showAlert("", "Failed to load " + m6203a.getFormat().getLabel() + " with error code: " + maxError.getCode(), this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoaded(MaxAd maxAd) {
        m6203a(maxAd.getAdUnitId()).setControlState((maxAd.getFormat().isAdViewAd() || maxAd.getFormat().equals(MaxAdFormat.NATIVE)) ? AdControlButton.EnumC1182b.LOAD : AdControlButton.EnumC1182b.SHOW);
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(MaxAd maxAd) {
        Utils.showToast("onAdRevenuePaid", maxAd, this);
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.testmode.AdControlButton.AbstractC1181a
    public void onClick(AdControlButton adControlButton) {
        AdControlButton.EnumC1182b enumC1182b = AdControlButton.EnumC1182b.LOAD;
        if (enumC1182b == adControlButton.getControlState()) {
            adControlButton.setControlState(AdControlButton.EnumC1182b.LOADING);
            m6204a(adControlButton.getFormat());
        } else if (AdControlButton.EnumC1182b.SHOW != adControlButton.getControlState()) {
        } else {
            adControlButton.setControlState(enumC1182b);
            m6200b(adControlButton.getFormat());
        }
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.f4285a == null) {
            C1479t.m5107i("MaxDebuggerMultiAdActivity", "Failed to initialize activity with a network model.");
            return;
        }
        setContentView(C1583R.layout.mediation_debugger_multi_ad_activity);
        setTitle(this.f4285a.m6373i() + " Test Ads");
        m6207a();
        m6202b();
        m6199c();
        m6197d();
        m6195e();
        findViewById(C1583R.C1586id.rewarded_interstitial_control_view).setVisibility(8);
        this.f4301q = (Button) findViewById(C1583R.C1586id.show_mrec_button);
        this.f4302r = (Button) findViewById(C1583R.C1586id.show_native_button);
        if (!this.f4285a.m6365q() || !this.f4285a.m6366p().contains(MaxAdFormat.MREC)) {
            this.f4301q.setVisibility(8);
            this.f4302r.setVisibility(8);
        } else {
            this.f4304t.setVisibility(8);
            this.f4301q.setBackgroundColor(-1);
            this.f4302r.setBackgroundColor(-3355444);
            this.f4301q.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ActivityC1183a.this.f4303s.setVisibility(0);
                    ActivityC1183a.this.f4304t.setVisibility(8);
                    ActivityC1183a.this.f4301q.setBackgroundColor(-1);
                    ActivityC1183a.this.f4302r.setBackgroundColor(-3355444);
                }
            });
            this.f4302r.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.testmode.a.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    ActivityC1183a.this.f4304t.setVisibility(0);
                    ActivityC1183a.this.f4303s.setVisibility(8);
                    ActivityC1183a.this.f4302r.setBackgroundColor(-1);
                    ActivityC1183a.this.f4301q.setBackgroundColor(-3355444);
                }
            });
        }
        try {
            setRequestedOrientation(7);
        } catch (Throwable th) {
            C1479t.m5113c("AppLovinSdk", "Failed to set portrait orientation", th);
        }
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a, android.app.Activity
    public void onDestroy() {
        MaxAd maxAd;
        super.onDestroy();
        this.f4286b.m5534I().m6191a((String) null);
        MaxAdView maxAdView = this.f4287c;
        if (maxAdView != null) {
            maxAdView.destroy();
        }
        MaxAdView maxAdView2 = this.f4288d;
        if (maxAdView2 != null) {
            maxAdView2.destroy();
        }
        MaxInterstitialAd maxInterstitialAd = this.f4289e;
        if (maxInterstitialAd != null) {
            maxInterstitialAd.destroy();
        }
        MaxRewardedAd maxRewardedAd = this.f4291g;
        if (maxRewardedAd != null) {
            maxRewardedAd.destroy();
        }
        MaxNativeAdLoader maxNativeAdLoader = this.f4293i;
        if (maxNativeAdLoader == null || (maxAd = this.f4292h) == null) {
            return;
        }
        maxNativeAdLoader.destroy(maxAd);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onRewardedVideoCompleted(MaxAd maxAd) {
        Utils.showToast("onRewardedVideoCompleted", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onRewardedVideoStarted(MaxAd maxAd) {
        Utils.showToast("onRewardedVideoStarted", maxAd, this);
    }

    @Override // com.applovin.mediation.MaxRewardedAdListener
    public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
        Utils.showToast("onUserRewarded", maxAd, this);
    }
}
