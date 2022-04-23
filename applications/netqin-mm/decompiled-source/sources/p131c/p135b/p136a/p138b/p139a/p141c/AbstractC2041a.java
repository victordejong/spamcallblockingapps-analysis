package p131c.p135b.p136a.p138b.p139a.p141c;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.C7054e;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.impl.sdk.p491d.C7048s;
import com.applovin.impl.sdk.utils.AppKilledService;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p135b.p136a.p138b.C2070d;
import p131c.p135b.p136a.p138b.C2095k;
import p131c.p135b.p136a.p138b.C2096l;
import p131c.p135b.p136a.p138b.p139a.C2040b;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p149a.C2229b;
import p131c.p135b.p136a.p148e.p151e.C2262c;
import p131c.p135b.p136a.p148e.p153y.AbstractC2381a;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2391j;
import p131c.p135b.p136a.p148e.p153y.C2422o;
import p131c.p135b.p136a.p148e.p153y.C2423p;
import p131c.p135b.p136a.p148e.p153y.C2427s;
/* renamed from: c.b.a.b.a.c.a */
/* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/a.class */
public abstract class AbstractC2041a implements C2229b.AbstractC2237d {

    /* renamed from: a */
    public final AbstractC7036g f7952a;

    /* renamed from: b */
    public final C2341l f7953b;

    /* renamed from: c */
    public final C2374t f7954c;

    /* renamed from: d */
    public final AppLovinFullscreenActivity f7955d;

    /* renamed from: e */
    public final C2262c f7956e;

    /* renamed from: g */
    public final AbstractC2381a f7958g;

    /* renamed from: h */
    public final AppLovinBroadcastManager.Receiver f7959h;

    /* renamed from: i */
    public final C7054e.AbstractC7056b f7960i;

    /* renamed from: j */
    public final AppLovinAdView f7961j;

    /* renamed from: k */
    public final C2095k f7962k;

    /* renamed from: o */
    public long f7966o;

    /* renamed from: r */
    public boolean f7969r;

    /* renamed from: s */
    public final AppLovinAdClickListener f7970s;

    /* renamed from: t */
    public final AppLovinAdDisplayListener f7971t;

    /* renamed from: u */
    public final AppLovinAdVideoPlaybackListener f7972u;

    /* renamed from: v */
    public final C2229b f7973v;

    /* renamed from: w */
    public C2423p f7974w;

    /* renamed from: f */
    public final Handler f7957f = new Handler(Looper.getMainLooper());

    /* renamed from: l */
    public final long f7963l = SystemClock.elapsedRealtime();

    /* renamed from: m */
    public final AtomicBoolean f7964m = new AtomicBoolean();

    /* renamed from: n */
    public final AtomicBoolean f7965n = new AtomicBoolean();

    /* renamed from: p */
    public long f7967p = -1;

    /* renamed from: q */
    public int f7968q = C7054e.f21780h;

    /* renamed from: c.b.a.b.a.c.a$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/a$a.class */
    public class C2042a implements AppLovinAdDisplayListener {
        public C2042a() {
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            AbstractC2041a.this.f7954c.m30044b("InterActivityV2", "Web content rendered");
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            AbstractC2041a.this.f7954c.m30044b("InterActivityV2", "Closing from WebView");
            AbstractC2041a.this.mo31149f();
        }
    }

    /* renamed from: c.b.a.b.a.c.a$b */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/a$b.class */
    public class C2043b implements AppLovinBroadcastManager.Receiver {

        /* renamed from: a */
        public final /* synthetic */ C2341l f7976a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC7036g f7977b;

        /* renamed from: c */
        public final /* synthetic */ AppLovinFullscreenActivity f7978c;

        /* renamed from: d */
        public final /* synthetic */ Intent f7979d;

        public C2043b(AbstractC2041a aVar, C2341l lVar, AbstractC7036g gVar, AppLovinFullscreenActivity appLovinFullscreenActivity, Intent intent) {
            this.f7976a = lVar;
            this.f7977b = gVar;
            this.f7978c = appLovinFullscreenActivity;
            this.f7979d = intent;
        }

        @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
        public void onReceive(Context context, Intent intent, Map<String, Object> map) {
            this.f7976a.m30299W().trackAppKilled(this.f7977b);
            this.f7978c.stopService(this.f7979d);
            this.f7976a.m30317E().unregisterReceiver(this);
        }
    }

    /* renamed from: c.b.a.b.a.c.a$c */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/a$c.class */
    public class C2044c implements C7054e.AbstractC7056b {
        public C2044c() {
        }

        @Override // com.applovin.impl.sdk.C7054e.AbstractC7056b
        public void onRingerModeChanged(int i) {
            String str;
            AbstractC2041a aVar = AbstractC2041a.this;
            if (aVar.f7968q != C7054e.f21780h) {
                aVar.f7969r = true;
            }
            C2070d adWebView = ((AdViewControllerImpl) AbstractC2041a.this.f7961j.getAdViewController()).getAdWebView();
            if (!C7054e.m18805b(i) || C7054e.m18805b(AbstractC2041a.this.f7968q)) {
                if (i == 2) {
                    str = "javascript:al_muteSwitchOff();";
                }
                AbstractC2041a.this.f7968q = i;
            }
            str = "javascript:al_muteSwitchOn();";
            adWebView.m31125a(str);
            AbstractC2041a.this.f7968q = i;
        }
    }

    /* renamed from: c.b.a.b.a.c.a$d */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/a$d.class */
    public class C2045d extends AbstractC2381a {

        /* renamed from: a */
        public final /* synthetic */ C2341l f7981a;

        /* renamed from: c.b.a.b.a.c.a$d$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/a$d$a.class */
        public class RunnableC2046a implements Runnable {
            public RunnableC2046a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2374t.m30034j("InterActivityV2", "Dismissing on-screen ad due to app relaunched via launcher.");
                AbstractC2041a.this.mo31149f();
            }
        }

        public C2045d(C2341l lVar) {
            this.f7981a = lVar;
        }

        @Override // p131c.p135b.p136a.p148e.p153y.AbstractC2381a, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            if (!AbstractC2041a.this.f7965n.get()) {
                if (activity.getClass().getName().equals(AbstractC2426r.m29777d(activity.getApplicationContext()))) {
                    this.f7981a.m30249j().m18826a(new C2270g.C2290g(this.f7981a, new RunnableC2046a()), C7048s.EnumC7049a.MAIN);
                }
            }
        }
    }

    /* renamed from: c.b.a.b.a.c.a$e */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/a$e.class */
    public class RunnableC2047e implements Runnable {
        public RunnableC2047e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC2041a.this.f7955d.stopService(new Intent(AbstractC2041a.this.f7955d.getApplicationContext(), AppKilledService.class));
            AbstractC2041a.this.f7953b.m30317E().unregisterReceiver(AbstractC2041a.this.f7959h);
        }
    }

    /* renamed from: c.b.a.b.a.c.a$f */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/a$f.class */
    public class RunnableC2048f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f7985a;

        public RunnableC2048f(String str) {
            this.f7985a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2070d adWebView;
            if (C2422o.m29851b(this.f7985a) && (adWebView = ((AdViewControllerImpl) AbstractC2041a.this.f7961j.getAdViewController()).getAdWebView()) != null) {
                adWebView.m31125a(this.f7985a);
            }
        }
    }

    /* renamed from: c.b.a.b.a.c.a$g */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/a$g.class */
    public class RunnableC2049g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2095k f7987a;

        /* renamed from: b */
        public final /* synthetic */ Runnable f7988b;

        /* renamed from: c.b.a.b.a.c.a$g$a */
        /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/a$g$a.class */
        public class RunnableC2050a implements Runnable {

            /* renamed from: c.b.a.b.a.c.a$g$a$a */
            /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/a$g$a$a.class */
            public class RunnableC2051a implements Runnable {
                public RunnableC2051a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    RunnableC2049g.this.f7988b.run();
                }
            }

            public RunnableC2050a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                C2427s.m29767a(RunnableC2049g.this.f7987a, 400L, new RunnableC2051a());
            }
        }

        public RunnableC2049g(AbstractC2041a aVar, C2095k kVar, Runnable runnable) {
            this.f7987a = kVar;
            this.f7988b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            AppLovinSdkUtils.runOnUiThread(new RunnableC2050a());
        }
    }

    /* renamed from: c.b.a.b.a.c.a$h */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/a$h.class */
    public class RunnableC2052h implements Runnable {
        public RunnableC2052h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!AbstractC2041a.this.f7952a.m18897g0().getAndSet(true)) {
                AbstractC2041a aVar = AbstractC2041a.this;
                AbstractC2041a.this.f7953b.m30249j().m18826a(new C2270g.C2291g0(aVar.f7952a, aVar.f7953b), C7048s.EnumC7049a.REWARD);
            }
        }
    }

    /* renamed from: c.b.a.b.a.c.a$i */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/a$i.class */
    public class View$OnClickListenerC2053i implements View.OnClickListener, AppLovinAdClickListener {
        public View$OnClickListenerC2053i() {
        }

        public /* synthetic */ View$OnClickListenerC2053i(AbstractC2041a aVar, C2042a aVar2) {
            this();
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            AbstractC2041a.this.f7954c.m30044b("InterActivityV2", "Clicking through graphic");
            C2391j.m29900a(AbstractC2041a.this.f7970s, appLovinAd);
            AbstractC2041a.this.f7956e.m30553b();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractC2041a aVar = AbstractC2041a.this;
            if (view == aVar.f7962k) {
                if (aVar.f7952a.m18937T()) {
                    AbstractC2041a.this.m31188b("javascript:al_onCloseButtonTapped();");
                }
                AbstractC2041a.this.mo31149f();
                return;
            }
            C2374t tVar = aVar.f7954c;
            tVar.m30039e("InterActivityV2", "Unhandled click on widget: " + view);
        }
    }

    public AbstractC2041a(AbstractC7036g gVar, AppLovinFullscreenActivity appLovinFullscreenActivity, C2341l lVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.f7952a = gVar;
        this.f7953b = lVar;
        this.f7954c = lVar.m30262d0();
        this.f7955d = appLovinFullscreenActivity;
        this.f7970s = appLovinAdClickListener;
        this.f7971t = appLovinAdDisplayListener;
        this.f7972u = appLovinAdVideoPlaybackListener;
        C2229b bVar = new C2229b(appLovinFullscreenActivity, lVar);
        this.f7973v = bVar;
        bVar.m30692a(this);
        this.f7956e = new C2262c(gVar, lVar);
        View$OnClickListenerC2053i iVar = new View$OnClickListenerC2053i(this, null);
        C2096l lVar2 = new C2096l(lVar.m30242q(), AppLovinAdSize.INTERSTITIAL, appLovinFullscreenActivity);
        this.f7961j = lVar2;
        lVar2.setAdClickListener(iVar);
        this.f7961j.setAdDisplayListener(new C2042a());
        AdViewControllerImpl adViewControllerImpl = (AdViewControllerImpl) this.f7961j.getAdViewController();
        adViewControllerImpl.setStatsManagerHelper(this.f7956e);
        adViewControllerImpl.getAdWebView().setIsShownOutOfContext(gVar.m18885m0());
        lVar.m30299W().trackImpression(gVar);
        if (gVar.m18859z0() >= 0) {
            C2095k kVar = new C2095k(gVar.m18964A0(), appLovinFullscreenActivity);
            this.f7962k = kVar;
            kVar.setVisibility(8);
            this.f7962k.setOnClickListener(iVar);
        } else {
            this.f7962k = null;
        }
        if (((Boolean) lVar.m30291a(C2251d.C2256e.f8614V1)).booleanValue()) {
            Intent intent = new Intent(appLovinFullscreenActivity.getApplicationContext(), AppKilledService.class);
            this.f7959h = new C2043b(this, lVar, gVar, appLovinFullscreenActivity, intent);
            lVar.m30317E().registerReceiver(this.f7959h, new IntentFilter(AppKilledService.ACTION_APP_KILLED));
            appLovinFullscreenActivity.startService(intent);
        } else {
            this.f7959h = null;
        }
        if (gVar.m18887l0()) {
            this.f7960i = new C2044c();
            lVar.m30318D().m18807a(this.f7960i);
        } else {
            this.f7960i = null;
        }
        if (((Boolean) lVar.m30291a(C2251d.C2256e.f8621W3)).booleanValue()) {
            this.f7958g = new C2045d(lVar);
            lVar.m30234y().m30675a(this.f7958g);
            return;
        }
        this.f7958g = null;
    }

    /* renamed from: a */
    public void mo31164a(int i, KeyEvent keyEvent) {
        C2374t tVar = this.f7954c;
        tVar.m30042c("InterActivityV2", "onKeyDown(int, KeyEvent) -  " + i + ", " + keyEvent);
    }

    /* renamed from: a */
    public void m31199a(int i, boolean z, boolean z2, long j) {
        if (this.f7964m.compareAndSet(false, true)) {
            if (this.f7952a.hasVideoUrl() || m31183k()) {
                C2391j.m29894a(this.f7972u, this.f7952a, i, z2);
            }
            if (this.f7952a.hasVideoUrl()) {
                this.f7956e.m30550c(i);
            }
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f7963l;
            this.f7953b.m30299W().trackVideoEnd(this.f7952a, TimeUnit.MILLISECONDS.toSeconds(elapsedRealtime), i, z);
            long j2 = -1;
            if (this.f7967p != -1) {
                j2 = SystemClock.elapsedRealtime() - this.f7967p;
            }
            this.f7953b.m30299W().trackFullScreenAdClosed(this.f7952a, j2, j, this.f7969r, this.f7968q);
            C2374t tVar = this.f7954c;
            tVar.m30044b("InterActivityV2", "Video ad ended at percent: " + i + "%, elapsedTime: " + elapsedRealtime + "ms, skipTimeMillis: " + j + "ms, closeTimeMillis: " + j2 + "ms");
        }
    }

    /* renamed from: a */
    public void m31198a(long j) {
        C2374t tVar = this.f7954c;
        tVar.m30044b("InterActivityV2", "Scheduling report reward in " + TimeUnit.MILLISECONDS.toSeconds(j) + " seconds...");
        this.f7974w = C2423p.m29844a(j, this.f7953b, new RunnableC2052h());
    }

    /* renamed from: a */
    public void m31197a(Configuration configuration) {
        C2374t tVar = this.f7954c;
        tVar.m30042c("InterActivityV2", "onConfigurationChanged(Configuration) -  " + configuration);
    }

    /* renamed from: a */
    public void m31195a(C2095k kVar, long j, Runnable runnable) {
        this.f7953b.m30249j().m18824a((C2270g.AbstractRunnableC2278c) new C2270g.C2290g(this.f7953b, new RunnableC2049g(this, kVar, runnable)), C7048s.EnumC7049a.MAIN, TimeUnit.SECONDS.toMillis(j), true);
    }

    /* renamed from: a */
    public void m31194a(Runnable runnable, long j) {
        AppLovinSdkUtils.runOnUiThreadDelayed(runnable, j, this.f7957f);
    }

    /* renamed from: a */
    public void m31193a(String str) {
        if (this.f7952a.m18935V()) {
            m31192a(str, 0L);
        }
    }

    /* renamed from: a */
    public void m31192a(String str, long j) {
        if (j >= 0) {
            m31194a(new RunnableC2048f(str), j);
        }
    }

    /* renamed from: a */
    public void m31191a(boolean z) {
        List<Uri> a = AbstractC2426r.m29792a(z, this.f7952a, this.f7953b, this.f7955d);
        if (a.isEmpty()) {
            return;
        }
        if (!((Boolean) this.f7953b.m30291a(C2251d.C2256e.f8668f4)).booleanValue()) {
            this.f7952a.mo18965A();
            return;
        }
        throw new IllegalStateException("Missing cached resource(s): " + a);
    }

    /* renamed from: a */
    public void m31190a(boolean z, long j) {
        if (this.f7952a.m18938S()) {
            m31192a(z ? "javascript:al_mute();" : "javascript:al_unmute();", j);
        }
    }

    /* renamed from: b */
    public void m31188b(String str) {
        m31192a(str, 0L);
    }

    /* renamed from: b */
    public void m31187b(boolean z) {
        m31190a(z, ((Long) this.f7953b.m30291a(C2251d.C2256e.f8714n2)).longValue());
        C2391j.m29899a(this.f7971t, this.f7952a);
        this.f7953b.m30235x().m30058a(this.f7952a);
        if (this.f7952a.hasVideoUrl() || m31183k()) {
            C2391j.m29895a(this.f7972u, this.f7952a);
        }
        new C2040b(this.f7955d).m31200a(this.f7952a);
        this.f7956e.m30559a();
        this.f7952a.setHasShown(true);
    }

    /* renamed from: c */
    public abstract void mo31156c();

    /* renamed from: c */
    public void mo31153c(boolean z) {
        C2374t tVar = this.f7954c;
        tVar.m30042c("InterActivityV2", "onWindowFocusChanged(boolean) - " + z);
        m31193a("javascript:al_onWindowFocusChanged( " + z + " );");
    }

    /* renamed from: d */
    public void mo31168d() {
        this.f7954c.m30042c("InterActivityV2", "onResume()");
        this.f7956e.m30548d(SystemClock.elapsedRealtime() - this.f7966o);
        m31193a("javascript:al_onAppResumed();");
        m31180o();
        if (this.f7973v.m30685d()) {
            this.f7973v.m30693a();
        }
    }

    /* renamed from: e */
    public void mo31167e() {
        this.f7954c.m30042c("InterActivityV2", "onPause()");
        this.f7966o = SystemClock.elapsedRealtime();
        m31193a("javascript:al_onAppPaused();");
        this.f7973v.m30693a();
        m31181n();
    }

    /* renamed from: f */
    public void mo31149f() {
        this.f7954c.m30042c("InterActivityV2", "dismiss()");
        this.f7957f.removeCallbacksAndMessages(null);
        m31192a("javascript:al_onPoststitialDismiss();", this.f7952a.m18939R());
        m31182m();
        this.f7956e.m30551c();
        if (this.f7959h != null) {
            C2423p.m29844a(TimeUnit.SECONDS.toMillis(2L), this.f7953b, new RunnableC2047e());
        }
        if (this.f7960i != null) {
            this.f7953b.m30318D().m18804b(this.f7960i);
        }
        if (this.f7958g != null) {
            this.f7953b.m30234y().m30673b(this.f7958g);
        }
        this.f7955d.finish();
    }

    /* renamed from: g */
    public void m31186g() {
        this.f7954c.m30042c("InterActivityV2", "onStop()");
    }

    /* renamed from: h */
    public void mo31146h() {
        AppLovinAdView appLovinAdView = this.f7961j;
        if (appLovinAdView != null) {
            ViewParent parent = appLovinAdView.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeAllViews();
            }
            this.f7961j.destroy();
        }
        mo31144l();
        m31182m();
    }

    /* renamed from: i */
    public void m31185i() {
        C2374t.m30034j("InterActivityV2", "---low memory detected - running garbage collection---");
        System.gc();
    }

    /* renamed from: j */
    public void m31184j() {
        this.f7954c.m30042c("InterActivityV2", "onBackPressed()");
        if (this.f7952a.m18937T()) {
            m31188b("javascript:onBackPressed();");
        }
    }

    /* renamed from: k */
    public boolean m31183k() {
        return this.f7952a.getType() == AppLovinAdType.INCENTIVIZED;
    }

    /* renamed from: l */
    public abstract void mo31144l();

    /* renamed from: m */
    public void m31182m() {
        if (this.f7965n.compareAndSet(false, true)) {
            C2391j.m29888b(this.f7971t, this.f7952a);
            this.f7953b.m30235x().m30054b(this.f7952a);
        }
    }

    /* renamed from: n */
    public void m31181n() {
        C2423p pVar = this.f7974w;
        if (pVar != null) {
            pVar.m29841b();
        }
    }

    /* renamed from: o */
    public void m31180o() {
        C2423p pVar = this.f7974w;
        if (pVar != null) {
            pVar.m29839c();
        }
    }

    /* renamed from: p */
    public boolean m31179p() {
        return ((Boolean) this.f7953b.m30291a(C2251d.C2256e.f8642b2)).booleanValue() ? this.f7953b.m30302T().isMuted() : ((Boolean) this.f7953b.m30291a(C2251d.C2256e.f8632Z1)).booleanValue();
    }
}
