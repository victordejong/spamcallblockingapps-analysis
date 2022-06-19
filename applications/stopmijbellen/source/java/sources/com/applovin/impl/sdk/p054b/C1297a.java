package com.applovin.impl.sdk.p054b;

import android.content.Context;
import android.support.p012v4.media.C0082b;
import android.view.ViewGroup;
import androidx.lifecycle.AbstractC0516f;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p053ad.AbstractC1293g;
import com.applovin.impl.sdk.p053ad.AppLovinAdImpl;
import com.applovin.impl.sdk.p053ad.C1292f;
import com.applovin.impl.sdk.p056d.C1328f;
import com.applovin.impl.sdk.p057e.C1332aa;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.p057e.C1380v;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdRewardListener;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinErrorCodes;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.lang.ref.SoftReference;
import java.util.Map;
/* renamed from: com.applovin.impl.sdk.b.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/b/a.class */
public class C1297a {

    /* renamed from: a */
    public final C1408l f4627a;

    /* renamed from: b */
    public final AppLovinAdServiceImpl f4628b;

    /* renamed from: c */
    private AppLovinAd f4629c;

    /* renamed from: d */
    private String f4630d;

    /* renamed from: e */
    private SoftReference<AppLovinAdLoadListener> f4631e;

    /* renamed from: g */
    private volatile String f4633g;

    /* renamed from: f */
    private final Object f4632f = new Object();

    /* renamed from: h */
    private volatile boolean f4634h = false;

    /* renamed from: com.applovin.impl.sdk.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/b/a$a.class */
    public class C1299a implements AppLovinAdLoadListener {

        /* renamed from: b */
        private final AppLovinAdLoadListener f4637b;

        public C1299a(AppLovinAdLoadListener appLovinAdLoadListener) {
            C1297a.this = r4;
            this.f4637b = appLovinAdLoadListener;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(final AppLovinAd appLovinAd) {
            C1297a.this.f4629c = appLovinAd;
            if (this.f4637b != null) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.b.a.a.1
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            C1299a.this.f4637b.adReceived(appLovinAd);
                        } catch (Throwable th) {
                            C1479t.m5113c("AppLovinIncentivizedInterstitial", "Unable to notify ad listener about a newly loaded ad", th);
                        }
                    }
                });
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(final int i) {
            if (this.f4637b != null) {
                AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.sdk.b.a.a.2
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            C1299a.this.f4637b.failedToReceiveAd(i);
                        } catch (Throwable th) {
                            C1479t.m5113c("AppLovinIncentivizedInterstitial", "Unable to notify listener about ad load failure", th);
                        }
                    }
                });
            }
        }
    }

    /* renamed from: com.applovin.impl.sdk.b.a$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/sdk/b/a$b.class */
    public class C1302b implements AbstractC1293g, AppLovinAdClickListener, AppLovinAdRewardListener, AppLovinAdVideoPlaybackListener {

        /* renamed from: b */
        private final AppLovinAdDisplayListener f4643b;

        /* renamed from: c */
        private final AppLovinAdClickListener f4644c;

        /* renamed from: d */
        private final AppLovinAdVideoPlaybackListener f4645d;

        /* renamed from: e */
        private final AppLovinAdRewardListener f4646e;

        private C1302b(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
            C1297a.this = r4;
            this.f4643b = appLovinAdDisplayListener;
            this.f4644c = appLovinAdClickListener;
            this.f4645d = appLovinAdVideoPlaybackListener;
            this.f4646e = appLovinAdRewardListener;
        }

        /* renamed from: a */
        private void m5856a(AbstractC1286e abstractC1286e) {
            int i;
            String str;
            String m5859d = C1297a.this.m5859d();
            if (!StringUtils.isValidString(m5859d) || !C1297a.this.f4634h) {
                C1297a.this.f4627a.m5542A().m5111e("IncentivizedAdController", "Invalid reward state - result: " + m5859d + " and wasFullyEngaged: " + C1297a.this.f4634h);
                C1297a.this.f4627a.m5542A().m5116b("IncentivizedAdController", "Cancelling any incoming reward requests for this ad");
                abstractC1286e.m5958aB();
                if (C1297a.this.f4634h) {
                    C1297a.this.f4627a.m5542A().m5111e("IncentivizedAdController", "User close the ad after fully watching but reward validation task did not return on time");
                    i = -500;
                    str = "network_timeout";
                } else {
                    C1297a.this.f4627a.m5542A().m5111e("IncentivizedAdController", "User close the ad prematurely");
                    i = -600;
                    str = "user_closed_video";
                }
                abstractC1286e.m5961a(C1311c.m5842a(str));
                C1297a.this.f4627a.m5542A().m5116b("IncentivizedAdController", "Notifying listener of reward validation failure");
                C1496j.m5016a(this.f4646e, abstractC1286e, i);
            }
            C1297a.this.m5872a(abstractC1286e);
            C1297a.this.f4627a.m5542A().m5116b("IncentivizedAdController", "Notifying listener of rewarded ad dismissal");
            C1496j.m5006b(this.f4643b, abstractC1286e);
            if (!abstractC1286e.m5949ab().getAndSet(true)) {
                C1297a.this.f4627a.m5542A().m5116b("IncentivizedAdController", "Scheduling report rewarded ad...");
                C1297a.this.f4627a.m5525R().m5653a(new C1380v(abstractC1286e, C1297a.this.f4627a), C1362o.EnumC1364a.REWARD);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            C1496j.m5019a(this.f4644c, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            C1496j.m5018a(this.f4643b, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            AppLovinAd appLovinAd2 = appLovinAd;
            if (appLovinAd instanceof C1292f) {
                appLovinAd2 = ((C1292f) appLovinAd).m5891a();
            }
            if (appLovinAd2 instanceof AbstractC1286e) {
                m5856a((AbstractC1286e) appLovinAd2);
                return;
            }
            C1479t m5542A = C1297a.this.f4627a.m5542A();
            m5542A.m5111e("IncentivizedAdController", "Something is terribly wrong. Received `adHidden` callback for invalid ad of type: " + appLovinAd2);
        }

        @Override // com.applovin.impl.sdk.p053ad.AbstractC1293g
        public void onAdDisplayFailed(String str) {
            C1496j.m5017a(this.f4643b, str);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userOverQuota(AppLovinAd appLovinAd, Map<String, String> map) {
            C1297a.this.m5866a("quota_exceeded");
            C1496j.m5005b(this.f4646e, appLovinAd, map);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardRejected(AppLovinAd appLovinAd, Map<String, String> map) {
            C1297a.this.m5866a("rejected");
            C1496j.m5001c(this.f4646e, appLovinAd, map);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardVerified(AppLovinAd appLovinAd, Map<String, String> map) {
            C1297a.this.m5866a("accepted");
            C1496j.m5015a(this.f4646e, appLovinAd, map);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
            C1297a.this.m5866a("network_timeout");
            C1496j.m5016a(this.f4646e, appLovinAd, i);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackBegan(AppLovinAd appLovinAd) {
            C1496j.m5014a(this.f4645d, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
            C1496j.m5013a(this.f4645d, appLovinAd, d, z);
            C1297a.this.f4634h = z;
        }
    }

    public C1297a(String str, AppLovinSdk appLovinSdk) {
        this.f4627a = appLovinSdk.coreSdk;
        this.f4628b = (AppLovinAdServiceImpl) appLovinSdk.getAdService();
        this.f4630d = str;
    }

    /* renamed from: a */
    private void m5879a(AppLovinAdImpl appLovinAdImpl, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        if (appLovinAdImpl.getType() != AppLovinAdType.INCENTIVIZED && appLovinAdImpl.getType() != AppLovinAdType.AUTO_INCENTIVIZED) {
            C1479t m5542A = this.f4627a.m5542A();
            StringBuilder m8752j = C0082b.m8752j("Failed to render an ad of type ");
            m8752j.append(appLovinAdImpl.getType());
            m8752j.append(" in an Incentivized Ad interstitial.");
            m5542A.m5111e("IncentivizedAdController", m8752j.toString());
            m5868a(appLovinAdImpl, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener);
            return;
        }
        AppLovinAd maybeRetrieveNonDummyAd = Utils.maybeRetrieveNonDummyAd(appLovinAdImpl, this.f4627a);
        if (maybeRetrieveNonDummyAd == null) {
            m5868a(appLovinAdImpl, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener);
            return;
        }
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(this.f4627a.m5519X(), context);
        C1302b c1302b = new C1302b(appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
        create.setAdDisplayListener(c1302b);
        create.setAdVideoPlaybackListener(c1302b);
        create.setAdClickListener(c1302b);
        create.showAndRender(maybeRetrieveNonDummyAd);
        if (!(maybeRetrieveNonDummyAd instanceof AbstractC1286e)) {
            return;
        }
        m5877a((AbstractC1286e) maybeRetrieveNonDummyAd, c1302b);
    }

    /* renamed from: a */
    private void m5878a(AppLovinAdImpl appLovinAdImpl, ViewGroup viewGroup, AbstractC0516f abstractC0516f, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        if (appLovinAdImpl.getType() != AppLovinAdType.INCENTIVIZED && appLovinAdImpl.getType() != AppLovinAdType.AUTO_INCENTIVIZED) {
            C1479t m5542A = this.f4627a.m5542A();
            StringBuilder m8752j = C0082b.m8752j("Failed to render an ad of type ");
            m8752j.append(appLovinAdImpl.getType());
            m8752j.append(" in an Incentivized Ad interstitial.");
            m5542A.m5111e("IncentivizedAdController", m8752j.toString());
            m5868a(appLovinAdImpl, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener);
            return;
        }
        AppLovinAd maybeRetrieveNonDummyAd = Utils.maybeRetrieveNonDummyAd(appLovinAdImpl, this.f4627a);
        if (maybeRetrieveNonDummyAd == null) {
            m5868a(appLovinAdImpl, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener);
            return;
        }
        AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(this.f4627a.m5519X(), context);
        C1302b c1302b = new C1302b(appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
        create.setAdDisplayListener(c1302b);
        create.setAdVideoPlaybackListener(c1302b);
        create.setAdClickListener(c1302b);
        create.showAndRender(maybeRetrieveNonDummyAd, viewGroup, abstractC0516f);
        if (!(maybeRetrieveNonDummyAd instanceof AbstractC1286e)) {
            return;
        }
        m5877a((AbstractC1286e) maybeRetrieveNonDummyAd, c1302b);
    }

    /* renamed from: a */
    private void m5877a(AbstractC1286e abstractC1286e, AppLovinAdRewardListener appLovinAdRewardListener) {
        this.f4627a.m5525R().m5653a(new C1332aa(abstractC1286e, appLovinAdRewardListener, this.f4627a), C1362o.EnumC1364a.REWARD);
    }

    /* renamed from: a */
    public void m5872a(AppLovinAd appLovinAd) {
        AppLovinAd appLovinAd2 = this.f4629c;
        if (appLovinAd2 != null) {
            if (appLovinAd2 instanceof C1292f) {
                if (appLovinAd != ((C1292f) appLovinAd2).m5891a()) {
                    return;
                }
            } else if (appLovinAd != appLovinAd2) {
                return;
            }
            this.f4629c = null;
        }
    }

    /* renamed from: a */
    private void m5871a(AppLovinAd appLovinAd, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        if (appLovinAd == null) {
            appLovinAd = this.f4629c;
        }
        AppLovinAdImpl appLovinAdImpl = (AppLovinAdImpl) appLovinAd;
        if (appLovinAdImpl != null) {
            m5879a(appLovinAdImpl, context, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
            return;
        }
        C1479t.m5107i("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
        m5860c();
    }

    /* renamed from: a */
    private void m5868a(AppLovinAd appLovinAd, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.f4627a.m5524S().m5741a(C1328f.f5090j);
        C1496j.m5013a(appLovinAdVideoPlaybackListener, appLovinAd, 0.0d, false);
        C1496j.m5006b(appLovinAdDisplayListener, appLovinAd);
    }

    /* renamed from: a */
    public void m5866a(String str) {
        synchronized (this.f4632f) {
            this.f4633g = str;
        }
    }

    /* renamed from: b */
    private void m5862b(AppLovinAd appLovinAd, ViewGroup viewGroup, AbstractC0516f abstractC0516f, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        AppLovinAdImpl appLovinAdImpl = appLovinAd != null ? (AppLovinAdImpl) appLovinAd : (AppLovinAdImpl) this.f4629c;
        if (appLovinAdImpl != null) {
            m5878a(appLovinAdImpl, viewGroup, abstractC0516f, context, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
            return;
        }
        C1479t.m5107i("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
        m5860c();
    }

    /* renamed from: b */
    private void m5861b(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f4628b.loadNextIncentivizedAd(this.f4630d, appLovinAdLoadListener);
    }

    /* renamed from: c */
    private void m5860c() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        SoftReference<AppLovinAdLoadListener> softReference = this.f4631e;
        if (softReference == null || (appLovinAdLoadListener = softReference.get()) == null) {
            return;
        }
        appLovinAdLoadListener.failedToReceiveAd(AppLovinErrorCodes.INCENTIVIZED_NO_AD_PRELOADED);
    }

    /* renamed from: d */
    public String m5859d() {
        String str;
        synchronized (this.f4632f) {
            str = this.f4633g;
        }
        return str;
    }

    /* renamed from: e */
    private AppLovinAdRewardListener m5858e() {
        return new AppLovinAdRewardListener() { // from class: com.applovin.impl.sdk.b.a.1
            @Override // com.applovin.sdk.AppLovinAdRewardListener
            public void userOverQuota(AppLovinAd appLovinAd, Map<String, String> map) {
                C1479t m5542A = C1297a.this.f4627a.m5542A();
                m5542A.m5111e("IncentivizedAdController", "User over quota: " + map);
            }

            @Override // com.applovin.sdk.AppLovinAdRewardListener
            public void userRewardRejected(AppLovinAd appLovinAd, Map<String, String> map) {
                C1479t m5542A = C1297a.this.f4627a.m5542A();
                m5542A.m5111e("IncentivizedAdController", "Reward rejected: " + map);
            }

            @Override // com.applovin.sdk.AppLovinAdRewardListener
            public void userRewardVerified(AppLovinAd appLovinAd, Map<String, String> map) {
                C1479t m5542A = C1297a.this.f4627a.m5542A();
                m5542A.m5116b("IncentivizedAdController", "Reward validated: " + map);
            }

            @Override // com.applovin.sdk.AppLovinAdRewardListener
            public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
                C1479t m5542A = C1297a.this.f4627a.m5542A();
                m5542A.m5111e("IncentivizedAdController", "Reward validation failed: " + i);
            }
        };
    }

    /* renamed from: a */
    public void m5870a(AppLovinAd appLovinAd, Context context, String str, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        AppLovinAdRewardListener appLovinAdRewardListener2 = appLovinAdRewardListener;
        if (appLovinAdRewardListener == null) {
            appLovinAdRewardListener2 = m5858e();
        }
        m5871a(appLovinAd, context, appLovinAdRewardListener2, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
    }

    /* renamed from: a */
    public void m5869a(AppLovinAd appLovinAd, ViewGroup viewGroup, AbstractC0516f abstractC0516f, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        if (appLovinAdRewardListener == null) {
            appLovinAdRewardListener = m5858e();
        }
        m5862b(appLovinAd, viewGroup, abstractC0516f, context, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
    }

    /* renamed from: a */
    public void m5867a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f4627a.m5542A().m5116b("IncentivizedAdController", "User requested preload of incentivized ad...");
        this.f4631e = new SoftReference<>(appLovinAdLoadListener);
        if (!m5880a()) {
            m5861b(new C1299a(appLovinAdLoadListener));
            return;
        }
        C1479t.m5107i("IncentivizedAdController", "Attempted to call preloadAndNotify: while an ad was already loaded or currently being played. Do not call preloadAndNotify: again until the last ad has been closed (adHidden).");
        if (appLovinAdLoadListener == null) {
            return;
        }
        appLovinAdLoadListener.adReceived(this.f4629c);
    }

    /* renamed from: a */
    public boolean m5880a() {
        return this.f4629c != null;
    }

    /* renamed from: b */
    public String m5865b() {
        return this.f4630d;
    }
}
