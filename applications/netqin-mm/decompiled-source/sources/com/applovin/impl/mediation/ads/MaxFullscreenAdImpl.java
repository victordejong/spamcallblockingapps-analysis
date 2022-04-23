package com.applovin.impl.mediation.ads;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxErrorCodes;
import com.applovin.mediation.MaxReward;
import com.applovin.mediation.MaxRewardedAdListener;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import p131c.p135b.p136a.p143d.C2135c;
import p131c.p135b.p136a.p143d.C2172g;
import p131c.p135b.p136a.p143d.C2214l;
import p131c.p135b.p136a.p143d.C2222n;
import p131c.p135b.p136a.p143d.p146b.AbstractC2134a;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.C2389h;
import p131c.p135b.p136a.p148e.p153y.C2391j;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl.class */
public class MaxFullscreenAdImpl extends AbstractC2134a implements C2251d.AbstractC2253b {

    /* renamed from: a */
    public final AbstractC7004f f21503a;

    /* renamed from: b */
    public final C2251d f21504b;

    /* renamed from: c */
    public final C2135c f21505c;

    /* renamed from: d */
    public final Object f21506d = new Object();

    /* renamed from: e */
    public C2135c.C2139d f21507e = null;

    /* renamed from: f */
    public C2135c.C2139d f21508f = null;

    /* renamed from: g */
    public C2135c.C2139d f21509g = null;

    /* renamed from: h */
    public EnumC7000c f21510h = EnumC7000c.IDLE;

    /* renamed from: i */
    public final AtomicBoolean f21511i = new AtomicBoolean();

    /* renamed from: j */
    public String f21512j = "";
    public final C7005g listenerWrapper = new C7005g(this, null);

    /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$a.class */
    public class RunnableC6997a implements Runnable {
        public RunnableC6997a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (MaxFullscreenAdImpl.this.f21506d) {
                if (MaxFullscreenAdImpl.this.f21508f != null) {
                    C2374t tVar = MaxFullscreenAdImpl.this.logger;
                    String str = MaxFullscreenAdImpl.this.tag;
                    tVar.m30044b(str, "Destroying ad for '" + MaxFullscreenAdImpl.this.adUnitId + "'; current ad: " + MaxFullscreenAdImpl.this.f21508f + "...");
                    MaxFullscreenAdImpl.this.sdk.m30254g0().destroyAd(MaxFullscreenAdImpl.this.f21508f);
                }
            }
        }
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b.class */
    public class RunnableC6998b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Activity f21514a;

        /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$b$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$b$a.class */
        public class RunnableC6999a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2135c.C2139d f21516a;

            public RunnableC6999a(C2135c.C2139d dVar) {
                this.f21516a = dVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2391j.m29905a(MaxFullscreenAdImpl.this.adListener, this.f21516a);
            }
        }

        public RunnableC6998b(Activity activity) {
            this.f21514a = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2135c.C2139d a = MaxFullscreenAdImpl.this.m19089a();
            if (a == null || a.mo30931w()) {
                MaxFullscreenAdImpl.this.sdk.m30276b().m30735a(MaxFullscreenAdImpl.this.listenerWrapper);
                Activity activity = this.f21514a;
                if (activity == null) {
                    activity = MaxFullscreenAdImpl.this.sdk.m30315G();
                }
                MediationServiceImpl g0 = MaxFullscreenAdImpl.this.sdk.m30254g0();
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                g0.loadAd(maxFullscreenAdImpl.adUnitId, maxFullscreenAdImpl.adFormat, maxFullscreenAdImpl.loadRequestBuilder.m30800a(), false, activity, MaxFullscreenAdImpl.this.listenerWrapper);
                return;
            }
            MaxFullscreenAdImpl.this.m19086a(EnumC7000c.READY, new RunnableC6999a(a));
        }
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$c.class */
    public enum EnumC7000c {
        IDLE,
        LOADING,
        READY,
        SHOWING,
        DESTROYED
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d.class */
    public class RunnableC7001d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f21524a;

        /* renamed from: b */
        public final /* synthetic */ Activity f21525b;

        /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$d$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$d$a.class */
        public class RunnableC7002a implements Runnable {
            public RunnableC7002a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                RunnableC7001d dVar = RunnableC7001d.this;
                MaxFullscreenAdImpl.this.m19081a(dVar.f21524a, dVar.f21525b);
            }
        }

        public RunnableC7001d(String str, Activity activity) {
            this.f21524a = str;
            this.f21525b = activity;
        }

        @Override // java.lang.Runnable
        public void run() {
            MaxFullscreenAdImpl.this.m19086a(EnumC7000c.SHOWING, new RunnableC7002a());
        }
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$e */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$e.class */
    public class DialogInterface$OnDismissListenerC7003e implements DialogInterface.OnDismissListener {

        /* renamed from: a */
        public final /* synthetic */ Runnable f21528a;

        public DialogInterface$OnDismissListenerC7003e(MaxFullscreenAdImpl maxFullscreenAdImpl, Runnable runnable) {
            this.f21528a = runnable;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            this.f21528a.run();
        }
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$f */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$f.class */
    public interface AbstractC7004f {
        Activity getActivity();
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$g */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$g.class */
    public class C7005g implements C2214l.AbstractC2219c, MaxAdListener, MaxRewardedAdListener {

        /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$g$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$g$a.class */
        public class RunnableC7006a implements Runnable {
            public RunnableC7006a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                C2391j.m29905a(maxFullscreenAdImpl.adListener, maxFullscreenAdImpl.m19075d());
            }
        }

        /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$g$b */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$g$b.class */
        public class RunnableC7007b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ String f21531a;

            /* renamed from: b */
            public final /* synthetic */ int f21532b;

            public RunnableC7007b(String str, int i) {
                this.f21531a = str;
                this.f21532b = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2391j.m29902a(MaxFullscreenAdImpl.this.adListener, this.f21531a, this.f21532b);
            }
        }

        /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$g$c */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$g$c.class */
        public class RunnableC7008c implements Runnable {
            public RunnableC7008c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                MaxFullscreenAdImpl.this.m19080b();
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                C2391j.m29885c(maxFullscreenAdImpl.adListener, maxFullscreenAdImpl.m19075d());
            }
        }

        /* renamed from: com.applovin.impl.mediation.ads.MaxFullscreenAdImpl$g$d */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxFullscreenAdImpl$g$d.class */
        public class RunnableC7009d implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ int f21535a;

            public RunnableC7009d(int i) {
                this.f21535a = i;
            }

            @Override // java.lang.Runnable
            public void run() {
                MaxFullscreenAdImpl.this.f21504b.m30607a();
                MaxFullscreenAdImpl.this.m19080b();
                MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
                C2391j.m29904a(maxFullscreenAdImpl.adListener, maxFullscreenAdImpl.m19075d(), this.f21535a);
            }
        }

        public C7005g() {
        }

        public /* synthetic */ C7005g(MaxFullscreenAdImpl maxFullscreenAdImpl, RunnableC6997a aVar) {
            this();
        }

        @Override // p131c.p135b.p136a.p143d.C2214l.AbstractC2219c
        /* renamed from: a */
        public void mo19067a(C2135c.C2139d dVar) {
            if (dVar.getFormat() == MaxFullscreenAdImpl.this.adFormat) {
                onAdLoaded(dVar);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
            C2391j.m29883d(maxFullscreenAdImpl.adListener, maxFullscreenAdImpl.m19075d());
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, int i) {
            MaxFullscreenAdImpl.this.m19086a(EnumC7000c.IDLE, new RunnableC7009d(i));
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            if (!((C2135c.C2139d) maxAd).mo30931w()) {
                MaxFullscreenAdImpl.this.f21504b.m30607a();
            }
            MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
            C2391j.m29890b(maxFullscreenAdImpl.adListener, maxFullscreenAdImpl.m19075d());
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            MaxFullscreenAdImpl.this.f21505c.m30973a(maxAd);
            MaxFullscreenAdImpl.this.m19086a(EnumC7000c.IDLE, new RunnableC7008c());
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, int i) {
            MaxFullscreenAdImpl.this.m19077c();
            if (MaxFullscreenAdImpl.this.f21509g == null) {
                MaxFullscreenAdImpl.this.m19086a(EnumC7000c.IDLE, new RunnableC7007b(str, i));
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            C2135c.C2139d dVar = (C2135c.C2139d) maxAd;
            MaxFullscreenAdImpl.this.m19088a(dVar);
            if (dVar.mo30931w() || !MaxFullscreenAdImpl.this.f21511i.compareAndSet(true, false)) {
                MaxFullscreenAdImpl.this.m19086a(EnumC7000c.READY, new RunnableC7006a());
            } else {
                MaxFullscreenAdImpl.this.loadRequestBuilder.m30798a("expired_ad_ad_unit_id");
            }
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoCompleted(MaxAd maxAd) {
            MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
            C2391j.m29881f(maxFullscreenAdImpl.adListener, maxFullscreenAdImpl.m19075d());
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onRewardedVideoStarted(MaxAd maxAd) {
            MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
            C2391j.m29882e(maxFullscreenAdImpl.adListener, maxFullscreenAdImpl.m19075d());
        }

        @Override // com.applovin.mediation.MaxRewardedAdListener
        public void onUserRewarded(MaxAd maxAd, MaxReward maxReward) {
            MaxFullscreenAdImpl maxFullscreenAdImpl = MaxFullscreenAdImpl.this;
            C2391j.m29903a(maxFullscreenAdImpl.adListener, maxFullscreenAdImpl.m19075d(), maxReward);
        }
    }

    public MaxFullscreenAdImpl(String str, MaxAdFormat maxAdFormat, AbstractC7004f fVar, String str2, C2341l lVar) {
        super(str, maxAdFormat, str2, lVar);
        this.f21503a = fVar;
        this.f21504b = new C2251d(lVar, this);
        this.f21505c = new C2135c(lVar, this.listenerWrapper);
        C2374t.m30037g(str2, "Created new " + str2 + " (" + this + ")");
    }

    /* renamed from: a */
    public final C2135c.C2139d m19089a() {
        C2135c.C2139d dVar;
        synchronized (this.f21506d) {
            dVar = this.f21508f != null ? this.f21508f : this.f21509g;
        }
        return dVar;
    }

    /* renamed from: a */
    public final void m19088a(C2135c.C2139d dVar) {
        this.f21512j = dVar.getNetworkName();
        if (dVar.mo30931w()) {
            this.f21509g = dVar;
            C2374t tVar = this.logger;
            String str = this.tag;
            tVar.m30044b(str, "Handle ad loaded for fallback ad: " + dVar);
            return;
        }
        this.f21508f = dVar;
        C2374t tVar2 = this.logger;
        String str2 = this.tag;
        tVar2.m30044b(str2, "Handle ad loaded for regular ad: " + dVar);
        m19079b(dVar);
    }

    /* renamed from: a */
    public final void m19087a(C2135c.C2139d dVar, Context context, Runnable runnable) {
        if (dVar == null || !dVar.m30929y() || C2389h.m29964a(context) || !(context instanceof Activity)) {
            runnable.run();
            return;
        }
        AlertDialog create = new AlertDialog.Builder(context).setTitle(dVar.m30928z()).setMessage(dVar.m30948A()).setPositiveButton(dVar.m30947B(), (DialogInterface.OnClickListener) null).create();
        create.setOnDismissListener(new DialogInterface$OnDismissListenerC7003e(this, runnable));
        create.show();
    }

    /* renamed from: a */
    public final void m19086a(EnumC7000c cVar, Runnable runnable) {
        boolean z;
        String str;
        String str2;
        C2374t tVar;
        String str3;
        String str4;
        EnumC7000c cVar2 = this.f21510h;
        synchronized (this.f21506d) {
            try {
                z = true;
                if (cVar2 == EnumC7000c.IDLE) {
                    if (!(cVar == EnumC7000c.LOADING || cVar == EnumC7000c.DESTROYED)) {
                        if (cVar == EnumC7000c.SHOWING) {
                            str = this.tag;
                            str2 = "No ad is loading or loaded";
                            C2374t.m30034j(str, str2);
                            z = false;
                        } else {
                            tVar = this.logger;
                            str3 = this.tag;
                            str4 = "Unable to transition to: " + cVar;
                            tVar.m30039e(str3, str4);
                            z = false;
                        }
                    }
                } else if (cVar2 == EnumC7000c.LOADING) {
                    if (cVar != EnumC7000c.IDLE) {
                        if (cVar == EnumC7000c.LOADING) {
                            str = this.tag;
                            str2 = "An ad is already loading";
                        } else if (cVar != EnumC7000c.READY) {
                            if (cVar == EnumC7000c.SHOWING) {
                                str = this.tag;
                                str2 = "An ad is not ready to be shown yet";
                            } else if (cVar != EnumC7000c.DESTROYED) {
                                tVar = this.logger;
                                str3 = this.tag;
                                str4 = "Unable to transition to: " + cVar;
                                tVar.m30039e(str3, str4);
                                z = false;
                            }
                        }
                        C2374t.m30034j(str, str2);
                        z = false;
                    }
                } else if (cVar2 != EnumC7000c.READY) {
                    if (cVar2 == EnumC7000c.SHOWING) {
                        if (cVar != EnumC7000c.IDLE) {
                            if (cVar == EnumC7000c.LOADING) {
                                str = this.tag;
                                str2 = "Can not load another ad while the ad is showing";
                            } else {
                                if (cVar == EnumC7000c.READY) {
                                    tVar = this.logger;
                                    str3 = this.tag;
                                    str4 = "An ad is already showing, ignoring";
                                } else if (cVar == EnumC7000c.SHOWING) {
                                    str = this.tag;
                                    str2 = "The ad is already showing, not showing another one";
                                } else if (cVar != EnumC7000c.DESTROYED) {
                                    tVar = this.logger;
                                    str3 = this.tag;
                                    str4 = "Unable to transition to: " + cVar;
                                }
                                tVar.m30039e(str3, str4);
                            }
                            C2374t.m30034j(str, str2);
                        }
                    } else if (cVar2 == EnumC7000c.DESTROYED) {
                        str = this.tag;
                        str2 = "No operations are allowed on a destroyed instance";
                        C2374t.m30034j(str, str2);
                    } else {
                        tVar = this.logger;
                        str3 = this.tag;
                        str4 = "Unknown state: " + this.f21510h;
                        tVar.m30039e(str3, str4);
                    }
                    z = false;
                } else if (cVar != EnumC7000c.IDLE) {
                    if (cVar == EnumC7000c.LOADING) {
                        str = this.tag;
                        str2 = "An ad is already loaded";
                        C2374t.m30034j(str, str2);
                        z = false;
                    } else {
                        if (cVar == EnumC7000c.READY) {
                            tVar = this.logger;
                            str3 = this.tag;
                            str4 = "An ad is already marked as ready";
                        } else if (!(cVar == EnumC7000c.SHOWING || cVar == EnumC7000c.DESTROYED)) {
                            tVar = this.logger;
                            str3 = this.tag;
                            str4 = "Unable to transition to: " + cVar;
                        }
                        tVar.m30039e(str3, str4);
                        z = false;
                    }
                }
                if (z) {
                    this.logger.m30044b(this.tag, "Transitioning from " + this.f21510h + " to " + cVar + "...");
                    this.f21510h = cVar;
                } else {
                    this.logger.m30040d(this.tag, "Not allowed transition from " + this.f21510h + " to " + cVar);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z && runnable != null) {
            runnable.run();
        }
    }

    /* renamed from: a */
    public final void m19081a(String str, Activity activity) {
        synchronized (this.f21506d) {
            this.f21507e = m19089a();
            this.sdk.m30276b().m30731b(this.listenerWrapper);
            if (this.f21507e.mo30931w()) {
                if (this.f21507e.m30963u().get()) {
                    C2374t tVar = this.logger;
                    String str2 = this.tag;
                    tVar.m30039e(str2, "Failed to display ad: " + this.f21507e + " - displayed already");
                    this.sdk.m30254g0().maybeScheduleAdDisplayErrorPostback(new C2172g(-5201, "Ad displayed already"), this.f21507e);
                    C2391j.m29904a(this.adListener, m19075d(), -5201);
                    return;
                }
                this.sdk.m30276b().m30732a(this.listenerWrapper, this.adFormat);
            }
            this.f21507e.mo30924a(this.adUnitId);
            this.f21505c.m30972c(this.f21507e);
            C2374t tVar2 = this.logger;
            String str3 = this.tag;
            tVar2.m30044b(str3, "Showing ad for '" + this.adUnitId + "'; loaded ad: " + this.f21507e + "...");
            this.sdk.m30254g0().showFullscreenAd(this.f21507e, str, activity);
        }
    }

    /* renamed from: b */
    public final void m19080b() {
        C2135c.C2139d dVar;
        synchronized (this.f21506d) {
            dVar = this.f21507e;
            this.f21507e = null;
            if (dVar == this.f21509g) {
                this.f21509g = null;
            } else if (dVar == this.f21508f) {
                this.f21508f = null;
            }
        }
        this.sdk.m30254g0().destroyAd(dVar);
    }

    /* renamed from: b */
    public final void m19079b(C2135c.C2139d dVar) {
        long F = dVar.m30943F();
        if (F >= 0) {
            C2374t tVar = this.logger;
            String str = this.tag;
            tVar.m30044b(str, "Scheduling ad expiration " + TimeUnit.MILLISECONDS.toMinutes(F) + " minutes from now for " + getAdUnitId() + " ...");
            this.f21504b.m30606a(F);
        }
    }

    /* renamed from: c */
    public final void m19077c() {
        C2135c.C2139d dVar;
        this.f21512j = "";
        if (this.f21511i.compareAndSet(true, false)) {
            synchronized (this.f21506d) {
                dVar = this.f21508f;
                this.f21508f = null;
            }
            this.sdk.m30254g0().destroyAd(dVar);
            this.loadRequestBuilder.m30798a("expired_ad_ad_unit_id");
        }
    }

    /* renamed from: d */
    public final C2222n m19075d() {
        return new C2222n(this.adUnitId, this.adFormat, this.f21512j);
    }

    public void destroy() {
        m19086a(EnumC7000c.DESTROYED, new RunnableC6997a());
    }

    public boolean isReady() {
        boolean z;
        synchronized (this.f21506d) {
            z = m19089a() != null && m19089a().m30971m() && this.f21510h == EnumC7000c.READY;
        }
        return z;
    }

    public void loadAd(Activity activity) {
        C2374t tVar = this.logger;
        String str = this.tag;
        tVar.m30044b(str, "Loading ad for '" + this.adUnitId + "'...");
        if (isReady()) {
            C2374t tVar2 = this.logger;
            String str2 = this.tag;
            tVar2.m30044b(str2, "An ad is already loaded for '" + this.adUnitId + "'");
            C2391j.m29905a(this.adListener, m19075d());
            return;
        }
        m19086a(EnumC7000c.LOADING, new RunnableC6998b(activity));
    }

    @Override // p131c.p135b.p136a.p148e.C2251d.AbstractC2253b
    public void onAdExpired() {
        C2374t tVar = this.logger;
        String str = this.tag;
        tVar.m30044b(str, "Ad expired " + getAdUnitId());
        Activity activity = this.f21503a.getActivity();
        Activity activity2 = activity;
        if (activity == null) {
            Activity a = this.sdk.m30234y().m30676a();
            activity2 = a;
            if (a == null) {
                this.listenerWrapper.onAdLoadFailed(this.adUnitId, MaxErrorCodes.NO_ACTIVITY);
                return;
            }
        }
        this.f21511i.set(true);
        this.loadRequestBuilder.m30797a("expired_ad_ad_unit_id", getAdUnitId());
        this.sdk.m30254g0().loadAd(this.adUnitId, this.adFormat, this.loadRequestBuilder.m30800a(), false, activity2, this.listenerWrapper);
    }

    public void showAd(String str, Activity activity) {
        Activity G = activity != null ? activity : this.sdk.m30315G();
        if (G == null) {
            throw new IllegalArgumentException("Attempting to show ad without a valid activity.");
        } else if (((Boolean) this.sdk.m30291a(C2251d.C2255d.f8486W4)).booleanValue() && (this.sdk.m30235x().m30060a() || this.sdk.m30235x().m30056b())) {
            C2374t.m30034j(this.tag, "Attempting to show ad when another fullscreen ad is already showing");
            C2391j.m29904a(this.adListener, m19089a(), -23);
        } else if (!((Boolean) this.sdk.m30291a(C2251d.C2255d.f8487X4)).booleanValue() || C2389h.m29964a(G)) {
            m19087a(m19089a(), activity, new RunnableC7001d(str, G));
        } else {
            C2374t.m30034j(this.tag, "Attempting to show ad with no internet connection");
            C2391j.m29904a(this.adListener, m19075d(), -5201);
        }
    }

    public String toString() {
        return this.tag + "{adUnitId='" + this.adUnitId + "', adListener=" + this.adListener + ", isReady=" + isReady() + '}';
    }
}
