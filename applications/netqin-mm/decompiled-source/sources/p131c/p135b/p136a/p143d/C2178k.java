package p131c.p135b.p136a.p143d;

import android.app.Activity;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import com.applovin.mediation.adapter.MaxAdViewAdapter;
import com.applovin.mediation.adapter.MaxAdapter;
import com.applovin.mediation.adapter.MaxAdapterError;
import com.applovin.mediation.adapter.MaxInterstitialAdapter;
import com.applovin.mediation.adapter.MaxRewardedAdapter;
import com.applovin.mediation.adapter.MaxSignalProvider;
import com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener;
import com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener;
import com.applovin.mediation.adapter.parameters.MaxAdapterInitializationParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterResponseParameters;
import com.applovin.mediation.adapter.parameters.MaxAdapterSignalCollectionParameters;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p135b.p136a.p143d.C2135c;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: c.b.a.d.k */
/* loaded from: classes-dex2jar.jar:c/b/a/d/k.class */
public class C2178k {

    /* renamed from: b */
    public final C2341l f8275b;

    /* renamed from: c */
    public final C2374t f8276c;

    /* renamed from: d */
    public final String f8277d;

    /* renamed from: e */
    public final C2135c.C2141f f8278e;

    /* renamed from: f */
    public final String f8279f;

    /* renamed from: g */
    public MaxAdapter f8280g;

    /* renamed from: h */
    public String f8281h;

    /* renamed from: i */
    public C2135c.AbstractC2137b f8282i;

    /* renamed from: j */
    public View f8283j;

    /* renamed from: l */
    public MaxAdapterResponseParameters f8285l;

    /* renamed from: a */
    public final Handler f8274a = new Handler(Looper.getMainLooper());

    /* renamed from: k */
    public final C2194l f8284k = new C2194l(this, null);

    /* renamed from: m */
    public final AtomicBoolean f8286m = new AtomicBoolean(true);

    /* renamed from: n */
    public final AtomicBoolean f8287n = new AtomicBoolean(false);

    /* renamed from: o */
    public final AtomicBoolean f8288o = new AtomicBoolean(false);

    /* renamed from: c.b.a.d.k$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$a.class */
    public class RunnableC2179a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdapterInitializationParameters f8289a;

        /* renamed from: b */
        public final /* synthetic */ Activity f8290b;

        /* renamed from: c.b.a.d.k$a$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$a$a.class */
        public class C2180a implements MaxAdapter.OnCompletionListener {

            /* renamed from: a */
            public final /* synthetic */ long f8292a;

            /* renamed from: c.b.a.d.k$a$a$a */
            /* loaded from: classes-dex2jar.jar:c/b/a/d/k$a$a$a.class */
            public class RunnableC2181a implements Runnable {
                public RunnableC2181a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    C2180a aVar = C2180a.this;
                    C2178k.this.f8275b.m30256f0().m30793a(C2178k.this.f8278e, elapsedRealtime - aVar.f8292a, MaxAdapter.InitializationStatus.ADAPTER_NOT_SUPPORTED, null);
                }
            }

            /* renamed from: c.b.a.d.k$a$a$b */
            /* loaded from: classes-dex2jar.jar:c/b/a/d/k$a$a$b.class */
            public class RunnableC2182b implements Runnable {

                /* renamed from: a */
                public final /* synthetic */ MaxAdapter.InitializationStatus f8295a;

                /* renamed from: b */
                public final /* synthetic */ String f8296b;

                public RunnableC2182b(MaxAdapter.InitializationStatus initializationStatus, String str) {
                    this.f8295a = initializationStatus;
                    this.f8296b = str;
                }

                @Override // java.lang.Runnable
                public void run() {
                    long elapsedRealtime = SystemClock.elapsedRealtime();
                    C2180a aVar = C2180a.this;
                    C2178k.this.f8275b.m30256f0().m30793a(C2178k.this.f8278e, elapsedRealtime - aVar.f8292a, this.f8295a, this.f8296b);
                }
            }

            public C2180a(long j) {
                this.f8292a = j;
            }

            @Override // com.applovin.mediation.adapter.MaxAdapter.OnCompletionListener
            public void onCompletion() {
                AppLovinSdkUtils.runOnUiThreadDelayed(new RunnableC2181a(), C2178k.this.f8278e.m30893j());
            }

            @Override // com.applovin.mediation.adapter.MaxAdapter.OnCompletionListener
            public void onCompletion(MaxAdapter.InitializationStatus initializationStatus, String str) {
                AppLovinSdkUtils.runOnUiThreadDelayed(new RunnableC2182b(initializationStatus, str), C2178k.this.f8278e.m30893j());
            }
        }

        public RunnableC2179a(MaxAdapterInitializationParameters maxAdapterInitializationParameters, Activity activity) {
            this.f8289a = maxAdapterInitializationParameters;
            this.f8290b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2178k.this.f8280g.initialize(this.f8289a, this.f8290b, new C2180a(SystemClock.elapsedRealtime()));
        }
    }

    /* renamed from: c.b.a.d.k$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$b.class */
    public class RunnableC2183b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Runnable f8298a;

        /* renamed from: b */
        public final /* synthetic */ C2135c.AbstractC2137b f8299b;

        public RunnableC2183b(Runnable runnable, C2135c.AbstractC2137b bVar) {
            this.f8298a = runnable;
            this.f8299b = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f8298a.run();
            } catch (Throwable th) {
                C2374t tVar = C2178k.this.f8276c;
                tVar.m30043b("MediationAdapterWrapper", "Failed to start displaying ad" + this.f8299b, th);
                C2178k.this.f8284k.m30741b("ad_render", (int) MaxAdapterError.ERROR_CODE_UNSPECIFIED);
            }
        }
    }

    /* renamed from: c.b.a.d.k$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$c.class */
    public class RunnableC2184c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxSignalProvider f8301a;

        /* renamed from: b */
        public final /* synthetic */ MaxAdapterSignalCollectionParameters f8302b;

        /* renamed from: c */
        public final /* synthetic */ Activity f8303c;

        /* renamed from: d */
        public final /* synthetic */ C2211m f8304d;

        /* renamed from: e */
        public final /* synthetic */ C2135c.C2144h f8305e;

        /* renamed from: c.b.a.d.k$c$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$c$a.class */
        public class C2185a implements MaxSignalCollectionListener {
            public C2185a() {
            }

            @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
            public void onSignalCollected(String str) {
                RunnableC2184c cVar = RunnableC2184c.this;
                C2178k.this.m30773a(str, cVar.f8304d);
            }

            @Override // com.applovin.mediation.adapter.listeners.MaxSignalCollectionListener
            public void onSignalCollectionFailed(String str) {
                RunnableC2184c cVar = RunnableC2184c.this;
                C2178k.this.m30767b(str, cVar.f8304d);
            }
        }

        public RunnableC2184c(MaxSignalProvider maxSignalProvider, MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, Activity activity, C2211m mVar, C2135c.C2144h hVar) {
            this.f8301a = maxSignalProvider;
            this.f8302b = maxAdapterSignalCollectionParameters;
            this.f8303c = activity;
            this.f8304d = mVar;
            this.f8305e = hVar;
        }

        /* JADX WARN: Type inference failed for: r0v11, types: [java.lang.StringBuilder, long] */
        /* JADX WARN: Type inference failed for: r0v13, types: [java.lang.StringBuilder, c.b.a.e.t] */
        /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.StringBuilder, c.b.a.e.t] */
        /* JADX WARN: Type inference failed for: r0v19, types: [com.applovin.impl.sdk.d.s, long] */
        /* JADX WARN: Type inference failed for: r0v22, types: [java.lang.StringBuilder, c.b.a.e.t] */
        /* JADX WARN: Type inference failed for: r0v24, types: [c.b.a.d.k, java.lang.StringBuilder] */
        /* JADX WARN: Unknown variable types count: 6 */
        @Override // java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void run() {
            /*
                Method dump skipped, instructions count: 310
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p143d.C2178k.RunnableC2184c.run():void");
        }
    }

    /* renamed from: c.b.a.d.k$d */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$d.class */
    public class RunnableC2186d implements Runnable {
        public RunnableC2186d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2178k.this.m30775a("destroy");
            C2178k.this.f8280g.onDestroy();
            C2178k.this.f8280g = null;
        }
    }

    /* renamed from: c.b.a.d.k$e */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$e.class */
    public class RunnableC2187e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f8309a;

        /* renamed from: b */
        public final /* synthetic */ Runnable f8310b;

        public RunnableC2187e(String str, Runnable runnable) {
            this.f8309a = str;
            this.f8310b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                C2374t tVar = C2178k.this.f8276c;
                tVar.m30044b("MediationAdapterWrapper", C2178k.this.f8279f + ": running " + this.f8309a + "...");
                this.f8310b.run();
                C2374t tVar2 = C2178k.this.f8276c;
                tVar2.m30044b("MediationAdapterWrapper", C2178k.this.f8279f + ": finished " + this.f8309a + "");
            } catch (Throwable th) {
                C2374t tVar3 = C2178k.this.f8276c;
                tVar3.m30043b("MediationAdapterWrapper", "Unable to run adapter operation " + this.f8309a + ", marking " + C2178k.this.f8279f + " as disabled", th);
                C2178k kVar = C2178k.this;
                StringBuilder sb = new StringBuilder();
                sb.append("fail_");
                sb.append(this.f8309a);
                kVar.m30775a(sb.toString());
            }
        }
    }

    /* renamed from: c.b.a.d.k$f */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$f.class */
    public class RunnableC2188f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdapterResponseParameters f8312a;

        /* renamed from: b */
        public final /* synthetic */ Activity f8313b;

        public RunnableC2188f(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
            this.f8312a = maxAdapterResponseParameters;
            this.f8313b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((MaxInterstitialAdapter) C2178k.this.f8280g).loadInterstitialAd(this.f8312a, this.f8313b, C2178k.this.f8284k);
        }
    }

    /* renamed from: c.b.a.d.k$g */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$g.class */
    public class RunnableC2189g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdapterResponseParameters f8315a;

        /* renamed from: b */
        public final /* synthetic */ Activity f8316b;

        public RunnableC2189g(MaxAdapterResponseParameters maxAdapterResponseParameters, Activity activity) {
            this.f8315a = maxAdapterResponseParameters;
            this.f8316b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((MaxRewardedAdapter) C2178k.this.f8280g).loadRewardedAd(this.f8315a, this.f8316b, C2178k.this.f8284k);
        }
    }

    /* renamed from: c.b.a.d.k$h */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$h.class */
    public class RunnableC2190h implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdapterResponseParameters f8318a;

        /* renamed from: b */
        public final /* synthetic */ C2135c.AbstractC2137b f8319b;

        /* renamed from: c */
        public final /* synthetic */ Activity f8320c;

        public RunnableC2190h(MaxAdapterResponseParameters maxAdapterResponseParameters, C2135c.AbstractC2137b bVar, Activity activity) {
            this.f8318a = maxAdapterResponseParameters;
            this.f8319b = bVar;
            this.f8320c = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((MaxAdViewAdapter) C2178k.this.f8280g).loadAdViewAd(this.f8318a, this.f8319b.getFormat(), this.f8320c, C2178k.this.f8284k);
        }
    }

    /* renamed from: c.b.a.d.k$i */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$i.class */
    public class RunnableC2191i implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Runnable f8322a;

        /* renamed from: b */
        public final /* synthetic */ C2135c.AbstractC2137b f8323b;

        public RunnableC2191i(Runnable runnable, C2135c.AbstractC2137b bVar) {
            this.f8322a = runnable;
            this.f8323b = bVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f8322a.run();
            } catch (Throwable th) {
                C2374t tVar = C2178k.this.f8276c;
                tVar.m30043b("MediationAdapterWrapper", "Failed start loading " + this.f8323b, th);
                C2178k.this.f8284k.m30746a("loadAd", -1);
            }
            if (!C2178k.this.f8287n.get()) {
                long i = C2178k.this.f8278e.m30894i();
                if (i > 0) {
                    C2374t tVar2 = C2178k.this.f8276c;
                    tVar2.m30044b("MediationAdapterWrapper", "Setting timeout " + i + "ms. for " + this.f8323b);
                    C2178k.this.f8275b.m30249j().m18825a(new C2212n(C2178k.this, null), C7048s.EnumC7049a.MEDIATION_TIMEOUT, i);
                    return;
                }
                C2374t tVar3 = C2178k.this.f8276c;
                tVar3.m30044b("MediationAdapterWrapper", "Negative timeout set for " + this.f8323b + ", not scheduling a timeout");
            }
        }
    }

    /* renamed from: c.b.a.d.k$j */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$j.class */
    public class RunnableC2192j implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Activity f8325a;

        public RunnableC2192j(Activity activity) {
            this.f8325a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((MaxInterstitialAdapter) C2178k.this.f8280g).showInterstitialAd(C2178k.this.f8285l, this.f8325a, C2178k.this.f8284k);
        }
    }

    /* renamed from: c.b.a.d.k$k */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$k.class */
    public class RunnableC2193k implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Activity f8327a;

        public RunnableC2193k(Activity activity) {
            this.f8327a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            ((MaxRewardedAdapter) C2178k.this.f8280g).showRewardedAd(C2178k.this.f8285l, this.f8327a, C2178k.this.f8284k);
        }
    }

    /* renamed from: c.b.a.d.k$l */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l.class */
    public class C2194l implements MaxAdViewAdapterListener, MaxInterstitialAdapterListener, MaxRewardedAdapterListener {

        /* renamed from: a */
        public AbstractC2171f f8329a;

        /* renamed from: c.b.a.d.k$l$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$a.class */
        public class RunnableC2195a implements Runnable {
            public RunnableC2195a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2194l.this.f8329a.onAdDisplayed(C2178k.this.f8282i);
            }
        }

        /* renamed from: c.b.a.d.k$l$b */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$b.class */
        public class RunnableC2196b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ MaxAdapterError f8332a;

            public RunnableC2196b(MaxAdapterError maxAdapterError) {
                this.f8332a = maxAdapterError;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2194l.this.f8329a.mo19183a(C2178k.this.f8282i, this.f8332a);
            }
        }

        /* renamed from: c.b.a.d.k$l$c */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$c.class */
        public class RunnableC2197c implements Runnable {
            public RunnableC2197c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2194l.this.f8329a.onAdClicked(C2178k.this.f8282i);
            }
        }

        /* renamed from: c.b.a.d.k$l$d */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$d.class */
        public class RunnableC2198d implements Runnable {
            public RunnableC2198d() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2194l.this.f8329a.onAdHidden(C2178k.this.f8282i);
            }
        }

        /* renamed from: c.b.a.d.k$l$e */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$e.class */
        public class RunnableC2199e implements Runnable {
            public RunnableC2199e() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2194l.this.f8329a.onAdClicked(C2178k.this.f8282i);
            }
        }

        /* renamed from: c.b.a.d.k$l$f */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$f.class */
        public class RunnableC2200f implements Runnable {
            public RunnableC2200f() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2194l.this.f8329a.onAdHidden(C2178k.this.f8282i);
            }
        }

        /* renamed from: c.b.a.d.k$l$g */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$g.class */
        public class RunnableC2201g implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ MaxReward f8338a;

            public RunnableC2201g(MaxReward maxReward) {
                this.f8338a = maxReward;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C2194l.this.f8329a instanceof MaxRewardedAdListener) {
                    ((MaxRewardedAdListener) C2194l.this.f8329a).onUserRewarded(C2178k.this.f8282i, this.f8338a);
                }
            }
        }

        /* renamed from: c.b.a.d.k$l$h */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$h.class */
        public class RunnableC2202h implements Runnable {
            public RunnableC2202h() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C2178k.this.f8287n.compareAndSet(false, true)) {
                    C2194l.this.f8329a.onAdLoaded(C2178k.this.f8282i);
                }
            }
        }

        /* renamed from: c.b.a.d.k$l$i */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$i.class */
        public class RunnableC2203i implements Runnable {
            public RunnableC2203i() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C2194l.this.f8329a instanceof MaxRewardedAdListener) {
                    ((MaxRewardedAdListener) C2194l.this.f8329a).onRewardedVideoStarted(C2178k.this.f8282i);
                }
            }
        }

        /* renamed from: c.b.a.d.k$l$j */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$j.class */
        public class RunnableC2204j implements Runnable {
            public RunnableC2204j() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C2194l.this.f8329a instanceof MaxRewardedAdListener) {
                    ((MaxRewardedAdListener) C2194l.this.f8329a).onRewardedVideoCompleted(C2178k.this.f8282i);
                }
            }
        }

        /* renamed from: c.b.a.d.k$l$k */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$k.class */
        public class RunnableC2205k implements Runnable {
            public RunnableC2205k() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2194l.this.f8329a.onAdClicked(C2178k.this.f8282i);
            }
        }

        /* renamed from: c.b.a.d.k$l$l */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$l.class */
        public class RunnableC2206l implements Runnable {
            public RunnableC2206l() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2194l.this.f8329a.onAdHidden(C2178k.this.f8282i);
            }
        }

        /* renamed from: c.b.a.d.k$l$m */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$m.class */
        public class RunnableC2207m implements Runnable {
            public RunnableC2207m() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C2194l.this.f8329a instanceof MaxAdViewAdListener) {
                    ((MaxAdViewAdListener) C2194l.this.f8329a).onAdExpanded(C2178k.this.f8282i);
                }
            }
        }

        /* renamed from: c.b.a.d.k$l$n */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$n.class */
        public class RunnableC2208n implements Runnable {
            public RunnableC2208n() {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C2194l.this.f8329a instanceof MaxAdViewAdListener) {
                    ((MaxAdViewAdListener) C2194l.this.f8329a).onAdCollapsed(C2178k.this.f8282i);
                }
            }
        }

        /* renamed from: c.b.a.d.k$l$o */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$o.class */
        public class RunnableC2209o implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ Runnable f8347a;

            /* renamed from: b */
            public final /* synthetic */ MaxAdListener f8348b;

            /* renamed from: c */
            public final /* synthetic */ String f8349c;

            public RunnableC2209o(Runnable runnable, MaxAdListener maxAdListener, String str) {
                this.f8347a = runnable;
                this.f8348b = maxAdListener;
                this.f8349c = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    this.f8347a.run();
                } catch (Exception e) {
                    MaxAdListener maxAdListener = this.f8348b;
                    String name = maxAdListener != null ? maxAdListener.getClass().getName() : null;
                    C2374t tVar = C2178k.this.f8276c;
                    tVar.m30043b("MediationAdapterWrapper", "Failed to forward call (" + this.f8349c + ") to " + name, e);
                }
            }
        }

        /* renamed from: c.b.a.d.k$l$p */
        /* loaded from: classes-dex2jar.jar:c/b/a/d/k$l$p.class */
        public class RunnableC2210p implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ MaxAdapterError f8351a;

            public RunnableC2210p(MaxAdapterError maxAdapterError) {
                this.f8351a = maxAdapterError;
            }

            @Override // java.lang.Runnable
            public void run() {
                if (C2178k.this.f8287n.compareAndSet(false, true)) {
                    C2194l.this.f8329a.mo19182a(C2178k.this.f8281h, this.f8351a);
                }
            }
        }

        public C2194l() {
        }

        public /* synthetic */ C2194l(C2178k kVar, RunnableC2179a aVar) {
            this();
        }

        /* renamed from: a */
        public final void m30751a(AbstractC2171f fVar) {
            if (fVar != null) {
                this.f8329a = fVar;
                return;
            }
            throw new IllegalArgumentException("No listener specified");
        }

        /* renamed from: a */
        public final void m30747a(String str) {
            C2178k.this.f8288o.set(true);
            m30745a(str, this.f8329a, new RunnableC2202h());
        }

        /* renamed from: a */
        public final void m30746a(String str, int i) {
            m30744a(str, new MaxAdapterError(i));
        }

        /* renamed from: a */
        public final void m30745a(String str, MaxAdListener maxAdListener, Runnable runnable) {
            C2178k.this.f8274a.post(new RunnableC2209o(runnable, maxAdListener, str));
        }

        /* renamed from: a */
        public final void m30744a(String str, MaxAdapterError maxAdapterError) {
            m30745a(str, this.f8329a, new RunnableC2210p(maxAdapterError));
        }

        /* renamed from: b */
        public final void m30742b(String str) {
            if (C2178k.this.f8282i.m30963u().compareAndSet(false, true)) {
                m30745a(str, this.f8329a, new RunnableC2195a());
            }
        }

        /* renamed from: b */
        public final void m30741b(String str, int i) {
            m30740b(str, new MaxAdapterError(i));
        }

        /* renamed from: b */
        public final void m30740b(String str, MaxAdapterError maxAdapterError) {
            m30745a(str, this.f8329a, new RunnableC2196b(maxAdapterError));
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdClicked() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": adview ad clicked");
            m30745a("onAdViewAdClicked", this.f8329a, new RunnableC2205k());
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdCollapsed() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": adview ad collapsed");
            m30745a("onAdViewAdCollapsed", this.f8329a, new RunnableC2208n());
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayFailed(MaxAdapterError maxAdapterError) {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30040d("MediationAdapterWrapper", C2178k.this.f8279f + ": adview ad failed to display with code: " + maxAdapterError);
            m30740b("onAdViewAdDisplayFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdDisplayed() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": adview ad displayed");
            m30742b("onAdViewAdDisplayed");
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdExpanded() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": adview ad expanded");
            m30745a("onAdViewAdExpanded", this.f8329a, new RunnableC2207m());
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdHidden() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": adview ad hidden");
            m30745a("onAdViewAdHidden", this.f8329a, new RunnableC2206l());
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoadFailed(MaxAdapterError maxAdapterError) {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30040d("MediationAdapterWrapper", C2178k.this.f8279f + ": adview ad ad failed to load with code: " + maxAdapterError);
            m30744a("onAdViewAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxAdViewAdapterListener
        public void onAdViewAdLoaded(View view) {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": adview ad loaded");
            C2178k.this.f8283j = view;
            m30747a("onAdViewAdLoaded");
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdClicked() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": interstitial ad clicked");
            m30745a("onInterstitialAdClicked", this.f8329a, new RunnableC2197c());
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayFailed(MaxAdapterError maxAdapterError) {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30040d("MediationAdapterWrapper", C2178k.this.f8279f + ": interstitial ad failed to display with code " + maxAdapterError);
            m30740b("onInterstitialAdDisplayFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdDisplayed() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": interstitial ad displayed");
            m30742b("onInterstitialAdDisplayed");
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdHidden() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": interstitial ad hidden");
            m30745a("onInterstitialAdHidden", this.f8329a, new RunnableC2198d());
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoadFailed(MaxAdapterError maxAdapterError) {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30040d("MediationAdapterWrapper", C2178k.this.f8279f + ": interstitial ad failed to load with error " + maxAdapterError);
            m30744a("onInterstitialAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxInterstitialAdapterListener
        public void onInterstitialAdLoaded() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": interstitial ad loaded");
            m30747a("onInterstitialAdLoaded");
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdClicked() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": rewarded ad clicked");
            m30745a("onRewardedAdClicked", this.f8329a, new RunnableC2199e());
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayFailed(MaxAdapterError maxAdapterError) {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30040d("MediationAdapterWrapper", C2178k.this.f8279f + ": rewarded ad display failed with error: " + maxAdapterError);
            m30740b("onRewardedAdDisplayFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdDisplayed() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": rewarded ad displayed");
            m30742b("onRewardedAdDisplayed");
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdHidden() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": rewarded ad hidden");
            m30745a("onRewardedAdHidden", this.f8329a, new RunnableC2200f());
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoadFailed(MaxAdapterError maxAdapterError) {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30040d("MediationAdapterWrapper", C2178k.this.f8279f + ": rewarded ad failed to load with code: " + maxAdapterError);
            m30744a("onRewardedAdLoadFailed", maxAdapterError);
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdLoaded() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": rewarded ad loaded");
            m30747a("onRewardedAdLoaded");
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdVideoCompleted() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": rewarded video completed");
            m30745a("onRewardedAdVideoCompleted", this.f8329a, new RunnableC2204j());
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onRewardedAdVideoStarted() {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": rewarded video started");
            m30745a("onRewardedAdVideoStarted", this.f8329a, new RunnableC2203i());
        }

        @Override // com.applovin.mediation.adapter.listeners.MaxRewardedAdapterListener
        public void onUserRewarded(MaxReward maxReward) {
            C2374t tVar = C2178k.this.f8276c;
            tVar.m30042c("MediationAdapterWrapper", C2178k.this.f8279f + ": user was rewarded: " + maxReward);
            m30745a("onUserRewarded", this.f8329a, new RunnableC2201g(maxReward));
        }
    }

    /* renamed from: c.b.a.d.k$m */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$m.class */
    public static class C2211m {

        /* renamed from: a */
        public final C2135c.C2144h f8353a;

        /* renamed from: b */
        public final MaxSignalCollectionListener f8354b;

        /* renamed from: c */
        public final AtomicBoolean f8355c = new AtomicBoolean();

        public C2211m(C2135c.C2144h hVar, MaxSignalCollectionListener maxSignalCollectionListener) {
            this.f8353a = hVar;
            this.f8354b = maxSignalCollectionListener;
        }
    }

    /* renamed from: c.b.a.d.k$n */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$n.class */
    public class C2212n extends C2270g.AbstractRunnableC2278c {
        public C2212n() {
            super("TaskTimeoutMediatedAd", C2178k.this.f8275b);
        }

        public /* synthetic */ C2212n(C2178k kVar, RunnableC2179a aVar) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!C2178k.this.f8287n.get()) {
                m30484d(C2178k.this.f8279f + " is timing out " + C2178k.this.f8282i + "...");
                this.f8916a.m30295a().m30719a(C2178k.this.f8282i);
                C2178k.this.f8284k.m30746a(m30489b(), -5101);
            }
        }
    }

    /* renamed from: c.b.a.d.k$o */
    /* loaded from: classes-dex2jar.jar:c/b/a/d/k$o.class */
    public class C2213o extends C2270g.AbstractRunnableC2278c {

        /* renamed from: f */
        public final C2211m f8357f;

        public C2213o(C2211m mVar) {
            super("TaskTimeoutSignalCollection", C2178k.this.f8275b);
            this.f8357f = mVar;
        }

        public /* synthetic */ C2213o(C2178k kVar, C2211m mVar, RunnableC2179a aVar) {
            this(mVar);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!this.f8357f.f8355c.get()) {
                m30484d(C2178k.this.f8279f + " is timing out " + this.f8357f.f8353a + "...");
                C2178k kVar = C2178k.this;
                kVar.m30767b("The adapter (" + C2178k.this.f8279f + ") timed out", this.f8357f);
            }
        }
    }

    public C2178k(C2135c.C2141f fVar, MaxAdapter maxAdapter, C2341l lVar) {
        if (fVar == null) {
            throw new IllegalArgumentException("No adapter name specified");
        } else if (maxAdapter == null) {
            throw new IllegalArgumentException("No adapter specified");
        } else if (lVar != null) {
            this.f8277d = fVar.m30902d();
            this.f8280g = maxAdapter;
            this.f8275b = lVar;
            this.f8276c = lVar.m30262d0();
            this.f8278e = fVar;
            this.f8279f = maxAdapter.getClass().getSimpleName();
        } else {
            throw new IllegalArgumentException("No sdk specified");
        }
    }

    /* renamed from: a */
    public View m30784a() {
        return this.f8283j;
    }

    /* renamed from: a */
    public void m30783a(C2135c.AbstractC2137b bVar, Activity activity) {
        Runnable runnable;
        if (bVar == null) {
            throw new IllegalArgumentException("No mediated ad specified");
        } else if (bVar.m30970n() == null) {
            this.f8284k.m30741b("ad_show", -5201);
        } else if (bVar.m30970n() != this) {
            throw new IllegalArgumentException("Mediated ad belongs to a different adapter");
        } else if (activity == null) {
            throw new IllegalArgumentException("No activity specified");
        } else if (!this.f8286m.get()) {
            C2374t.m30034j("MediationAdapterWrapper", "Mediation adapter '" + this.f8279f + "' is disabled. Showing ads with this adapter is disabled.");
            this.f8284k.m30741b("ad_show", -5103);
        } else if (m30764d()) {
            if (bVar.getFormat() == MaxAdFormat.INTERSTITIAL) {
                if (this.f8280g instanceof MaxInterstitialAdapter) {
                    runnable = new RunnableC2192j(activity);
                } else {
                    C2374t.m30034j("MediationAdapterWrapper", "Mediation adapter '" + this.f8279f + "' is not an interstitial adapter.");
                    this.f8284k.m30741b("showFullscreenAd", -5104);
                    return;
                }
            } else if (bVar.getFormat() != MaxAdFormat.REWARDED) {
                throw new IllegalStateException("Failed to show " + bVar + ": " + bVar.getFormat() + " is not a supported ad format");
            } else if (this.f8280g instanceof MaxRewardedAdapter) {
                runnable = new RunnableC2193k(activity);
            } else {
                C2374t.m30034j("MediationAdapterWrapper", "Mediation adapter '" + this.f8279f + "' is not an incentivized adapter.");
                this.f8284k.m30741b("showFullscreenAd", -5104);
                return;
            }
            m30771a("ad_render", new RunnableC2183b(runnable, bVar));
        } else {
            throw new IllegalStateException("Mediation adapter '" + this.f8279f + "' does not have an ad loaded. Please load an ad first");
        }
    }

    /* renamed from: a */
    public void m30777a(MaxAdapterInitializationParameters maxAdapterInitializationParameters, Activity activity) {
        m30771a("initialize", new RunnableC2179a(maxAdapterInitializationParameters, activity));
    }

    /* renamed from: a */
    public void m30776a(MaxAdapterSignalCollectionParameters maxAdapterSignalCollectionParameters, C2135c.C2144h hVar, Activity activity, MaxSignalCollectionListener maxSignalCollectionListener) {
        if (maxSignalCollectionListener == null) {
            throw new IllegalArgumentException("No callback specified");
        } else if (!this.f8286m.get()) {
            C2374t.m30034j("MediationAdapterWrapper", "Mediation adapter '" + this.f8279f + "' is disabled. Signal collection ads with this adapter is disabled.");
            maxSignalCollectionListener.onSignalCollectionFailed("The adapter (" + this.f8279f + ") is disabled");
        } else {
            C2211m mVar = new C2211m(hVar, maxSignalCollectionListener);
            MaxAdapter maxAdapter = this.f8280g;
            if (maxAdapter instanceof MaxSignalProvider) {
                m30771a("collect_signal", new RunnableC2184c((MaxSignalProvider) maxAdapter, maxAdapterSignalCollectionParameters, activity, mVar, hVar));
                return;
            }
            m30767b("The adapter (" + this.f8279f + ") does not support signal collection", mVar);
        }
    }

    /* renamed from: a */
    public final void m30775a(String str) {
        C2374t tVar = this.f8276c;
        tVar.m30042c("MediationAdapterWrapper", "Marking " + this.f8279f + " as disabled due to: " + str);
        this.f8286m.set(false);
    }

    /* renamed from: a */
    public void m30774a(String str, C2135c.AbstractC2137b bVar) {
        this.f8281h = str;
        this.f8282i = bVar;
    }

    /* renamed from: a */
    public final void m30773a(String str, C2211m mVar) {
        if (mVar.f8355c.compareAndSet(false, true) && mVar.f8354b != null) {
            mVar.f8354b.onSignalCollected(str);
        }
    }

    /* renamed from: a */
    public void m30772a(String str, MaxAdapterResponseParameters maxAdapterResponseParameters, C2135c.AbstractC2137b bVar, Activity activity, AbstractC2171f fVar) {
        Runnable runnable;
        if (bVar == null) {
            throw new IllegalArgumentException("No mediated ad specified");
        } else if (!this.f8286m.get()) {
            C2374t.m30034j("MediationAdapterWrapper", "Mediation adapter '" + this.f8279f + "' was disabled due to earlier failures. Loading ads with this adapter is disabled.");
            fVar.onAdLoadFailed(str, -5103);
        } else {
            this.f8285l = maxAdapterResponseParameters;
            this.f8284k.m30751a(fVar);
            if (bVar.getFormat() == MaxAdFormat.INTERSTITIAL) {
                if (this.f8280g instanceof MaxInterstitialAdapter) {
                    runnable = new RunnableC2188f(maxAdapterResponseParameters, activity);
                } else {
                    C2374t.m30034j("MediationAdapterWrapper", "Mediation adapter '" + this.f8279f + "' is not an interstitial adapter.");
                    this.f8284k.m30746a("loadAd", -5104);
                    return;
                }
            } else if (bVar.getFormat() == MaxAdFormat.REWARDED) {
                if (this.f8280g instanceof MaxRewardedAdapter) {
                    runnable = new RunnableC2189g(maxAdapterResponseParameters, activity);
                } else {
                    C2374t.m30034j("MediationAdapterWrapper", "Mediation adapter '" + this.f8279f + "' is not an incentivized adapter.");
                    this.f8284k.m30746a("loadAd", -5104);
                    return;
                }
            } else if (bVar.getFormat() != MaxAdFormat.BANNER && bVar.getFormat() != MaxAdFormat.LEADER && bVar.getFormat() != MaxAdFormat.MREC) {
                throw new IllegalStateException("Failed to load " + bVar + ": " + bVar.getFormat() + " is not a supported ad format");
            } else if (this.f8280g instanceof MaxAdViewAdapter) {
                runnable = new RunnableC2190h(maxAdapterResponseParameters, bVar, activity);
            } else {
                C2374t.m30034j("MediationAdapterWrapper", "Mediation adapter '" + this.f8279f + "' is not an adview-based adapter.");
                this.f8284k.m30746a("loadAd", -5104);
                return;
            }
            m30771a("ad_load", new RunnableC2191i(runnable, bVar));
        }
    }

    /* renamed from: a */
    public final void m30771a(String str, Runnable runnable) {
        RunnableC2187e eVar = new RunnableC2187e(str, runnable);
        if (this.f8278e.m30896g()) {
            this.f8274a.post(eVar);
        } else {
            eVar.run();
        }
    }

    /* renamed from: b */
    public String m30770b() {
        return this.f8277d;
    }

    /* renamed from: b */
    public final void m30767b(String str, C2211m mVar) {
        if (mVar.f8355c.compareAndSet(false, true) && mVar.f8354b != null) {
            mVar.f8354b.onSignalCollectionFailed(str);
        }
    }

    /* renamed from: c */
    public boolean m30766c() {
        return this.f8286m.get();
    }

    /* renamed from: d */
    public boolean m30764d() {
        return this.f8287n.get() && this.f8288o.get();
    }

    /* renamed from: e */
    public String m30762e() {
        MaxAdapter maxAdapter = this.f8280g;
        if (maxAdapter == null) {
            return null;
        }
        try {
            return maxAdapter.getSdkVersion();
        } catch (Throwable th) {
            C2374t tVar = this.f8276c;
            tVar.m30043b("MediationAdapterWrapper", "Unable to get adapter's SDK version, marking " + this + " as disabled", th);
            m30775a("fail_version");
            return null;
        }
    }

    /* renamed from: f */
    public String m30760f() {
        MaxAdapter maxAdapter = this.f8280g;
        if (maxAdapter == null) {
            return null;
        }
        try {
            return maxAdapter.getAdapterVersion();
        } catch (Throwable th) {
            C2374t tVar = this.f8276c;
            tVar.m30043b("MediationAdapterWrapper", "Unable to get adapter version, marking " + this + " as disabled", th);
            m30775a("fail_version");
            return null;
        }
    }

    /* renamed from: g */
    public void m30758g() {
        m30771a("destroy", new RunnableC2186d());
    }

    public String toString() {
        return "MediationAdapterWrapper{adapterTag='" + this.f8279f + "'}";
    }
}
