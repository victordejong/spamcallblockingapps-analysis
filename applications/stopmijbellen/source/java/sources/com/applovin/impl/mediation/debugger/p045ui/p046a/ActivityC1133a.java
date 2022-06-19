package com.applovin.impl.mediation.debugger.p045ui.p046a;

import android.content.DialogInterface;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Bundle;
import android.support.p012v4.media.C0082b;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.applovin.impl.mediation.debugger.p041a.p042a.C1118a;
import com.applovin.impl.mediation.debugger.p041a.p042a.C1119b;
import com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a;
import com.applovin.impl.mediation.debugger.p045ui.p046a.C1139b;
import com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1167a;
import com.applovin.impl.mediation.debugger.p045ui.p050d.C1169c;
import com.applovin.impl.mediation.debugger.p045ui.testmode.AdControlButton;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxDebuggerAdUnitDetailActivity;
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
/* renamed from: com.applovin.impl.mediation.debugger.ui.a.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/debugger/ui/a/a.class */
public class ActivityC1133a extends ActivityC1130a implements AdControlButton.AbstractC1181a, MaxAdRevenueListener, MaxAdViewAdListener, MaxRewardedAdListener {

    /* renamed from: a */
    private C1408l f4093a;

    /* renamed from: b */
    private C1118a f4094b;

    /* renamed from: c */
    private C1139b f4095c;

    /* renamed from: d */
    private C1119b f4096d;

    /* renamed from: e */
    private MaxAdView f4097e;

    /* renamed from: f */
    private MaxInterstitialAd f4098f;

    /* renamed from: g */
    private MaxRewardedInterstitialAd f4099g;

    /* renamed from: h */
    private MaxRewardedAd f4100h;

    /* renamed from: i */
    private MaxNativeAdView f4101i;

    /* renamed from: j */
    private MaxNativeAdLoader f4102j;

    /* renamed from: k */
    private DialogC1146d f4103k;

    /* renamed from: l */
    private ListView f4104l;

    /* renamed from: m */
    private View f4105m;

    /* renamed from: n */
    private AdControlButton f4106n;

    /* renamed from: o */
    private TextView f4107o;

    /* renamed from: a */
    private void m6340a() {
        String m6410a = this.f4094b.m6410a();
        if (this.f4094b.m6406d().isAdViewAd()) {
            MaxAdView maxAdView = new MaxAdView(m6410a, this.f4094b.m6406d(), this.f4093a.m5519X(), this);
            this.f4097e = maxAdView;
            maxAdView.setListener(this);
        } else if (MaxAdFormat.INTERSTITIAL == this.f4094b.m6406d()) {
            MaxInterstitialAd maxInterstitialAd = new MaxInterstitialAd(m6410a, this.f4093a.m5519X(), this);
            this.f4098f = maxInterstitialAd;
            maxInterstitialAd.setListener(this);
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL == this.f4094b.m6406d()) {
            MaxRewardedInterstitialAd maxRewardedInterstitialAd = new MaxRewardedInterstitialAd(m6410a, this.f4093a.m5519X(), this);
            this.f4099g = maxRewardedInterstitialAd;
            maxRewardedInterstitialAd.setListener(this);
        } else if (MaxAdFormat.REWARDED == this.f4094b.m6406d()) {
            MaxRewardedAd maxRewardedAd = MaxRewardedAd.getInstance(m6410a, this.f4093a.m5519X(), this);
            this.f4100h = maxRewardedAd;
            maxRewardedAd.setListener(this);
        } else if (MaxAdFormat.NATIVE != this.f4094b.m6406d()) {
        } else {
            MaxNativeAdLoader maxNativeAdLoader = new MaxNativeAdLoader(m6410a, this.f4093a.m5519X(), this);
            this.f4102j = maxNativeAdLoader;
            maxNativeAdLoader.setNativeAdListener(new MaxNativeAdListener() { // from class: com.applovin.impl.mediation.debugger.ui.a.a.2
                @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
                public void onNativeAdClicked(MaxAd maxAd) {
                    ActivityC1133a.this.onAdClicked(maxAd);
                }

                @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
                public void onNativeAdLoadFailed(String str, MaxError maxError) {
                    ActivityC1133a.this.onAdLoadFailed(str, maxError);
                }

                @Override // com.applovin.mediation.nativeAds.MaxNativeAdListener
                public void onNativeAdLoaded(MaxNativeAdView maxNativeAdView, MaxAd maxAd) {
                    ActivityC1133a.this.f4101i = maxNativeAdView;
                    ActivityC1133a.this.onAdLoaded(maxAd);
                }
            });
            this.f4102j.setRevenueListener(this);
        }
    }

    /* renamed from: a */
    private void m6339a(final ViewGroup viewGroup, AppLovinSdkUtils.Size size, DialogInterface.OnShowListener onShowListener) {
        if (this.f4103k != null) {
            return;
        }
        DialogC1146d dialogC1146d = new DialogC1146d(viewGroup, size, this);
        this.f4103k = dialogC1146d;
        dialogC1146d.setOnShowListener(onShowListener);
        this.f4103k.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.applovin.impl.mediation.debugger.ui.a.a.4
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                ViewGroup viewGroup2 = viewGroup;
                if (viewGroup2 instanceof MaxAdView) {
                    ((MaxAdView) viewGroup2).stopAutoRefresh();
                }
                ActivityC1133a.this.f4103k = null;
            }
        });
        this.f4103k.show();
    }

    /* renamed from: a */
    private void m6334a(MaxAdFormat maxAdFormat) {
        if (this.f4096d != null) {
            this.f4093a.m5534I().m6191a(this.f4096d.m6401b());
            this.f4093a.m5534I().m6189a(true);
        }
        if (maxAdFormat.isAdViewAd()) {
            this.f4097e.setPlacement("[Mediation Debugger Live Ad]");
            this.f4097e.loadAd();
        } else if (MaxAdFormat.INTERSTITIAL == this.f4094b.m6406d()) {
            this.f4098f.loadAd();
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL == this.f4094b.m6406d()) {
            this.f4099g.loadAd();
        } else if (MaxAdFormat.REWARDED == this.f4094b.m6406d()) {
            this.f4100h.loadAd();
        } else if (MaxAdFormat.NATIVE != this.f4094b.m6406d()) {
            Utils.showToast("Live ads currently unavailable for ad format", this);
        } else {
            this.f4102j.setPlacement("[Mediation Debugger Live Ad]");
            this.f4102j.loadAd();
        }
    }

    /* renamed from: b */
    private void m6333b(MaxAdFormat maxAdFormat) {
        if (maxAdFormat.isAdViewAd()) {
            m6339a(this.f4097e, maxAdFormat.getSize(), new DialogInterface.OnShowListener() { // from class: com.applovin.impl.mediation.debugger.ui.a.a.3
                @Override // android.content.DialogInterface.OnShowListener
                public void onShow(DialogInterface dialogInterface) {
                    ActivityC1133a.this.f4097e.startAutoRefresh();
                }
            });
        } else if (MaxAdFormat.INTERSTITIAL == this.f4094b.m6406d()) {
            this.f4098f.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.REWARDED_INTERSTITIAL == this.f4094b.m6406d()) {
            this.f4099g.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.REWARDED == this.f4094b.m6406d()) {
            this.f4100h.showAd("[Mediation Debugger Live Ad]");
        } else if (MaxAdFormat.NATIVE != this.f4094b.m6406d()) {
        } else {
            m6339a(this.f4101i, MaxAdFormat.MREC.getSize(), null);
        }
    }

    public void initialize(final C1118a c1118a, C1119b c1119b, final C1408l c1408l) {
        this.f4093a = c1408l;
        this.f4094b = c1118a;
        this.f4096d = c1119b;
        C1139b c1139b = new C1139b(c1118a, c1119b, this);
        this.f4095c = c1139b;
        c1139b.m6226a(new AbstractView$OnClickListenerC1173d.AbstractC1175a() { // from class: com.applovin.impl.mediation.debugger.ui.a.a.1
            @Override // com.applovin.impl.mediation.debugger.p045ui.p050d.AbstractView$OnClickListenerC1173d.AbstractC1175a
            /* renamed from: a */
            public void mo6214a(C1167a c1167a, final C1169c c1169c) {
                if (c1169c instanceof C1139b.C1140a) {
                    ActivityC1133a.this.startActivity(MaxDebuggerAdUnitDetailActivity.class, c1408l.m5491ad(), new ActivityC1130a.AbstractC1132a<MaxDebuggerAdUnitDetailActivity>() { // from class: com.applovin.impl.mediation.debugger.ui.a.a.1.1
                        /* renamed from: a */
                        public void mo6279a(MaxDebuggerAdUnitDetailActivity maxDebuggerAdUnitDetailActivity) {
                            C1119b m6323a = ((C1139b.C1140a) c1169c).m6323a();
                            C11341 c11341 = C11341.this;
                            maxDebuggerAdUnitDetailActivity.initialize(c1118a, m6323a, c1408l);
                        }
                    });
                }
            }
        });
        m6340a();
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
        this.f4106n.setControlState(AdControlButton.EnumC1182b.LOAD);
        this.f4107o.setText("");
        Utils.showAlert("", "Failed to display with error code: " + maxError.getCode(), this);
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
        this.f4106n.setControlState(AdControlButton.EnumC1182b.LOAD);
        this.f4107o.setText("");
        if (204 == maxError.getCode()) {
            Utils.showAlert("No Fill", "No fills often happen in live environments. Please make sure to use the Mediation Debugger test mode before you go live.", this);
            return;
        }
        StringBuilder m8752j = C0082b.m8752j("Failed to load with error code: ");
        m8752j.append(maxError.getCode());
        Utils.showAlert("", m8752j.toString(), this);
    }

    @Override // com.applovin.mediation.MaxAdListener
    public void onAdLoaded(MaxAd maxAd) {
        TextView textView = this.f4107o;
        textView.setText(maxAd.getNetworkName() + " ad loaded");
        this.f4106n.setControlState(AdControlButton.EnumC1182b.SHOW);
        if (maxAd.getFormat().isAdViewAd()) {
            m6339a(this.f4097e, maxAd.getFormat().getSize(), null);
        } else if (MaxAdFormat.NATIVE != this.f4094b.m6406d()) {
        } else {
            m6339a(this.f4101i, MaxAdFormat.MREC.getSize(), null);
        }
    }

    @Override // com.applovin.mediation.MaxAdRevenueListener
    public void onAdRevenuePaid(MaxAd maxAd) {
        Utils.showToast("onAdRevenuePaid", maxAd, this);
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.testmode.AdControlButton.AbstractC1181a
    public void onClick(AdControlButton adControlButton) {
        if (this.f4093a.m5534I().m6192a()) {
            Utils.showAlert("Not Supported", "Ad loads are not supported while Test Mode is enabled. Please restart the app.", this);
            return;
        }
        AdControlButton.EnumC1182b enumC1182b = AdControlButton.EnumC1182b.LOAD;
        if (enumC1182b == adControlButton.getControlState()) {
            adControlButton.setControlState(AdControlButton.EnumC1182b.LOADING);
            m6334a(this.f4094b.m6406d());
        } else if (AdControlButton.EnumC1182b.SHOW != adControlButton.getControlState()) {
        } else {
            if (!this.f4094b.m6406d().isAdViewAd() && this.f4094b.m6406d() != MaxAdFormat.NATIVE) {
                adControlButton.setControlState(enumC1182b);
            }
            m6333b(this.f4094b.m6406d());
        }
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C1583R.layout.mediation_debugger_ad_unit_detail_activity);
        setTitle(this.f4095c.m6331a());
        this.f4104l = (ListView) findViewById(C1583R.C1586id.listView);
        this.f4105m = findViewById(C1583R.C1586id.ad_presenter_view);
        this.f4106n = (AdControlButton) findViewById(C1583R.C1586id.ad_control_button);
        this.f4107o = (TextView) findViewById(C1583R.C1586id.status_textview);
        this.f4104l.setAdapter((ListAdapter) this.f4095c);
        this.f4107o.setText(this.f4093a.m5534I().m6192a() ? "Not Supported while Test Mode is enabled" : "Tap to load an ad");
        this.f4107o.setTypeface(Typeface.DEFAULT_BOLD);
        this.f4106n.setOnClickListener(this);
        ShapeDrawable shapeDrawable = new ShapeDrawable();
        shapeDrawable.setPadding(0, 10, 0, 0);
        shapeDrawable.getPaint().setColor(-1);
        shapeDrawable.getPaint().setShadowLayer(10, 0.0f, -10, 855638016);
        shapeDrawable.setShape(new RectShape());
        LayerDrawable layerDrawable = new LayerDrawable(new Drawable[]{shapeDrawable});
        layerDrawable.setLayerInset(0, 0, 10, 0, 0);
        this.f4105m.setBackground(layerDrawable);
    }

    @Override // com.applovin.impl.mediation.debugger.p045ui.ActivityC1130a, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        if (this.f4096d != null) {
            this.f4093a.m5534I().m6191a((String) null);
            this.f4093a.m5534I().m6189a(false);
        }
        MaxAdView maxAdView = this.f4097e;
        if (maxAdView != null) {
            maxAdView.destroy();
        }
        MaxInterstitialAd maxInterstitialAd = this.f4098f;
        if (maxInterstitialAd != null) {
            maxInterstitialAd.destroy();
        }
        MaxRewardedAd maxRewardedAd = this.f4100h;
        if (maxRewardedAd != null) {
            maxRewardedAd.destroy();
        }
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
