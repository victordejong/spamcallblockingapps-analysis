package com.applovin.impl.adview.activity.p037b;

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
import android.support.p012v4.media.C0082b;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.adview.AbstractC0996i;
import com.applovin.impl.adview.C0969b;
import com.applovin.impl.adview.C0984d;
import com.applovin.impl.adview.C1011m;
import com.applovin.impl.adview.C1012n;
import com.applovin.impl.adview.activity.C0913b;
import com.applovin.impl.p035a.C0875a;
import com.applovin.impl.sdk.AppLovinBroadcastManager;
import com.applovin.impl.sdk.C1389g;
import com.applovin.impl.sdk.C1408l;
import com.applovin.impl.sdk.C1479t;
import com.applovin.impl.sdk.p053ad.AbstractC1286e;
import com.applovin.impl.sdk.p054b.C1303b;
import com.applovin.impl.sdk.p055c.C1314b;
import com.applovin.impl.sdk.p056d.C1326d;
import com.applovin.impl.sdk.p057e.C1362o;
import com.applovin.impl.sdk.p057e.C1380v;
import com.applovin.impl.sdk.p057e.C1387z;
import com.applovin.impl.sdk.utils.AbstractC1485a;
import com.applovin.impl.sdk.utils.AppKilledService;
import com.applovin.impl.sdk.utils.C1496j;
import com.applovin.impl.sdk.utils.C1533n;
import com.applovin.impl.sdk.utils.C1536p;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.Utils;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdType;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p007a6.C0028d;
/* renamed from: com.applovin.impl.adview.activity.b.a */
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/a.class */
public abstract class AbstractC0914a implements C1303b.AbstractC1310a {

    /* renamed from: a */
    public final AbstractC1286e f3425a;

    /* renamed from: b */
    public final C1408l f3426b;

    /* renamed from: c */
    public final C1479t f3427c;

    /* renamed from: d */
    public final C1326d f3428d;

    /* renamed from: e */
    public Activity f3429e;

    /* renamed from: f */
    public AppLovinAdView f3430f;

    /* renamed from: g */
    public final C1011m f3431g;

    /* renamed from: m */
    public boolean f3437m;

    /* renamed from: n */
    public AppLovinAdClickListener f3438n;

    /* renamed from: o */
    public AppLovinAdDisplayListener f3439o;

    /* renamed from: p */
    public AppLovinAdVideoPlaybackListener f3440p;

    /* renamed from: q */
    public final C1303b f3441q;

    /* renamed from: r */
    public C1533n f3442r;

    /* renamed from: s */
    public C1533n f3443s;

    /* renamed from: u */
    private final AbstractC1485a f3445u;

    /* renamed from: v */
    private final AppLovinBroadcastManager.Receiver f3446v;

    /* renamed from: w */
    private final C1389g.AbstractC1391a f3447w;

    /* renamed from: z */
    private long f3450z;

    /* renamed from: t */
    private final Handler f3444t = new Handler(Looper.getMainLooper());

    /* renamed from: h */
    public final long f3432h = SystemClock.elapsedRealtime();

    /* renamed from: x */
    private final AtomicBoolean f3448x = new AtomicBoolean();

    /* renamed from: y */
    private final AtomicBoolean f3449y = new AtomicBoolean();

    /* renamed from: i */
    public long f3433i = -1;

    /* renamed from: A */
    private int f3423A = 0;

    /* renamed from: B */
    private final ArrayList<Long> f3424B = new ArrayList<>();

    /* renamed from: j */
    public int f3434j = 0;

    /* renamed from: k */
    public int f3435k = 0;

    /* renamed from: l */
    public int f3436l = C1389g.f5230a;

    /* renamed from: com.applovin.impl.adview.activity.b.a$7 */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/a$7.class */
    public class RunnableC09227 implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C1011m f3461a;

        /* renamed from: b */
        public final /* synthetic */ Runnable f3462b;

        public RunnableC09227(C1011m c1011m, Runnable runnable) {
            AbstractC0914a.this = r4;
            this.f3461a = c1011m;
            this.f3462b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.a.7.1
                @Override // java.lang.Runnable
                public void run() {
                    C1536p.m4946a(RunnableC09227.this.f3461a, 400L, new Runnable() { // from class: com.applovin.impl.adview.activity.b.a.7.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            RunnableC09227.this.f3461a.bringToFront();
                            RunnableC09227.this.f3462b.run();
                        }
                    });
                }
            });
        }
    }

    /* renamed from: com.applovin.impl.adview.activity.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/a$a.class */
    public interface AbstractC0926a {
        /* renamed from: a */
        void mo6797a(AbstractC0914a abstractC0914a);

        /* renamed from: a */
        void mo6796a(String str, Throwable th);
    }

    /* renamed from: com.applovin.impl.adview.activity.b.a$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/activity/b/a$b.class */
    public class View$OnClickListenerC0927b implements View.OnClickListener, AppLovinAdClickListener {
        private View$OnClickListenerC0927b() {
            AbstractC0914a.this = r4;
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            AbstractC0914a.this.f3427c.m5116b("AppLovinFullscreenActivity", "Clicking through graphic");
            C1496j.m5019a(AbstractC0914a.this.f3438n, appLovinAd);
            AbstractC0914a.this.f3428d.m5767b();
            AbstractC0914a.this.f3435k++;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            AbstractC0914a abstractC0914a = AbstractC0914a.this;
            if (view != abstractC0914a.f3431g || !((Boolean) abstractC0914a.f3426b.m5511a(C1314b.f4863cn)).booleanValue()) {
                C1479t c1479t = AbstractC0914a.this.f3427c;
                c1479t.m5111e("AppLovinFullscreenActivity", "Unhandled click on widget: " + view);
                return;
            }
            AbstractC0914a.m7046c(AbstractC0914a.this);
            if (AbstractC0914a.this.f3425a.m5976Q()) {
                AbstractC0914a abstractC0914a2 = AbstractC0914a.this;
                StringBuilder m8752j = C0082b.m8752j("javascript:al_onCloseButtonTapped(");
                m8752j.append(AbstractC0914a.this.f3423A);
                m8752j.append(",");
                m8752j.append(AbstractC0914a.this.f3434j);
                m8752j.append(",");
                m8752j.append(AbstractC0914a.this.f3435k);
                m8752j.append(");");
                abstractC0914a2.m7048b(m8752j.toString());
            }
            List<Integer> m5900r = AbstractC0914a.this.f3425a.m5900r();
            C1479t c1479t2 = AbstractC0914a.this.f3427c;
            StringBuilder m8752j2 = C0082b.m8752j("Handling close button tap ");
            m8752j2.append(AbstractC0914a.this.f3423A);
            m8752j2.append(" with multi close delay: ");
            m8752j2.append(m5900r);
            c1479t2.m5116b("AppLovinFullscreenActivity", m8752j2.toString());
            if (m5900r == null || m5900r.size() <= AbstractC0914a.this.f3423A) {
                AbstractC0914a.this.mo6958h();
                return;
            }
            AbstractC0914a.this.f3424B.add(Long.valueOf(SystemClock.elapsedRealtime() - AbstractC0914a.this.f3433i));
            List<AbstractC0996i.EnumC0997a> m5898t = AbstractC0914a.this.f3425a.m5898t();
            if (m5898t != null && m5898t.size() > AbstractC0914a.this.f3423A) {
                AbstractC0914a abstractC0914a3 = AbstractC0914a.this;
                abstractC0914a3.f3431g.m6824a(m5898t.get(abstractC0914a3.f3423A));
            }
            C1479t c1479t3 = AbstractC0914a.this.f3427c;
            StringBuilder m8752j3 = C0082b.m8752j("Scheduling next close button with delay: ");
            m8752j3.append(m5900r.get(AbstractC0914a.this.f3423A));
            c1479t3.m5116b("AppLovinFullscreenActivity", m8752j3.toString());
            AbstractC0914a.this.f3431g.setVisibility(8);
            AbstractC0914a abstractC0914a4 = AbstractC0914a.this;
            abstractC0914a4.m7057a(abstractC0914a4.f3431g, m5900r.get(abstractC0914a4.f3423A).intValue(), new Runnable() { // from class: com.applovin.impl.adview.activity.b.a.b.1
                @Override // java.lang.Runnable
                public void run() {
                    AbstractC0914a.this.f3433i = SystemClock.elapsedRealtime();
                }
            });
        }
    }

    public AbstractC0914a(final AbstractC1286e abstractC1286e, Activity activity, final C1408l c1408l, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        this.f3425a = abstractC1286e;
        this.f3426b = c1408l;
        this.f3427c = c1408l.m5542A();
        this.f3429e = activity;
        this.f3438n = appLovinAdClickListener;
        this.f3439o = appLovinAdDisplayListener;
        this.f3440p = appLovinAdVideoPlaybackListener;
        C1303b c1303b = new C1303b(activity, c1408l);
        this.f3441q = c1303b;
        c1303b.m5853a(this);
        C1326d c1326d = new C1326d(abstractC1286e, c1408l);
        this.f3428d = c1326d;
        View$OnClickListenerC0927b view$OnClickListenerC0927b = new View$OnClickListenerC0927b();
        C1012n c1012n = new C1012n(c1408l.m5519X(), AppLovinAdSize.INTERSTITIAL, activity);
        this.f3430f = c1012n;
        c1012n.setAdClickListener(view$OnClickListenerC0927b);
        this.f3430f.setAdDisplayListener(new AppLovinAdDisplayListener() { // from class: com.applovin.impl.adview.activity.b.a.1
            @Override // com.applovin.sdk.AppLovinAdDisplayListener
            public void adDisplayed(AppLovinAd appLovinAd) {
                AbstractC0914a.this.f3427c.m5116b("AppLovinFullscreenActivity", "Web content rendered");
            }

            @Override // com.applovin.sdk.AppLovinAdDisplayListener
            public void adHidden(AppLovinAd appLovinAd) {
                AbstractC0914a.this.f3427c.m5116b("AppLovinFullscreenActivity", "Closing from WebView");
                AbstractC0914a.this.mo6958h();
            }
        });
        C0969b controller = this.f3430f.getController();
        controller.m6936a(c1326d);
        controller.m6891s().setIsShownOutOfContext(abstractC1286e.m5943ah());
        c1408l.m5449u().trackImpression(abstractC1286e);
        List<Integer> m5900r = abstractC1286e.m5900r();
        if (abstractC1286e.m5901q() >= 0 || m5900r != null) {
            C1011m c1011m = new C1011m(abstractC1286e.m5899s(), activity);
            this.f3431g = c1011m;
            c1011m.setVisibility(8);
            c1011m.setOnClickListener(view$OnClickListenerC0927b);
        } else {
            this.f3431g = null;
        }
        if (((Boolean) c1408l.m5511a(C1314b.f4865cp)).booleanValue()) {
            AppLovinBroadcastManager.Receiver receiver = new AppLovinBroadcastManager.Receiver() { // from class: com.applovin.impl.adview.activity.b.a.2
                @Override // com.applovin.impl.sdk.AppLovinBroadcastManager.Receiver
                public void onReceive(Context context, Intent intent, Map<String, Object> map) {
                    c1408l.m5449u().trackAppKilled(abstractC1286e);
                    c1408l.m5487ah().unregisterReceiver(this);
                }
            };
            this.f3446v = receiver;
            c1408l.m5487ah().registerReceiver(receiver, new IntentFilter(AppKilledService.ACTION_APP_KILLED));
        } else {
            this.f3446v = null;
        }
        if (abstractC1286e.m5944ag()) {
            C1389g.AbstractC1391a abstractC1391a = new C1389g.AbstractC1391a() { // from class: com.applovin.impl.adview.activity.b.a.3
                @Override // com.applovin.impl.sdk.C1389g.AbstractC1391a
                /* renamed from: a */
                public void mo5591a(int i) {
                    String str;
                    AbstractC0914a abstractC0914a = AbstractC0914a.this;
                    if (abstractC0914a.f3436l != C1389g.f5230a) {
                        abstractC0914a.f3437m = true;
                    }
                    C0984d m6891s = abstractC0914a.f3430f.getController().m6891s();
                    if (!C1389g.m5597a(i) || C1389g.m5597a(AbstractC0914a.this.f3436l)) {
                        if (i == 2) {
                            str = "javascript:al_muteSwitchOff();";
                        }
                        AbstractC0914a.this.f3436l = i;
                    }
                    str = "javascript:al_muteSwitchOn();";
                    m6891s.m6879a(str);
                    AbstractC0914a.this.f3436l = i;
                }
            };
            this.f3447w = abstractC1391a;
            c1408l.m5488ag().m5596a(abstractC1391a);
        } else {
            this.f3447w = null;
        }
        if (!((Boolean) c1408l.m5511a(C1314b.f4930eC)).booleanValue()) {
            this.f3445u = null;
            return;
        }
        AbstractC1485a abstractC1485a = new AbstractC1485a() { // from class: com.applovin.impl.adview.activity.b.a.4
            @Override // com.applovin.impl.sdk.utils.AbstractC1485a, android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(Activity activity2, Bundle bundle) {
                if (!AbstractC0914a.this.f3449y.get()) {
                    if (!activity2.getClass().getName().equals(Utils.retrieveLauncherActivityFullyQualifiedName(activity2.getApplicationContext()))) {
                        return;
                    }
                    AppLovinSdkUtils.runOnUiThread(new Runnable() { // from class: com.applovin.impl.adview.activity.b.a.4.1
                        @Override // java.lang.Runnable
                        public void run() {
                            C1479t.m5107i("AppLovinFullscreenActivity", "Dismissing on-screen ad due to app relaunched via launcher.");
                            AbstractC0914a.this.mo6958h();
                        }
                    });
                }
            }
        };
        this.f3445u = abstractC1485a;
        c1408l.m5491ad().m6067a(abstractC1485a);
    }

    /* renamed from: a */
    public static void m7056a(AbstractC1286e abstractC1286e, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener, C1408l c1408l, Activity activity, AbstractC0926a abstractC0926a) {
        C0934d c0934d;
        StringBuilder sb;
        String str;
        boolean z = abstractC1286e.m5956aD() && Utils.checkExoPlayerEligibility(c1408l);
        if (abstractC1286e instanceof C0875a) {
            if (!z) {
                try {
                    c0934d = new C0934d(abstractC1286e, activity, c1408l, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                    abstractC0926a.mo6797a(c0934d);
                    return;
                } catch (Throwable th) {
                    th = th;
                    sb = new StringBuilder();
                    sb.append("Failed to create FullscreenVastVideoAdPresenter with sdk: ");
                    sb.append(c1408l);
                    sb.append(" and throwable: ");
                    sb.append(th.getMessage());
                    abstractC0926a.mo6796a(sb.toString(), th);
                }
            }
            try {
                c0934d = new C0932c(abstractC1286e, activity, c1408l, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th2) {
                c1408l.m5542A().m5118a("AppLovinFullscreenActivity", "Failed to create ExoPlayer presenter to show the ad. Falling back to using native media player presenter.", th2);
                Utils.isExoPlayerEligible = Boolean.FALSE;
                try {
                    c0934d = new C0934d(abstractC1286e, activity, c1408l, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } catch (Throwable th3) {
                    th = th3;
                    sb = new StringBuilder();
                    sb.append("Failed to create FullscreenVastVideoAdPresenter with sdk: ");
                    sb.append(c1408l);
                    sb.append(" and throwable: ");
                    sb.append(th.getMessage());
                    abstractC0926a.mo6796a(sb.toString(), th);
                }
            }
            abstractC0926a.mo6797a(c0934d);
            return;
        } else if (!abstractC1286e.hasVideoUrl()) {
            try {
                c0934d = new C0929b(abstractC1286e, activity, c1408l, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                abstractC0926a.mo6797a(c0934d);
                return;
            } catch (Throwable th4) {
                th = th4;
                sb = new StringBuilder();
                str = "Failed to create FullscreenGraphicAdPresenter with sdk: ";
                sb.append(str);
                sb.append(c1408l);
                sb.append(" and throwable: ");
                sb.append(th.getMessage());
                abstractC0926a.mo6796a(sb.toString(), th);
            }
        } else if (abstractC1286e.m5952aH()) {
            try {
                c0934d = new C0964g(abstractC1286e, activity, c1408l, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                abstractC0926a.mo6797a(c0934d);
                return;
            } catch (Throwable th5) {
                th = th5;
                sb = new StringBuilder();
                str = "Failed to create FullscreenWebVideoAdPresenter with sdk: ";
                sb.append(str);
                sb.append(c1408l);
                sb.append(" and throwable: ");
                sb.append(th.getMessage());
                abstractC0926a.mo6796a(sb.toString(), th);
            }
        } else if (!z) {
            try {
                c0934d = new C0949f(abstractC1286e, activity, c1408l, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                abstractC0926a.mo6797a(c0934d);
                return;
            } catch (Throwable th6) {
                th = th6;
                sb = new StringBuilder();
                str = "Failed to create FullscreenVideoAdPresenter with sdk: ";
                sb.append(str);
                sb.append(c1408l);
                sb.append(" and throwable: ");
                sb.append(th.getMessage());
                abstractC0926a.mo6796a(sb.toString(), th);
            }
        } else {
            try {
                c0934d = new C0936e(abstractC1286e, activity, c1408l, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
            } catch (Throwable th7) {
                c1408l.m5542A().m5118a("AppLovinFullscreenActivity", "Failed to create ExoPlayer presenter to show the ad. Falling back to using native media player presenter.", th7);
                Utils.isExoPlayerEligible = Boolean.FALSE;
                try {
                    c0934d = new C0949f(abstractC1286e, activity, c1408l, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
                } catch (Throwable th8) {
                    th = th8;
                    sb = new StringBuilder();
                    str = "Failed to create FullscreenVideoAdExoPlayerPresenter with sdk: ";
                    sb.append(str);
                    sb.append(c1408l);
                    sb.append(" and throwable: ");
                    sb.append(th.getMessage());
                    abstractC0926a.mo6796a(sb.toString(), th);
                }
            }
            abstractC0926a.mo6797a(c0934d);
            return;
        }
        sb.append(c1408l);
        sb.append(" and throwable: ");
        sb.append(th.getMessage());
        abstractC0926a.mo6796a(sb.toString(), th);
    }

    /* renamed from: c */
    public static /* synthetic */ int m7046c(AbstractC0914a abstractC0914a) {
        int i = abstractC0914a.f3423A;
        abstractC0914a.f3423A = i + 1;
        return i;
    }

    /* renamed from: a */
    public void m7061a(int i, KeyEvent keyEvent) {
        C1479t c1479t = this.f3427c;
        if (c1479t != null) {
            c1479t.m5114c("AppLovinFullscreenActivity", "onKeyDown(int, KeyEvent) -  " + i + ", " + keyEvent);
        }
    }

    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* renamed from: a */
    public void m7060a(int i, boolean z, boolean z2, long j) {
        if (this.f3448x.compareAndSet(false, true)) {
            if (this.f3425a.hasVideoUrl() || m7037s()) {
                C1496j.m5013a(this.f3440p, this.f3425a, i, z2);
            }
            if (this.f3425a.hasVideoUrl()) {
                this.f3428d.m5764c(i);
            }
            long elapsedRealtime = SystemClock.elapsedRealtime() - this.f3432h;
            this.f3426b.m5449u().trackVideoEnd(this.f3425a, TimeUnit.MILLISECONDS.toSeconds(elapsedRealtime), i, z);
            char c = 65535;
            if (this.f3433i != -1) {
                c = SystemClock.elapsedRealtime() - this.f3433i;
            }
            this.f3426b.m5449u().trackFullScreenAdClosed(this.f3425a, c, this.f3424B, j, this.f3437m, this.f3436l);
            C1479t c1479t = this.f3427c;
            StringBuilder sb = new StringBuilder();
            sb.append("Video ad ended at percent: ");
            sb.append(i);
            sb.append("%, elapsedTime: ");
            sb.append(elapsedRealtime);
            C0028d.m8911i(sb, "ms, skipTimeMillis: ", j, "ms, closeTimeMillis: ");
            sb.append((long) c);
            sb.append("ms");
            c1479t.m5116b("AppLovinFullscreenActivity", sb.toString());
        }
    }

    /* renamed from: a */
    public abstract void mo6969a(long j);

    /* renamed from: a */
    public void m7059a(Configuration configuration) {
        C1479t c1479t = this.f3427c;
        c1479t.m5114c("AppLovinFullscreenActivity", "onConfigurationChanged(Configuration) -  " + configuration);
    }

    /* renamed from: a */
    public abstract void mo6968a(ViewGroup viewGroup);

    /* renamed from: a */
    public void m7057a(C1011m c1011m, long j, Runnable runnable) {
        if (j >= ((Long) this.f3426b.m5511a(C1314b.f4862cm)).longValue()) {
            return;
        }
        RunnableC09227 runnableC09227 = new RunnableC09227(c1011m, runnable);
        if (((Boolean) this.f3426b.m5511a(C1314b.f4829cF)).booleanValue()) {
            this.f3443s = C1533n.m4965a(TimeUnit.SECONDS.toMillis(j), this.f3426b, runnableC09227);
        } else {
            this.f3426b.m5525R().m5651a(new C1387z(this.f3426b, runnableC09227), C1362o.EnumC1364a.MAIN, TimeUnit.SECONDS.toMillis(j), true);
        }
    }

    /* renamed from: a */
    public void m7055a(Runnable runnable, long j) {
        AppLovinSdkUtils.runOnUiThreadDelayed(runnable, j, this.f3444t);
    }

    /* renamed from: a */
    public void m7054a(String str) {
        if (this.f3425a.m5975R()) {
            m7053a(str, 0L);
        }
    }

    /* renamed from: a */
    public void m7053a(final String str, long j) {
        if (j >= 0) {
            m7055a(new Runnable() { // from class: com.applovin.impl.adview.activity.b.a.6
                @Override // java.lang.Runnable
                public void run() {
                    C0984d m6891s;
                    if (!StringUtils.isValidString(str) || (m6891s = AbstractC0914a.this.f3430f.getController().m6891s()) == null) {
                        return;
                    }
                    m6891s.m6879a(str);
                }
            }, j);
        }
    }

    /* renamed from: a */
    public void m7052a(boolean z) {
        List<Uri> checkCachedResourcesExist = Utils.checkCachedResourcesExist(z, this.f3425a, this.f3426b, this.f3429e);
        if (!checkCachedResourcesExist.isEmpty()) {
            if (!((Boolean) this.f3426b.m5511a(C1314b.f4934eG)).booleanValue()) {
                this.f3425a.mo5966a();
                return;
            }
            throw new IllegalStateException("Missing cached resource(s): " + checkCachedResourcesExist);
        }
    }

    /* renamed from: a */
    public void m7051a(boolean z, long j) {
        if (this.f3425a.m5977P()) {
            m7053a(z ? "javascript:al_mute();" : "javascript:al_unmute();", j);
        }
    }

    /* renamed from: b */
    public void m7050b(long j) {
        C1479t c1479t = this.f3427c;
        StringBuilder m8752j = C0082b.m8752j("Scheduling report reward in ");
        m8752j.append(TimeUnit.MILLISECONDS.toSeconds(j));
        m8752j.append(" seconds...");
        c1479t.m5116b("AppLovinFullscreenActivity", m8752j.toString());
        this.f3442r = C1533n.m4965a(j, this.f3426b, new Runnable() { // from class: com.applovin.impl.adview.activity.b.a.8
            @Override // java.lang.Runnable
            public void run() {
                if (!AbstractC0914a.this.f3425a.m5949ab().getAndSet(true)) {
                    AbstractC0914a abstractC0914a = AbstractC0914a.this;
                    AbstractC0914a.this.f3426b.m5525R().m5653a(new C1380v(abstractC0914a.f3425a, abstractC0914a.f3426b), C1362o.EnumC1364a.REWARD);
                }
            }
        });
    }

    /* renamed from: b */
    public void m7048b(String str) {
        m7053a(str, 0L);
    }

    /* renamed from: b */
    public void m7047b(boolean z) {
        m7051a(z, ((Long) this.f3426b.m5511a(C1314b.f4826cC)).longValue());
        C1496j.m5018a(this.f3439o, this.f3425a);
        this.f3426b.m5492ac().m5138a(this.f3425a);
        this.f3426b.m5486ai().m5434a(this.f3425a);
        if (this.f3425a.hasVideoUrl() || m7037s()) {
            C1496j.m5014a(this.f3440p, this.f3425a);
        }
        new C0913b(this.f3429e).m7062a(this.f3425a);
        this.f3428d.m5773a();
        this.f3425a.setHasShown(true);
    }

    /* renamed from: c */
    public void mo6980c(boolean z) {
        C1479t c1479t = this.f3427c;
        c1479t.m5114c("AppLovinFullscreenActivity", "onWindowFocusChanged(boolean) - " + z);
        m7054a("javascript:al_onWindowFocusChanged( " + z + " );");
        C1533n c1533n = this.f3443s;
        if (c1533n != null) {
            if (z) {
                c1533n.m4960c();
            } else {
                c1533n.m4962b();
            }
        }
    }

    /* renamed from: d */
    public abstract void mo6961d();

    /* renamed from: e */
    public abstract void mo6959e();

    /* renamed from: f */
    public void mo7015f() {
        this.f3427c.m5114c("AppLovinFullscreenActivity", "onResume()");
        this.f3428d.m5762d(SystemClock.elapsedRealtime() - this.f3450z);
        m7054a("javascript:al_onAppResumed();");
        m7038p();
        if (this.f3441q.m5848c()) {
            this.f3441q.m5855a();
        }
    }

    /* renamed from: g */
    public void mo7014g() {
        this.f3427c.m5114c("AppLovinFullscreenActivity", "onPause()");
        this.f3450z = SystemClock.elapsedRealtime();
        m7054a("javascript:al_onAppPaused();");
        this.f3441q.m5855a();
        m7039o();
    }

    /* renamed from: h */
    public void mo6958h() {
        this.f3427c.m5114c("AppLovinFullscreenActivity", "dismiss()");
        this.f3444t.removeCallbacksAndMessages(null);
        m7053a("javascript:al_onPoststitialDismiss();", this.f3425a.m5978O());
        m7041m();
        this.f3428d.m5765c();
        if (this.f3446v != null) {
            C1533n.m4965a(TimeUnit.SECONDS.toMillis(2L), this.f3426b, new Runnable() { // from class: com.applovin.impl.adview.activity.b.a.5
                @Override // java.lang.Runnable
                public void run() {
                    AbstractC0914a.this.f3429e.stopService(new Intent(AbstractC0914a.this.f3429e.getApplicationContext(), AppKilledService.class));
                    AbstractC0914a.this.f3426b.m5487ah().unregisterReceiver(AbstractC0914a.this.f3446v);
                }
            });
        }
        if (this.f3447w != null) {
            this.f3426b.m5488ag().m5593b(this.f3447w);
        }
        if (this.f3445u != null) {
            this.f3426b.m5491ad().m6065b(this.f3445u);
        }
        if (m7040n()) {
            this.f3429e.finish();
            return;
        }
        this.f3426b.m5542A().m5116b("AppLovinFullscreenActivity", "Fullscreen ad shown in container view dismissed, destroying the presenter.");
        mo6976j();
    }

    /* renamed from: i */
    public void m7043i() {
        this.f3427c.m5114c("AppLovinFullscreenActivity", "onStop()");
    }

    /* renamed from: j */
    public void mo6976j() {
        AppLovinAdView appLovinAdView = this.f3430f;
        if (appLovinAdView != null) {
            ViewParent parent = appLovinAdView.getParent();
            this.f3430f.destroy();
            this.f3430f = null;
            if ((parent instanceof ViewGroup) && m7040n()) {
                ((ViewGroup) parent).removeAllViews();
            }
        }
        mo6957l();
        m7041m();
        this.f3438n = null;
        this.f3439o = null;
        this.f3440p = null;
        this.f3429e = null;
    }

    /* renamed from: k */
    public void m7042k() {
        this.f3427c.m5114c("AppLovinFullscreenActivity", "onBackPressed()");
        if (this.f3425a.m5976Q()) {
            m7048b("javascript:onBackPressed();");
        }
    }

    /* renamed from: l */
    public abstract void mo6957l();

    /* renamed from: m */
    public void m7041m() {
        if (this.f3449y.compareAndSet(false, true)) {
            C1496j.m5006b(this.f3439o, this.f3425a);
            this.f3426b.m5492ac().m5134b(this.f3425a);
            this.f3426b.m5486ai().m5442a();
        }
    }

    /* renamed from: n */
    public boolean m7040n() {
        return this.f3429e instanceof AppLovinFullscreenActivity;
    }

    /* renamed from: o */
    public void m7039o() {
        C1533n c1533n = this.f3442r;
        if (c1533n != null) {
            c1533n.m4962b();
        }
    }

    /* renamed from: p */
    public void m7038p() {
        C1533n c1533n = this.f3442r;
        if (c1533n != null) {
            c1533n.m4960c();
        }
    }

    /* renamed from: q */
    public abstract boolean mo6956q();

    /* renamed from: r */
    public abstract boolean mo6955r();

    /* renamed from: s */
    public boolean m7037s() {
        return AppLovinAdType.INCENTIVIZED == this.f3425a.getType() || AppLovinAdType.AUTO_INCENTIVIZED == this.f3425a.getType();
    }

    /* renamed from: t */
    public abstract void mo6954t();
}
