package p131c.p135b.p136a.p148e.p149a;

import android.content.Context;
import com.applovin.adview.AppLovinInterstitialAd;
import com.applovin.adview.AppLovinInterstitialAdDialog;
import com.applovin.impl.sdk.AppLovinAdBase;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.impl.sdk.p491d.C7048s;
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
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p150c.AbstractC2249e;
import p131c.p135b.p136a.p148e.p150c.C2248d;
import p131c.p135b.p136a.p148e.p151e.C2267f;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2391j;
import p131c.p135b.p136a.p148e.p153y.C2422o;
/* renamed from: c.b.a.e.a.a */
/* loaded from: classes-dex2jar.jar:c/b/a/e/a/a.class */
public class C2223a {

    /* renamed from: a */
    public final C2341l f8379a;

    /* renamed from: b */
    public final AppLovinAdServiceImpl f8380b;

    /* renamed from: c */
    public AppLovinAd f8381c;

    /* renamed from: d */
    public String f8382d;

    /* renamed from: e */
    public SoftReference<AppLovinAdLoadListener> f8383e;

    /* renamed from: g */
    public volatile String f8385g;

    /* renamed from: f */
    public final Object f8384f = new Object();

    /* renamed from: h */
    public volatile boolean f8386h = false;

    /* renamed from: c.b.a.e.a.a$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/a/a$a.class */
    public class C2224a implements AppLovinAdRewardListener {
        public C2224a() {
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userDeclinedToViewAd(AppLovinAd appLovinAd) {
            C2223a.this.f8379a.m30262d0().m30044b("IncentivizedAdController", "User declined to view");
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userOverQuota(AppLovinAd appLovinAd, Map<String, String> map) {
            C2374t d0 = C2223a.this.f8379a.m30262d0();
            d0.m30044b("IncentivizedAdController", "User over quota: " + map);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardRejected(AppLovinAd appLovinAd, Map<String, String> map) {
            C2374t d0 = C2223a.this.f8379a.m30262d0();
            d0.m30044b("IncentivizedAdController", "Reward rejected: " + map);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardVerified(AppLovinAd appLovinAd, Map<String, String> map) {
            C2374t d0 = C2223a.this.f8379a.m30262d0();
            d0.m30044b("IncentivizedAdController", "Reward validated: " + map);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
            C2374t d0 = C2223a.this.f8379a.m30262d0();
            d0.m30044b("IncentivizedAdController", "Reward validation failed: " + i);
        }
    }

    /* renamed from: c.b.a.e.a.a$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/a/a$b.class */
    public class C2225b implements AppLovinAdLoadListener {

        /* renamed from: a */
        public final AppLovinAdLoadListener f8388a;

        /* renamed from: c.b.a.e.a.a$b$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/a/a$b$a.class */
        public class RunnableC2226a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ AppLovinAd f8390a;

            public RunnableC2226a(AppLovinAd appLovinAd) {
                this.f8390a = appLovinAd;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    C2225b.this.f8388a.adReceived(this.f8390a);
                } catch (Throwable th) {
                    C2374t.m30041c("AppLovinIncentivizedInterstitial", "Unable to notify ad listener about a newly loaded ad", th);
                }
            }
        }

        /* renamed from: c.b.a.e.a.a$b$b */
        /* loaded from: classes-dex2jar.jar:c/b/a/e/a/a$b$b.class */
        public class RunnableC2227b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ int f8392a;

            public RunnableC2227b(int i) {
                this.f8392a = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    C2225b.this.f8388a.failedToReceiveAd(this.f8392a);
                } catch (Throwable th) {
                    C2374t.m30041c("AppLovinIncentivizedInterstitial", "Unable to notify listener about ad load failure", th);
                }
            }
        }

        public C2225b(AppLovinAdLoadListener appLovinAdLoadListener) {
            this.f8388a = appLovinAdLoadListener;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            C2223a.this.f8381c = appLovinAd;
            if (this.f8388a != null) {
                AppLovinSdkUtils.runOnUiThread(new RunnableC2226a(appLovinAd));
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            if (this.f8388a != null) {
                AppLovinSdkUtils.runOnUiThread(new RunnableC2227b(i));
            }
        }
    }

    /* renamed from: c.b.a.e.a.a$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/e/a/a$c.class */
    public class C2228c implements AbstractC2249e, AppLovinAdClickListener, AppLovinAdRewardListener, AppLovinAdVideoPlaybackListener {

        /* renamed from: a */
        public final AppLovinAdDisplayListener f8394a;

        /* renamed from: b */
        public final AppLovinAdClickListener f8395b;

        /* renamed from: c */
        public final AppLovinAdVideoPlaybackListener f8396c;

        /* renamed from: d */
        public final AppLovinAdRewardListener f8397d;

        public C2228c(AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
            this.f8394a = appLovinAdDisplayListener;
            this.f8395b = appLovinAdClickListener;
            this.f8396c = appLovinAdVideoPlaybackListener;
            this.f8397d = appLovinAdRewardListener;
        }

        public /* synthetic */ C2228c(C2223a aVar, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener, C2224a aVar2) {
            this(appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
        }

        /* renamed from: a */
        public final void m30694a(AbstractC7036g gVar) {
            String str;
            int i;
            if (!C2422o.m29851b(C2223a.this.m30697e()) || !C2223a.this.f8386h) {
                gVar.m18942O();
                if (C2223a.this.f8386h) {
                    i = AppLovinErrorCodes.INCENTIVIZED_SERVER_TIMEOUT;
                    str = "network_timeout";
                } else {
                    i = AppLovinErrorCodes.INCENTIVIZED_USER_CLOSED_VIDEO;
                    str = "user_closed_video";
                }
                gVar.m18925a(C2238c.m30680a(str));
                C2391j.m29897a(this.f8397d, gVar, i);
            }
            C2223a.this.m30709a(gVar);
            C2391j.m29888b(this.f8394a, gVar);
            if (!gVar.m18897g0().getAndSet(true)) {
                C2223a.this.f8379a.m30249j().m18826a(new C2270g.C2291g0(gVar, C2223a.this.f8379a), C7048s.EnumC7049a.REWARD);
            }
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            C2391j.m29900a(this.f8395b, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            C2391j.m29899a(this.f8394a, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            AppLovinAd appLovinAd2 = appLovinAd;
            if (appLovinAd instanceof C2248d) {
                appLovinAd2 = ((C2248d) appLovinAd).m30612a();
            }
            if (appLovinAd2 instanceof AbstractC7036g) {
                m30694a((AbstractC7036g) appLovinAd2);
                return;
            }
            C2374t d0 = C2223a.this.f8379a.m30262d0();
            d0.m30039e("IncentivizedAdController", "Something is terribly wrong. Received `adHidden` callback for invalid ad of type: " + appLovinAd2);
        }

        @Override // p131c.p135b.p136a.p148e.p150c.AbstractC2249e
        public void onAdDisplayFailed(String str) {
            C2391j.m29898a(this.f8394a, str);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userDeclinedToViewAd(AppLovinAd appLovinAd) {
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userOverQuota(AppLovinAd appLovinAd, Map<String, String> map) {
            C2223a.this.m30704a("quota_exceeded");
            C2391j.m29887b(this.f8397d, appLovinAd, map);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardRejected(AppLovinAd appLovinAd, Map<String, String> map) {
            C2223a.this.m30704a("rejected");
            C2391j.m29884c(this.f8397d, appLovinAd, map);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void userRewardVerified(AppLovinAd appLovinAd, Map<String, String> map) {
            C2223a.this.m30704a("accepted");
            C2391j.m29896a(this.f8397d, appLovinAd, map);
        }

        @Override // com.applovin.sdk.AppLovinAdRewardListener
        public void validationRequestFailed(AppLovinAd appLovinAd, int i) {
            C2223a.this.m30704a("network_timeout");
            C2391j.m29897a(this.f8397d, appLovinAd, i);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackBegan(AppLovinAd appLovinAd) {
            C2391j.m29895a(this.f8396c, appLovinAd);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackEnded(AppLovinAd appLovinAd, double d, boolean z) {
            C2391j.m29894a(this.f8396c, appLovinAd, d, z);
            C2223a.this.f8386h = z;
        }
    }

    public C2223a(String str, AppLovinSdk appLovinSdk) {
        this.f8379a = AbstractC2426r.m29811a(appLovinSdk);
        this.f8380b = (AppLovinAdServiceImpl) appLovinSdk.getAdService();
        this.f8382d = str;
    }

    /* renamed from: a */
    public final void m30711a(AppLovinAdBase appLovinAdBase, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        if (!appLovinAdBase.getType().equals(AppLovinAdType.INCENTIVIZED)) {
            C2374t d0 = this.f8379a.m30262d0();
            d0.m30039e("IncentivizedAdController", "Failed to render an ad of type " + appLovinAdBase.getType() + " in an Incentivized Ad interstitial.");
            m30706a(appLovinAdBase, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener);
            return;
        }
        AppLovinAd a = AbstractC2426r.m29814a((AppLovinAd) appLovinAdBase, this.f8379a);
        if (a != null) {
            AppLovinInterstitialAdDialog create = AppLovinInterstitialAd.create(this.f8379a.m30242q(), context);
            C2228c cVar = new C2228c(this, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener, null);
            create.setAdDisplayListener(cVar);
            create.setAdVideoPlaybackListener(cVar);
            create.setAdClickListener(cVar);
            create.showAndRender(a);
            if (a instanceof AbstractC7036g) {
                m30710a((AbstractC7036g) a, cVar);
                return;
            }
            return;
        }
        m30706a(appLovinAdBase, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener);
    }

    /* renamed from: a */
    public final void m30710a(AbstractC7036g gVar, AppLovinAdRewardListener appLovinAdRewardListener) {
        this.f8379a.m30249j().m18826a(new C2270g.C2292h(gVar, appLovinAdRewardListener, this.f8379a), C7048s.EnumC7049a.REWARD);
    }

    /* renamed from: a */
    public final void m30709a(AppLovinAd appLovinAd) {
        AppLovinAd appLovinAd2 = this.f8381c;
        if (appLovinAd2 != null) {
            if (appLovinAd2 instanceof C2248d) {
                if (appLovinAd != ((C2248d) appLovinAd2).m30612a()) {
                    return;
                }
            } else if (appLovinAd != appLovinAd2) {
                return;
            }
            this.f8381c = null;
        }
    }

    /* renamed from: a */
    public final void m30708a(AppLovinAd appLovinAd, Context context, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        if (appLovinAd == null) {
            appLovinAd = this.f8381c;
        }
        AppLovinAdBase appLovinAdBase = (AppLovinAdBase) appLovinAd;
        if (appLovinAdBase != null) {
            m30711a(appLovinAdBase, context, appLovinAdRewardListener, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
            return;
        }
        C2374t.m30034j("IncentivizedAdController", "Skipping incentivized video playback: user attempted to play an incentivized video before one was preloaded.");
        m30698d();
    }

    /* renamed from: a */
    public void m30707a(AppLovinAd appLovinAd, Context context, String str, AppLovinAdRewardListener appLovinAdRewardListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdClickListener appLovinAdClickListener) {
        AppLovinAdRewardListener appLovinAdRewardListener2 = appLovinAdRewardListener;
        if (appLovinAdRewardListener == null) {
            appLovinAdRewardListener2 = m30696f();
        }
        m30708a(appLovinAd, context, appLovinAdRewardListener2, appLovinAdVideoPlaybackListener, appLovinAdDisplayListener, appLovinAdClickListener);
    }

    /* renamed from: a */
    public final void m30706a(AppLovinAd appLovinAd, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.f8379a.m30248k().m30522a(C2267f.f8889m);
        C2391j.m29894a(appLovinAdVideoPlaybackListener, appLovinAd, 0.0d, false);
        C2391j.m29888b(appLovinAdDisplayListener, appLovinAd);
    }

    /* renamed from: a */
    public void m30705a(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f8379a.m30262d0().m30044b("IncentivizedAdController", "User requested preload of incentivized ad...");
        this.f8383e = new SoftReference<>(appLovinAdLoadListener);
        if (m30716a()) {
            C2374t.m30034j("IncentivizedAdController", "Attempted to call preloadAndNotify: while an ad was already loaded or currently being played. Do not call preloadAndNotify: again until the last ad has been closed (adHidden).");
            if (appLovinAdLoadListener != null) {
                appLovinAdLoadListener.adReceived(this.f8381c);
                return;
            }
            return;
        }
        m30700b(new C2225b(appLovinAdLoadListener));
    }

    /* renamed from: a */
    public final void m30704a(String str) {
        synchronized (this.f8384f) {
            this.f8385g = str;
        }
    }

    /* renamed from: a */
    public boolean m30716a() {
        return this.f8381c != null;
    }

    /* renamed from: b */
    public String m30703b() {
        return this.f8382d;
    }

    /* renamed from: b */
    public final void m30700b(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f8380b.loadNextIncentivizedAd(this.f8382d, appLovinAdLoadListener);
    }

    /* renamed from: c */
    public void m30699c() {
    }

    /* renamed from: d */
    public final void m30698d() {
        AppLovinAdLoadListener appLovinAdLoadListener;
        SoftReference<AppLovinAdLoadListener> softReference = this.f8383e;
        if (softReference != null && (appLovinAdLoadListener = softReference.get()) != null) {
            appLovinAdLoadListener.failedToReceiveAd(AppLovinErrorCodes.INCENTIVIZED_NO_AD_PRELOADED);
        }
    }

    /* renamed from: e */
    public final String m30697e() {
        String str;
        synchronized (this.f8384f) {
            str = this.f8385g;
        }
        return str;
    }

    /* renamed from: f */
    public final AppLovinAdRewardListener m30696f() {
        return new C2224a();
    }
}
