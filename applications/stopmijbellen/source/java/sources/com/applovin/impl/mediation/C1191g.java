package com.applovin.impl.mediation;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.p012v4.media.C0082b;
import android.view.View;
import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0516f;
import androidx.recyclerview.widget.C0608b;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.impl.mediation.p038a.AbstractC1044a;
import com.applovin.impl.mediation.p038a.C1046c;
import com.applovin.impl.mediation.p038a.C1049f;
import com.applovin.impl.mediation.p038a.C1052h;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p057e.AbstractRunnableC1331a;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxError;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.MaxInterstitialAdViewAdapter;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdViewAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxRewardedInterstitialAdapter;
import com.applovin.mediation.adapter.MaxSignalProvider;
import com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import com.applovin.mediation.adapters.MediationAdapterBase;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdView;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.applovin.impl.mediation.g */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/g.class */
public class C1191g {

    /* renamed from: b */
    private final C1408l f4333b;

    /* renamed from: c */
    private final C1479t f4334c;

    /* renamed from: d */
    private final String f4335d;

    /* renamed from: e */
    private final C1049f f4336e;

    /* renamed from: f */
    private final String f4337f;

    /* renamed from: g */
    private MaxAdapter f4338g;

    /* renamed from: h */
    private String f4339h;

    /* renamed from: i */
    private AbstractC1044a f4340i;

    /* renamed from: j */
    private View f4341j;

    /* renamed from: k */
    private MaxNativeAd f4342k;

    /* renamed from: l */
    private MaxNativeAdView f4343l;

    /* renamed from: n */
    private MaxAdapterResponseParameters f4345n;

    /* renamed from: r */
    private final boolean f4349r;

    /* renamed from: a */
    private final Handler f4332a = new Handler(Looper.getMainLooper());

    /* renamed from: m */
    private final C1211a f4344m = new C1211a(this, null);

    /* renamed from: o */
    private final AtomicBoolean f4346o = new AtomicBoolean(true);

    /* renamed from: p */
    private final AtomicBoolean f4347p = new AtomicBoolean(false);

    /* renamed from: q */
    private final AtomicBoolean f4348q = new AtomicBoolean(false);

    /* renamed from: com.applovin.impl.mediation.g$1 */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/g$1.class */
    public class RunnableC11921 implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdapterInitializationParameters f4350a;

        /* renamed from: b */
        public final /* synthetic */ Activity f4351b;

        /* renamed from: c */
        public final /* synthetic */ Runnable f4352c;

        public RunnableC11921(MaxAdapterInitializationParameters maxAdapterInitializationParameters, Activity activity, Runnable runnable) {
            C1191g.this = r4;
            this.f4350a = maxAdapterInitializationParameters;
            this.f4351b = activity;
            this.f4352c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            C1479t c1479t = C1191g.this.f4334c;
            StringBuilder m8752j = C0082b.m8752j("Initializing ");
            m8752j.append(C1191g.this.f4337f);
            m8752j.append(" on thread: ");
            m8752j.append(Thread.currentThread());
            m8752j.append(" with 'run_on_ui_thread' value: ");
            m8752j.append(C1191g.this.f4336e.m6647U());
            c1479t.m5116b("MediationAdapterWrapper", m8752j.toString());
            C1191g.this.f4338g.initialize(this.f4350a, this.f4351b, new MaxAdapter.OnCompletionListener() { // from class: com.applovin.impl.mediation.g.1.1
                @Override // com.applovin.mediation.adapter.MaxAdapter.OnCompletionListener
                public void onCompletion(final MaxAdapter.InitializationStatus initializationStatus, final String str) {
                    AppLovinSdkUtils.runOnUiThreadDelayed(new Runnable() { // from class: com.applovin.impl.mediation.g.1.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            long elapsedRealtime2 = SystemClock.elapsedRealtime();
                            C11931 c11931 = C11931.this;
                            C1191g.this.f4333b.m5540C().m6181a(C1191g.this.f4336e, elapsedRealtime2 - elapsedRealtime, initializationStatus, str);
                            Runnable runnable = RunnableC11921.this.f4352c;
                            if (runnable != null) {
                                runnable.run();
                            }
                        }
                    }, C1191g.this.f4336e.m6642Z());
                }
            });
        }
    }

    /* renamed from: com.applovin.impl.mediation.g$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/g$a.class */
    public class C1211a implements MaxAdViewAdapterListener, MaxInterstitialAdapterListener, MaxNativeAdAdapterListener, MaxRewardedAdapterListener, MaxRewardedInterstitialAdapterListener {

        /* renamed from: b */
        private MediationServiceImpl.C1040a f4407b;

        private C1211a() {
            C1191g.this = r4;
        }

        public /* synthetic */ C1211a(C1191g c1191g, RunnableC11921 runnableC11921) {
            this();
        }

        /* renamed from: a */
        public void m6122a(MediationServiceImpl.C1040a c1040a) {
            if (c1040a != null) {
                this.f4407b = c1040a;
                return;
            }
            throw new IllegalArgumentException("No listener specified");
        }

        /* renamed from: a */
        private void m6118a(String str, final Bundle bundle) {
            C1191g.this.f4348q.set(true);
            m6117a(str, this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.1
                @Override // java.lang.Runnable
                public void run() {
                    if (C1191g.this.f4347p.compareAndSet(false, true)) {
                        C1211a.this.f4407b.m6724a(C1191g.this.f4340i, bundle);
                    }
                }
            });
        }

        /* renamed from: a */
        private void m6117a(final String str, final MaxAdListener maxAdListener, final Runnable runnable) {
            C1191g.this.f4332a.post(new Runnable() { // from class: com.applovin.impl.mediation.g.a.14
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable.run();
                    } catch (Exception e) {
                        MaxAdListener maxAdListener2 = maxAdListener;
                        C1479t.m5113c("MediationAdapterWrapper", C0608b.m7625j(C0082b.m8752j("Failed to forward call ("), str, ") to ", maxAdListener2 != null ? maxAdListener2.getClass().getName() : null), e);
                    }
                }
            });
        }

        /* renamed from: a */
        public void m6116a(String str, final MaxError maxError) {
            m6117a(str, this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.12
                @Override // java.lang.Runnable
                public void run() {
                    if (C1191g.this.f4347p.compareAndSet(false, true)) {
                        C1211a.this.f4407b.onAdLoadFailed(C1191g.this.f4339h, maxError);
                    }
                }
            });
        }

        /* renamed from: b */
        private void m6114b(String str, final Bundle bundle) {
            if (C1191g.this.f4340i.m6698s().compareAndSet(false, true)) {
                m6117a(str, this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.15
                    @Override // java.lang.Runnable
                    public void run() {
                        C1211a.this.f4407b.m6723b(C1191g.this.f4340i, bundle);
                    }
                });
            }
        }

        /* renamed from: b */
        public void m6113b(String str, final MaxError maxError) {
            m6117a(str, this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.16
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onAdDisplayFailed(C1191g.this.f4340i, maxError);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdClicked() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": adview ad clicked");
            m6117a("onAdViewAdClicked", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.8
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onAdClicked(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdCollapsed() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": adview ad collapsed");
            m6117a("onAdViewAdCollapsed", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.11
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onAdCollapsed(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayFailed(MaxAdapterError maxAdapterError) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5112d("MediationAdapterWrapper", C1191g.this.f4337f + ": adview ad failed to display with error: " + maxAdapterError);
            m6113b("onAdViewAdDisplayFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed() {
            onAdViewAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed(Bundle bundle) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": adview ad displayed with extra info: " + bundle);
            m6114b("onAdViewAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdExpanded() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": adview ad expanded");
            m6117a("onAdViewAdExpanded", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.10
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onAdExpanded(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdHidden() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": adview ad hidden");
            m6117a("onAdViewAdHidden", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.9
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onAdHidden(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoadFailed(MaxAdapterError maxAdapterError) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5112d("MediationAdapterWrapper", C1191g.this.f4337f + ": adview ad ad failed to load with error: " + maxAdapterError);
            m6116a("onAdViewAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view) {
            onAdViewAdLoaded(view, null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view, Bundle bundle) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": adview ad loaded with extra info: " + bundle);
            C1191g.this.f4341j = view;
            m6118a("onAdViewAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdClicked() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": interstitial ad clicked");
            m6117a("onInterstitialAdClicked", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.17
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onAdClicked(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5112d("MediationAdapterWrapper", C1191g.this.f4337f + ": interstitial ad failed to display with error " + maxAdapterError);
            m6113b("onInterstitialAdDisplayFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed() {
            onInterstitialAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed(Bundle bundle) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": interstitial ad displayed with extra info: " + bundle);
            m6114b("onInterstitialAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdHidden() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": interstitial ad hidden");
            m6117a("onInterstitialAdHidden", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.18
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onAdHidden(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoadFailed(MaxAdapterError maxAdapterError) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5112d("MediationAdapterWrapper", C1191g.this.f4337f + ": interstitial ad failed to load with error " + maxAdapterError);
            m6116a("onInterstitialAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded() {
            onInterstitialAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded(Bundle bundle) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": interstitial ad loaded with extra info: " + bundle);
            m6118a("onInterstitialAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdClicked() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": native ad clicked");
            m6117a("onNativeAdClicked", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.13
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onAdClicked(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdDisplayed(Bundle bundle) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": native ad displayed with extra info: " + bundle);
            m6114b("onNativeAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdLoadFailed(MaxAdapterError maxAdapterError) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5112d("MediationAdapterWrapper", C1191g.this.f4337f + ": native ad ad failed to load with error: " + maxAdapterError);
            m6116a("onNativeAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxNativeAdAdapterListener
        public void onNativeAdLoaded(MaxNativeAd maxNativeAd, Bundle bundle) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": native ad loaded with extra info: " + bundle);
            C1191g.this.f4342k = maxNativeAd;
            m6118a("onNativeAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdClicked() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded ad clicked");
            m6117a("onRewardedAdClicked", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.19
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onAdClicked(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayFailed(MaxAdapterError maxAdapterError) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5112d("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded ad display failed with error: " + maxAdapterError);
            m6113b("onRewardedAdDisplayFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed() {
            onRewardedAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed(Bundle bundle) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded ad displayed with extra info: " + bundle);
            m6114b("onRewardedAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdHidden() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded ad hidden");
            m6117a("onRewardedAdHidden", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.20
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onAdHidden(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoadFailed(MaxAdapterError maxAdapterError) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5112d("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded ad failed to load with error: " + maxAdapterError);
            m6116a("onRewardedAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded() {
            onRewardedAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded(Bundle bundle) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded ad loaded with extra info: " + bundle);
            m6118a("onRewardedAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdVideoCompleted() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded video completed");
            m6117a("onRewardedAdVideoCompleted", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.3
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onRewardedVideoCompleted(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdVideoStarted() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded video started");
            m6117a("onRewardedAdVideoStarted", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.2
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onRewardedVideoStarted(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdClicked() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded interstitial ad clicked");
            m6117a("onRewardedInterstitialAdClicked", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.4
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onAdClicked(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5112d("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded interstitial ad display failed with error: " + maxAdapterError);
            m6113b("onRewardedInterstitialAdDisplayFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdDisplayed() {
            onRewardedInterstitialAdDisplayed(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdDisplayed(Bundle bundle) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded interstitial ad displayed with extra info: " + bundle);
            m6114b("onRewardedInterstitialAdDisplayed", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdHidden() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded interstitial ad hidden");
            m6117a("onRewardedInterstitialAdHidden", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.5
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onAdHidden(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdLoadFailed(MaxAdapterError maxAdapterError) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5112d("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded ad failed to load with error: " + maxAdapterError);
            m6116a("onRewardedInterstitialAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdLoaded() {
            onRewardedInterstitialAdLoaded(null);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdLoaded(Bundle bundle) {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded interstitial ad loaded with extra info: " + bundle);
            m6118a("onRewardedInterstitialAdLoaded", bundle);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdVideoCompleted() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded interstitial completed");
            m6117a("onRewardedInterstitialAdVideoCompleted", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.7
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onRewardedVideoCompleted(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onRewardedInterstitialAdVideoStarted() {
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": rewarded interstitial started");
            m6117a("onRewardedInterstitialAdVideoStarted", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.6
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onRewardedVideoStarted(C1191g.this.f4340i);
                }
            });
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener, com.applovin.mediation.adapter.listeners.MaxRewardedInterstitialAdapterListener
        public void onUserRewarded(final MaxReward maxReward) {
            if (!(C1191g.this.f4340i instanceof C1046c)) {
                return;
            }
            final C1046c c1046c = (C1046c) C1191g.this.f4340i;
            if (!c1046c.m6677K().compareAndSet(false, true)) {
                return;
            }
            C1479t c1479t = C1191g.this.f4334c;
            c1479t.m5114c("MediationAdapterWrapper", C1191g.this.f4337f + ": user was rewarded: " + maxReward);
            m6117a("onUserRewarded", this.f4407b, new Runnable() { // from class: com.applovin.impl.mediation.g.a.21
                @Override // java.lang.Runnable
                public void run() {
                    C1211a.this.f4407b.onUserRewarded(c1046c, maxReward);
                }
            });
        }
    }

    /* renamed from: com.applovin.impl.mediation.g$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/g$b.class */
    public static class C1233b {

        /* renamed from: a */
        private final C1052h f4438a;

        /* renamed from: b */
        private final MaxSignalCollectionListener f4439b;

        /* renamed from: c */
        private final AtomicBoolean f4440c = new AtomicBoolean();

        public C1233b(C1052h c1052h, MaxSignalCollectionListener maxSignalCollectionListener) {
            this.f4438a = c1052h;
            this.f4439b = maxSignalCollectionListener;
        }
    }

    /* renamed from: com.applovin.impl.mediation.g$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/g$c.class */
    public class C1234c extends AbstractRunnableC1331a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C1234c() {
            super("TaskTimeoutMediatedAd", r5.f4333b);
            C1191g.this = r5;
        }

        public /* synthetic */ C1234c(C1191g c1191g, RunnableC11921 runnableC11921) {
            this();
        }

        /* renamed from: a */
        private void m6109a(AbstractC1044a abstractC1044a) {
            if (abstractC1044a != null) {
                this.f5113b.m5536G().m6108a(abstractC1044a);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C1191g.this.f4347p.get()) {
                if (C1191g.this.f4340i.m6706k()) {
                    m5733a(C1191g.this.f4337f + " is timing out, considering JS Tag ad loaded: " + C1191g.this.f4340i);
                    m6109a(C1191g.this.f4340i);
                    return;
                }
                m5728d(C1191g.this.f4337f + " is timing out " + C1191g.this.f4340i + "...");
                m6109a(C1191g.this.f4340i);
                C1191g.this.f4344m.m6116a(m5727e(), new MaxErrorImpl(-5101, "Adapter timed out"));
            }
        }
    }

    /* renamed from: com.applovin.impl.mediation.g$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/g$d.class */
    public class C1235d extends AbstractRunnableC1331a {

        /* renamed from: c */
        private final C1233b f4443c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C1235d(C1233b c1233b) {
            super("TaskTimeoutSignalCollection", r5.f4333b);
            C1191g.this = r5;
            this.f4443c = c1233b;
        }

        public /* synthetic */ C1235d(C1191g c1191g, C1233b c1233b, RunnableC11921 runnableC11921) {
            this(c1233b);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f4443c.f4440c.get()) {
                m5728d(C1191g.this.f4337f + " is timing out " + this.f4443c.f4438a + "...");
                C1191g c1191g = C1191g.this;
                StringBuilder m8752j = C0082b.m8752j("The adapter (");
                m8752j.append(C1191g.this.f4337f);
                m8752j.append(") timed out");
                c1191g.m6142b(m8752j.toString(), this.f4443c);
            }
        }
    }

    public C1191g(C1049f c1049f, MaxAdapter maxAdapter, boolean z, C1408l c1408l) {
        if (c1049f != null) {
            if (maxAdapter == null) {
                throw new IllegalArgumentException("No adapter specified");
            }
            if (c1408l == null) {
                throw new IllegalArgumentException("No sdk specified");
            }
            this.f4335d = c1049f.m6653O();
            this.f4338g = maxAdapter;
            this.f4333b = c1408l;
            this.f4334c = c1408l.m5542A();
            this.f4336e = c1049f;
            this.f4337f = maxAdapter.getClass().getSimpleName();
            this.f4349r = z;
            return;
        }
        throw new IllegalArgumentException("No adapter name specified");
    }

    /* renamed from: a */
    private void m6152a(final Runnable runnable, final AbstractC1044a abstractC1044a) {
        m6147a("show_ad", new Runnable() { // from class: com.applovin.impl.mediation.g.5
            @Override // java.lang.Runnable
            public void run() {
                try {
                    runnable.run();
                } catch (Throwable th) {
                    StringBuilder m8752j = C0082b.m8752j("Failed to start displaying ad");
                    m8752j.append(abstractC1044a);
                    m8752j.append(" : ");
                    m8752j.append(th);
                    String sb = m8752j.toString();
                    C1479t.m5107i("MediationAdapterWrapper", sb);
                    C1191g.this.f4344m.m6113b("show_ad", new MaxErrorImpl(MaxAdapterError.ERROR_CODE_UNSPECIFIED, sb));
                    C1191g.this.m6151a("show_ad");
                    C1191g.this.f4333b.m5541B().m6169a(C1191g.this.f4336e.m6654N(), "show_ad", C1191g.this.f4340i);
                }
            }
        });
    }

    /* renamed from: a */
    public void m6151a(String str) {
        this.f4334c.m5114c("MediationAdapterWrapper", C0608b.m7625j(C0082b.m8752j("Marking "), this.f4337f, " as disabled due to: ", str));
        this.f4346o.set(false);
    }

    /* renamed from: a */
    public void m6149a(String str, C1233b c1233b) {
        if (!c1233b.f4440c.compareAndSet(false, true) || c1233b.f4439b == null) {
            return;
        }
        c1233b.f4439b.onSignalCollected(str);
    }

    /* renamed from: a */
    private void m6147a(final String str, final Runnable runnable) {
        Runnable runnable2 = new Runnable() { // from class: com.applovin.impl.mediation.g.8
            @Override // java.lang.Runnable
            public void run() {
                try {
                    C1479t c1479t = C1191g.this.f4334c;
                    c1479t.m5116b("MediationAdapterWrapper", C1191g.this.f4337f + ": running " + str + "...");
                    runnable.run();
                    C1479t c1479t2 = C1191g.this.f4334c;
                    c1479t2.m5116b("MediationAdapterWrapper", C1191g.this.f4337f + ": finished " + str + "");
                } catch (Throwable th) {
                    StringBuilder m8752j = C0082b.m8752j("Unable to run adapter operation ");
                    m8752j.append(str);
                    m8752j.append(", marking ");
                    m8752j.append(C1191g.this.f4337f);
                    m8752j.append(" as disabled");
                    C1479t.m5113c("MediationAdapterWrapper", m8752j.toString(), th);
                    C1191g c1191g = C1191g.this;
                    StringBuilder m8752j2 = C0082b.m8752j("fail_");
                    m8752j2.append(str);
                    c1191g.m6151a(m8752j2.toString());
                    if (str.equals("destroy")) {
                        return;
                    }
                    C1191g.this.f4333b.m5541B().m6169a(C1191g.this.f4336e.m6654N(), str, C1191g.this.f4340i);
                }
            }
        };
        if (this.f4336e.m6647U()) {
            this.f4332a.post(runnable2);
        } else {
            runnable2.run();
        }
    }

    /* renamed from: b */
    public void m6142b(String str, C1233b c1233b) {
        if (!c1233b.f4440c.compareAndSet(false, true) || c1233b.f4439b == null) {
            return;
        }
        c1233b.f4439b.onSignalCollectionFailed(str);
    }

    /* renamed from: b */
    private boolean m6145b(AbstractC1044a abstractC1044a, Activity activity) {
        MaxErrorImpl maxErrorImpl;
        if (abstractC1044a != null) {
            if (abstractC1044a.m6710g() == null) {
                C1479t.m5107i("MediationAdapterWrapper", "Adapter has been garbage collected");
                maxErrorImpl = new MaxErrorImpl(-1, "Adapter has been garbage collected");
            } else if (abstractC1044a.m6710g() != this) {
                throw new IllegalArgumentException("Mediated ad belongs to a different adapter");
            } else {
                if (activity == null) {
                    throw new IllegalArgumentException("No activity specified");
                }
                if (this.f4346o.get()) {
                    if (!m6133g()) {
                        throw new IllegalStateException(C0082b.m8754h(C0082b.m8752j("Mediation adapter '"), this.f4337f, "' does not have an ad loaded. Please load an ad first"));
                    }
                    return true;
                }
                StringBuilder m8752j = C0082b.m8752j("Mediation adapter '");
                m8752j.append(this.f4337f);
                m8752j.append("' is disabled. Showing ads with this adapter is disabled.");
                String sb = m8752j.toString();
                C1479t.m5107i("MediationAdapterWrapper", sb);
                maxErrorImpl = new MaxErrorImpl(-1, sb);
            }
            this.f4344m.m6113b("ad_show", maxErrorImpl);
            return false;
        }
        throw new IllegalArgumentException("No mediated ad specified");
    }

    /* renamed from: a */
    public View m6165a() {
        return this.f4341j;
    }

    /* renamed from: a */
    public void m6164a(AbstractC1044a abstractC1044a, final Activity activity) {
        Runnable runnable;
        if (m6145b(abstractC1044a, activity)) {
            if (abstractC1044a.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.15
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxInterstitialAdapter) C1191g.this.f4338g).showInterstitialAd(C1191g.this.f4345n, activity, C1191g.this.f4344m);
                    }
                };
            } else if (abstractC1044a.getFormat() == MaxAdFormat.REWARDED) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.16
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxRewardedAdapter) C1191g.this.f4338g).showRewardedAd(C1191g.this.f4345n, activity, C1191g.this.f4344m);
                    }
                };
            } else if (abstractC1044a.getFormat() != MaxAdFormat.REWARDED_INTERSTITIAL) {
                throw new IllegalStateException("Failed to show " + abstractC1044a + ": " + abstractC1044a.getFormat() + " is not a supported ad format");
            } else {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.2
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxRewardedInterstitialAdapter) C1191g.this.f4338g).showRewardedInterstitialAd(C1191g.this.f4345n, activity, C1191g.this.f4344m);
                    }
                };
            }
            m6152a(runnable, abstractC1044a);
        }
    }

    /* renamed from: a */
    public void m6163a(AbstractC1044a abstractC1044a, final ViewGroup viewGroup, final AbstractC0516f abstractC0516f, final Activity activity) {
        Runnable runnable;
        if (m6145b(abstractC1044a, activity)) {
            if (abstractC1044a.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.3
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxInterstitialAdViewAdapter) C1191g.this.f4338g).showInterstitialAd(C1191g.this.f4345n, viewGroup, abstractC0516f, activity, C1191g.this.f4344m);
                    }
                };
            } else if (abstractC1044a.getFormat() != MaxAdFormat.REWARDED) {
                throw new IllegalStateException("Failed to show " + abstractC1044a + ": " + abstractC1044a.getFormat() + " is not a supported ad format");
            } else {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.4
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxRewardedAdViewAdapter) C1191g.this.f4338g).showRewardedAd(C1191g.this.f4345n, viewGroup, abstractC0516f, activity, C1191g.this.f4344m);
                    }
                };
            }
            m6152a(runnable, abstractC1044a);
        }
    }

    /* renamed from: a */
    public void m6155a(MaxAdapterInitializationParameters maxAdapterInitializationParameters, Activity activity, Runnable runnable) {
        m6147a("initialize", new RunnableC11921(maxAdapterInitializationParameters, activity, runnable));
    }

    /* renamed from: a */
    public void m6154a(final MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, final C1052h c1052h, final Activity activity, MaxSignalCollectionListener maxSignalCollectionListener) {
        if (maxSignalCollectionListener != null) {
            if (this.f4346o.get()) {
                final C1233b c1233b = new C1233b(c1052h, maxSignalCollectionListener);
                MaxAdapter maxAdapter = this.f4338g;
                if (!(maxAdapter instanceof MaxSignalProvider)) {
                    m6142b(C0082b.m8754h(C0082b.m8752j("The adapter ("), this.f4337f, ") does not support signal collection"), c1233b);
                    return;
                }
                final MaxSignalProvider maxSignalProvider = (MaxSignalProvider) maxAdapter;
                m6147a("collect_signal", new Runnable() { // from class: com.applovin.impl.mediation.g.6
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            maxSignalProvider.collectSignal(maxAdapterSignalCollectionParameters, activity, new MaxSignalCollectionListener() { // from class: com.applovin.impl.mediation.g.6.1
                                @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
                                public void onSignalCollected(String str) {
                                    RunnableC12066 runnableC12066 = RunnableC12066.this;
                                    C1191g.this.m6149a(str, c1233b);
                                }

                                @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
                                public void onSignalCollectionFailed(String str) {
                                    RunnableC12066 runnableC12066 = RunnableC12066.this;
                                    C1191g.this.m6142b(str, c1233b);
                                }
                            });
                        } catch (Throwable th) {
                            C1191g c1191g = C1191g.this;
                            StringBuilder m8752j = C0082b.m8752j("Failed signal collection for ");
                            m8752j.append(C1191g.this.f4335d);
                            m8752j.append(" due to exception: ");
                            m8752j.append(th);
                            c1191g.m6142b(m8752j.toString(), c1233b);
                            C1191g.this.m6151a("collect_signal");
                            C1191g.this.f4333b.m5541B().m6169a(C1191g.this.f4336e.m6654N(), "collect_signal", C1191g.this.f4340i);
                        }
                        if (!c1233b.f4440c.get()) {
                            if (c1052h.m6643Y() == 0) {
                                C1479t c1479t = C1191g.this.f4334c;
                                StringBuilder m8752j2 = C0082b.m8752j("Failing signal collection ");
                                m8752j2.append(c1052h);
                                m8752j2.append(" since it has 0 timeout");
                                c1479t.m5116b("MediationAdapterWrapper", m8752j2.toString());
                                C1191g c1191g2 = C1191g.this;
                                StringBuilder m8752j3 = C0082b.m8752j("The adapter (");
                                m8752j3.append(C1191g.this.f4337f);
                                m8752j3.append(") has 0 timeout");
                                c1191g2.m6142b(m8752j3.toString(), c1233b);
                                return;
                            }
                            long m6643Y = c1052h.m6643Y();
                            C1479t c1479t2 = C1191g.this.f4334c;
                            StringBuilder sb = new StringBuilder();
                            if (m6643Y <= 0) {
                                sb.append("Negative timeout set for ");
                                sb.append(c1052h);
                                sb.append(", not scheduling a timeout");
                                c1479t2.m5116b("MediationAdapterWrapper", sb.toString());
                                return;
                            }
                            sb.append("Setting timeout ");
                            sb.append(c1052h.m6643Y());
                            sb.append("ms. for ");
                            sb.append(c1052h);
                            c1479t2.m5116b("MediationAdapterWrapper", sb.toString());
                            C1191g.this.f4333b.m5525R().m5652a(new C1235d(C1191g.this, c1233b, null), C1362o.EnumC1364a.MEDIATION_TIMEOUT, c1052h.m6643Y());
                        }
                    }
                });
                return;
            }
            StringBuilder m8752j = C0082b.m8752j("Mediation adapter '");
            m8752j.append(this.f4337f);
            m8752j.append("' is disabled. Signal collection ads with this adapter is disabled.");
            C1479t.m5107i("MediationAdapterWrapper", m8752j.toString());
            maxSignalCollectionListener.onSignalCollectionFailed("The adapter (" + this.f4337f + ") is disabled");
            return;
        }
        throw new IllegalArgumentException("No callback specified");
    }

    /* renamed from: a */
    public void m6153a(MaxNativeAdView maxNativeAdView) {
        this.f4343l = maxNativeAdView;
    }

    /* renamed from: a */
    public void m6150a(String str, AbstractC1044a abstractC1044a) {
        this.f4339h = str;
        this.f4340i = abstractC1044a;
    }

    /* renamed from: a */
    public void m6148a(String str, final MaxAdapterResponseParameters maxAdapterResponseParameters, final AbstractC1044a abstractC1044a, final Activity activity, MediationServiceImpl.C1040a c1040a) {
        Runnable runnable;
        if (abstractC1044a != null) {
            if (!this.f4346o.get()) {
                StringBuilder m8752j = C0082b.m8752j("Mediation adapter '");
                m8752j.append(this.f4337f);
                m8752j.append("' was disabled due to earlier failures. Loading ads with this adapter is disabled.");
                String sb = m8752j.toString();
                C1479t.m5107i("MediationAdapterWrapper", sb);
                c1040a.onAdLoadFailed(str, new MaxErrorImpl(-1, sb));
                return;
            }
            this.f4345n = maxAdapterResponseParameters;
            this.f4344m.m6122a(c1040a);
            if (abstractC1044a.getFormat() == MaxAdFormat.INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.9
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxInterstitialAdapter) C1191g.this.f4338g).loadInterstitialAd(maxAdapterResponseParameters, activity, C1191g.this.f4344m);
                    }
                };
            } else if (abstractC1044a.getFormat() == MaxAdFormat.REWARDED) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.10
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxRewardedAdapter) C1191g.this.f4338g).loadRewardedAd(maxAdapterResponseParameters, activity, C1191g.this.f4344m);
                    }
                };
            } else if (abstractC1044a.getFormat() == MaxAdFormat.REWARDED_INTERSTITIAL) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.11
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxRewardedInterstitialAdapter) C1191g.this.f4338g).loadRewardedInterstitialAd(maxAdapterResponseParameters, activity, C1191g.this.f4344m);
                    }
                };
            } else if (abstractC1044a.getFormat() == MaxAdFormat.NATIVE) {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.12
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MediationAdapterBase) C1191g.this.f4338g).loadNativeAd(maxAdapterResponseParameters, activity, C1191g.this.f4344m);
                    }
                };
            } else if (!abstractC1044a.getFormat().isAdViewAd()) {
                throw new IllegalStateException("Failed to load " + abstractC1044a + ": " + abstractC1044a.getFormat() + " is not a supported ad format");
            } else {
                runnable = new Runnable() { // from class: com.applovin.impl.mediation.g.13
                    @Override // java.lang.Runnable
                    public void run() {
                        ((MaxAdViewAdapter) C1191g.this.f4338g).loadAdViewAd(maxAdapterResponseParameters, abstractC1044a.getFormat(), activity, C1191g.this.f4344m);
                    }
                };
            }
            final Runnable runnable2 = runnable;
            m6147a("load_ad", new Runnable() { // from class: com.applovin.impl.mediation.g.14
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        runnable2.run();
                    } catch (Throwable th) {
                        StringBuilder m8752j2 = C0082b.m8752j("Failed start loading ");
                        m8752j2.append(abstractC1044a);
                        m8752j2.append(" : ");
                        m8752j2.append(th);
                        String sb2 = m8752j2.toString();
                        C1479t.m5107i("MediationAdapterWrapper", sb2);
                        C1191g.this.f4344m.m6116a("load_ad", new MaxErrorImpl(-1, sb2));
                        C1191g.this.m6151a("load_ad");
                        C1191g.this.f4333b.m5541B().m6169a(C1191g.this.f4336e.m6654N(), "load_ad", C1191g.this.f4340i);
                    }
                    if (!C1191g.this.f4347p.get()) {
                        long m6643Y = C1191g.this.f4336e.m6643Y();
                        if (m6643Y <= 0) {
                            C1479t c1479t = C1191g.this.f4334c;
                            StringBuilder m8752j3 = C0082b.m8752j("Negative timeout set for ");
                            m8752j3.append(abstractC1044a);
                            m8752j3.append(", not scheduling a timeout");
                            c1479t.m5116b("MediationAdapterWrapper", m8752j3.toString());
                            return;
                        }
                        C1479t c1479t2 = C1191g.this.f4334c;
                        c1479t2.m5116b("MediationAdapterWrapper", "Setting timeout " + m6643Y + "ms. for " + abstractC1044a);
                        C1191g.this.f4333b.m5525R().m5652a(new C1234c(C1191g.this, null), C1362o.EnumC1364a.MEDIATION_TIMEOUT, m6643Y);
                    }
                }
            });
            return;
        }
        throw new IllegalArgumentException("No mediated ad specified");
    }

    /* renamed from: b */
    public MaxNativeAd m6146b() {
        return this.f4342k;
    }

    /* renamed from: c */
    public MaxNativeAdView m6141c() {
        return this.f4343l;
    }

    /* renamed from: d */
    public String m6139d() {
        return this.f4335d;
    }

    /* renamed from: e */
    public MediationServiceImpl.C1040a m6137e() {
        return this.f4344m.f4407b;
    }

    /* renamed from: f */
    public boolean m6135f() {
        return this.f4346o.get();
    }

    /* renamed from: g */
    public boolean m6133g() {
        return this.f4347p.get() && this.f4348q.get();
    }

    /* renamed from: h */
    public String m6131h() {
        MaxAdapter maxAdapter = this.f4338g;
        if (maxAdapter != null) {
            try {
                return maxAdapter.getSdkVersion();
            } catch (Throwable th) {
                C1479t.m5113c("MediationAdapterWrapper", "Unable to get adapter's SDK version, marking " + this + " as disabled", th);
                m6151a("sdk_version");
                this.f4333b.m5541B().m6169a(this.f4336e.m6654N(), "sdk_version", this.f4340i);
                return null;
            }
        }
        return null;
    }

    /* renamed from: i */
    public String m6129i() {
        MaxAdapter maxAdapter = this.f4338g;
        if (maxAdapter != null) {
            try {
                return maxAdapter.getAdapterVersion();
            } catch (Throwable th) {
                C1479t.m5113c("MediationAdapterWrapper", "Unable to get adapter version, marking " + this + " as disabled", th);
                m6151a("adapter_version");
                this.f4333b.m5541B().m6169a(this.f4336e.m6654N(), "adapter_version", this.f4340i);
                return null;
            }
        }
        return null;
    }

    /* renamed from: j */
    public void m6127j() {
        if (this.f4349r) {
            return;
        }
        m6147a("destroy", new Runnable() { // from class: com.applovin.impl.mediation.g.7
            @Override // java.lang.Runnable
            public void run() {
                C1191g.this.m6151a("destroy");
                C1191g.this.f4338g.onDestroy();
                C1191g.this.f4338g = null;
                C1191g.this.f4341j = null;
                C1191g.this.f4342k = null;
                C1191g.this.f4343l = null;
            }
        });
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("MediationAdapterWrapper{adapterTag='");
        m8752j.append(this.f4337f);
        m8752j.append("'");
        m8752j.append('}');
        return m8752j.toString();
    }
}
