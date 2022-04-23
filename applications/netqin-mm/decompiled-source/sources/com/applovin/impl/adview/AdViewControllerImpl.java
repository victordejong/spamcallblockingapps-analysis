package com.applovin.impl.adview;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.PointF;
import android.net.Uri;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import com.applovin.adview.AdViewController;
import com.applovin.adview.AppLovinAdView;
import com.applovin.adview.AppLovinAdViewEventListener;
import com.applovin.communicator.AppLovinCommunicator;
import com.applovin.communicator.AppLovinCommunicatorMessage;
import com.applovin.communicator.AppLovinCommunicatorSubscriber;
import com.applovin.impl.p483a.C6894a;
import com.applovin.impl.sdk.AppLovinAdServiceImpl;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import com.inmobi.ads.C8303s;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p135b.p136a.p138b.AbstractC2086i;
import p131c.p135b.p136a.p138b.C2070d;
import p131c.p135b.p136a.p138b.C2077e;
import p131c.p135b.p136a.p138b.DialogC2087j;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p150c.C2245a;
import p131c.p135b.p136a.p148e.p151e.C2262c;
import p131c.p135b.p136a.p148e.p151e.C2267f;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2382b;
import p131c.p135b.p136a.p148e.p153y.C2391j;
import p131c.p135b.p136a.p148e.p153y.C2418k;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AdViewControllerImpl.class */
public class AdViewControllerImpl implements AdViewController, AppLovinCommunicatorSubscriber {

    /* renamed from: a */
    public Context f21167a;

    /* renamed from: b */
    public ViewGroup f21168b;

    /* renamed from: c */
    public C2341l f21169c;

    /* renamed from: d */
    public AppLovinAdServiceImpl f21170d;

    /* renamed from: e */
    public C2374t f21171e;

    /* renamed from: f */
    public AppLovinAdSize f21172f;

    /* renamed from: g */
    public String f21173g;

    /* renamed from: h */
    public C2262c f21174h;

    /* renamed from: i */
    public C2077e f21175i;

    /* renamed from: j */
    public C6918k f21176j;

    /* renamed from: k */
    public C2070d f21177k;

    /* renamed from: l */
    public Runnable f21178l;

    /* renamed from: m */
    public Runnable f21179m;

    /* renamed from: n */
    public volatile AbstractC7036g f21180n = null;

    /* renamed from: o */
    public volatile AppLovinAd f21181o = null;

    /* renamed from: p */
    public DialogC2087j f21182p = null;

    /* renamed from: q */
    public DialogC2087j f21183q = null;

    /* renamed from: r */
    public final AtomicReference<AppLovinAd> f21184r = new AtomicReference<>();

    /* renamed from: s */
    public volatile boolean f21185s = false;

    /* renamed from: t */
    public volatile boolean f21186t = false;

    /* renamed from: u */
    public volatile AppLovinAdLoadListener f21187u;

    /* renamed from: v */
    public volatile AppLovinAdDisplayListener f21188v;

    /* renamed from: w */
    public volatile AppLovinAdViewEventListener f21189w;

    /* renamed from: x */
    public volatile AppLovinAdClickListener f21190x;

    /* renamed from: com.applovin.impl.adview.AdViewControllerImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AdViewControllerImpl$a.class */
    public class RunnableC6907a implements Runnable {
        public RunnableC6907a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdViewControllerImpl.this.f21177k.loadDataWithBaseURL("/", "<html></html>", "text/html", null, "");
        }
    }

    /* renamed from: com.applovin.impl.adview.AdViewControllerImpl$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AdViewControllerImpl$b.class */
    public class RunnableC6908b implements Runnable {
        public RunnableC6908b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AdViewControllerImpl.this.f21182p != null) {
                C2374t tVar = AdViewControllerImpl.this.f21171e;
                tVar.m30044b("AppLovinAdView", "Detaching expanded ad: " + AdViewControllerImpl.this.f21182p.m31091a());
                AdViewControllerImpl adViewControllerImpl = AdViewControllerImpl.this;
                adViewControllerImpl.f21183q = adViewControllerImpl.f21182p;
                AdViewControllerImpl.this.f21182p = null;
                AdViewControllerImpl adViewControllerImpl2 = AdViewControllerImpl.this;
                adViewControllerImpl2.attachNewAdView(adViewControllerImpl2.f21172f);
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.AdViewControllerImpl$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AdViewControllerImpl$c.class */
    public class RunnableC6909c implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ PointF f21193a;

        /* renamed from: com.applovin.impl.adview.AdViewControllerImpl$c$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AdViewControllerImpl$c$a.class */
        public class DialogInterface$OnDismissListenerC6910a implements DialogInterface.OnDismissListener {
            public DialogInterface$OnDismissListenerC6910a() {
            }

            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                AdViewControllerImpl.this.contractAd();
            }
        }

        public RunnableC6909c(PointF pointF) {
            this.f21193a = pointF;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AdViewControllerImpl.this.f21182p == null && (AdViewControllerImpl.this.f21180n instanceof C2245a) && AdViewControllerImpl.this.f21177k != null) {
                C2245a aVar = (C2245a) AdViewControllerImpl.this.f21180n;
                Activity a = AdViewControllerImpl.this.f21167a instanceof Activity ? (Activity) AdViewControllerImpl.this.f21167a : AbstractC2426r.m29818a((View) AdViewControllerImpl.this.f21177k, AdViewControllerImpl.this.f21169c);
                if (a != null) {
                    if (AdViewControllerImpl.this.f21168b != null) {
                        AdViewControllerImpl.this.f21168b.removeView(AdViewControllerImpl.this.f21177k);
                    }
                    AdViewControllerImpl.this.f21182p = new DialogC2087j(aVar, AdViewControllerImpl.this.f21177k, a, AdViewControllerImpl.this.f21169c);
                    AdViewControllerImpl.this.f21182p.setOnDismissListener(new DialogInterface$OnDismissListenerC6910a());
                    AdViewControllerImpl.this.f21182p.show();
                    C2391j.m29906a(AdViewControllerImpl.this.f21189w, AdViewControllerImpl.this.f21180n, (AppLovinAdView) AdViewControllerImpl.this.f21168b);
                    if (AdViewControllerImpl.this.f21174h != null) {
                        AdViewControllerImpl.this.f21174h.m30549d();
                        return;
                    }
                    return;
                }
                C2374t.m30034j("AppLovinAdView", "Unable to expand ad. No Activity found.");
                Uri M0 = aVar.m30657M0();
                if (M0 != null && ((Boolean) AdViewControllerImpl.this.f21169c.m30291a(C2251d.C2256e.f8754u1)).booleanValue()) {
                    AdViewControllerImpl.this.f21170d.trackAndLaunchClick(aVar, AdViewControllerImpl.this.getParentView(), AdViewControllerImpl.this, M0, this.f21193a);
                    if (AdViewControllerImpl.this.f21174h != null) {
                        AdViewControllerImpl.this.f21174h.m30553b();
                    }
                }
                AdViewControllerImpl.this.f21177k.m31125a("javascript:al_onFailedExpand();");
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.AdViewControllerImpl$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AdViewControllerImpl$d.class */
    public class RunnableC6911d implements Runnable {
        public RunnableC6911d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdViewControllerImpl.this.m19385d();
            if (AdViewControllerImpl.this.f21168b != null && AdViewControllerImpl.this.f21177k != null && AdViewControllerImpl.this.f21177k.getParent() == null) {
                AdViewControllerImpl.this.f21168b.addView(AdViewControllerImpl.this.f21177k);
                AdViewControllerImpl.m19390b(AdViewControllerImpl.this.f21177k, AdViewControllerImpl.this.f21180n.getSize());
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.AdViewControllerImpl$e */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AdViewControllerImpl$e.class */
    public class RunnableC6912e implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AppLovinAd f21197a;

        public RunnableC6912e(AppLovinAd appLovinAd) {
            this.f21197a = appLovinAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (AdViewControllerImpl.this.f21187u != null) {
                    AdViewControllerImpl.this.f21187u.adReceived(this.f21197a);
                }
            } catch (Throwable th) {
                C2374t.m30034j("AppLovinAdView", "Exception while running ad load callback: " + th.getMessage());
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.AdViewControllerImpl$f */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AdViewControllerImpl$f.class */
    public class RunnableC6913f implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ int f21199a;

        public RunnableC6913f(int i) {
            this.f21199a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (AdViewControllerImpl.this.f21187u != null) {
                    AdViewControllerImpl.this.f21187u.failedToReceiveAd(this.f21199a);
                }
            } catch (Throwable th) {
                C2374t.m30041c("AppLovinAdView", "Exception while running app load  callback", th);
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.AdViewControllerImpl$g */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AdViewControllerImpl$g.class */
    public class RunnableC6914g implements Runnable {
        public RunnableC6914g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C2245a aVar;
            if (AdViewControllerImpl.this.f21183q != null || AdViewControllerImpl.this.f21182p != null) {
                if (AdViewControllerImpl.this.f21183q != null) {
                    aVar = AdViewControllerImpl.this.f21183q.m31091a();
                    AdViewControllerImpl.this.f21183q.dismiss();
                    AdViewControllerImpl.this.f21183q = null;
                } else {
                    aVar = AdViewControllerImpl.this.f21182p.m31091a();
                    AdViewControllerImpl.this.f21182p.dismiss();
                    AdViewControllerImpl.this.f21182p = null;
                }
                C2391j.m29891b(AdViewControllerImpl.this.f21189w, aVar, (AppLovinAdView) AdViewControllerImpl.this.f21168b);
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.AdViewControllerImpl$h */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AdViewControllerImpl$h.class */
    public class RunnableC6915h implements Runnable {
        public RunnableC6915h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            AdViewControllerImpl.this.getAdWebView().loadUrl("chrome://crash");
        }
    }

    /* renamed from: com.applovin.impl.adview.AdViewControllerImpl$i */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AdViewControllerImpl$i.class */
    public class RunnableC6916i implements Runnable {
        public RunnableC6916i() {
        }

        public /* synthetic */ RunnableC6916i(AdViewControllerImpl adViewControllerImpl, RunnableC6907a aVar) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AdViewControllerImpl.this.f21177k != null) {
                AdViewControllerImpl.this.f21177k.setVisibility(8);
            }
        }
    }

    /* renamed from: com.applovin.impl.adview.AdViewControllerImpl$j */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AdViewControllerImpl$j.class */
    public class RunnableC6917j implements Runnable {
        public RunnableC6917j() {
        }

        public /* synthetic */ RunnableC6917j(AdViewControllerImpl adViewControllerImpl, RunnableC6907a aVar) {
            this();
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AdViewControllerImpl.this.f21180n == null) {
                return;
            }
            if (AdViewControllerImpl.this.f21177k != null) {
                AdViewControllerImpl.this.m19381f();
                C2374t tVar = AdViewControllerImpl.this.f21171e;
                tVar.m30044b("AppLovinAdView", "Rendering advertisement ad for #" + AdViewControllerImpl.this.f21180n.getAdIdNumber() + "...");
                AdViewControllerImpl.m19390b(AdViewControllerImpl.this.f21177k, AdViewControllerImpl.this.f21180n.getSize());
                AdViewControllerImpl.this.f21177k.m31127a(AdViewControllerImpl.this.f21180n);
                if (AdViewControllerImpl.this.f21180n.getSize() != AppLovinAdSize.INTERSTITIAL && !AdViewControllerImpl.this.f21186t) {
                    AdViewControllerImpl adViewControllerImpl = AdViewControllerImpl.this;
                    adViewControllerImpl.f21174h = new C2262c(adViewControllerImpl.f21180n, AdViewControllerImpl.this.f21169c);
                    AdViewControllerImpl.this.f21174h.m30559a();
                    AdViewControllerImpl.this.f21177k.setStatsManagerHelper(AdViewControllerImpl.this.f21174h);
                    AdViewControllerImpl.this.f21180n.setHasShown(true);
                }
                if (AdViewControllerImpl.this.f21177k.getStatsManagerHelper() != null) {
                    AdViewControllerImpl.this.f21177k.getStatsManagerHelper().m30558a(AdViewControllerImpl.this.f21180n.m18958D0() ? 0L : 1L);
                    return;
                }
                return;
            }
            C2374t.m30034j("AppLovinAdView", "Unable to render advertisement for ad #" + AdViewControllerImpl.this.f21180n.getAdIdNumber() + ". Please make sure you are not calling AppLovinAdView.destroy() prematurely.");
        }
    }

    /* renamed from: com.applovin.impl.adview.AdViewControllerImpl$k */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/adview/AdViewControllerImpl$k.class */
    public static class C6918k implements AppLovinAdLoadListener {

        /* renamed from: a */
        public final AdViewControllerImpl f21205a;

        public C6918k(AdViewControllerImpl adViewControllerImpl, C2341l lVar) {
            if (adViewControllerImpl == null) {
                throw new IllegalArgumentException("No view specified");
            } else if (lVar != null) {
                this.f21205a = adViewControllerImpl;
            } else {
                throw new IllegalArgumentException("No sdk specified");
            }
        }

        /* renamed from: a */
        public final AdViewControllerImpl m19369a() {
            return this.f21205a;
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void adReceived(AppLovinAd appLovinAd) {
            AdViewControllerImpl a = m19369a();
            if (a != null) {
                a.m19393a(appLovinAd);
            } else {
                C2374t.m30034j("AppLovinAdView", "Ad view has been garbage collected by the time an ad was received");
            }
        }

        @Override // com.applovin.sdk.AppLovinAdLoadListener
        public void failedToReceiveAd(int i) {
            AdViewControllerImpl a = m19369a();
            if (a != null) {
                a.m19400a(i);
            }
        }
    }

    /* renamed from: b */
    public static void m19390b(View view, AppLovinAdSize appLovinAdSize) {
        if (view != null) {
            DisplayMetrics displayMetrics = view.getResources().getDisplayMetrics();
            int i = -1;
            int applyDimension = appLovinAdSize.getLabel().equals(AppLovinAdSize.INTERSTITIAL.getLabel()) ? -1 : appLovinAdSize.getWidth() == -1 ? displayMetrics.widthPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getWidth(), displayMetrics);
            if (!appLovinAdSize.getLabel().equals(AppLovinAdSize.INTERSTITIAL.getLabel())) {
                i = appLovinAdSize.getHeight() == -1 ? displayMetrics.heightPixels : (int) TypedValue.applyDimension(1, appLovinAdSize.getHeight(), displayMetrics);
            }
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            ViewGroup.LayoutParams layoutParams2 = layoutParams;
            if (layoutParams == null) {
                layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            }
            layoutParams2.width = applyDimension;
            layoutParams2.height = i;
            if (layoutParams2 instanceof RelativeLayout.LayoutParams) {
                RelativeLayout.LayoutParams layoutParams3 = (RelativeLayout.LayoutParams) layoutParams2;
                layoutParams3.addRule(10);
                layoutParams3.addRule(9);
            }
            view.setLayoutParams(layoutParams2);
        }
    }

    /* renamed from: a */
    public void m19401a() {
        if (this.f21182p == null && this.f21183q == null) {
            C2374t tVar = this.f21171e;
            tVar.m30044b("AppLovinAdView", "Ad: " + this.f21180n + " closed.");
            m19392a(this.f21179m);
            C2391j.m29888b(this.f21188v, this.f21180n);
            this.f21169c.m30316F().m30201b(this.f21180n);
            this.f21180n = null;
        } else if (((Boolean) this.f21169c.m30291a(C2251d.C2256e.f8713n1)).booleanValue()) {
            contractAd();
        }
    }

    /* renamed from: a */
    public void m19400a(int i) {
        if (!this.f21186t) {
            m19392a(this.f21179m);
        }
        m19392a(new RunnableC6913f(i));
    }

    /* renamed from: a */
    public final void m19398a(AppLovinAdView appLovinAdView, C2341l lVar, AppLovinAdSize appLovinAdSize, String str, Context context) {
        if (appLovinAdView == null) {
            throw new IllegalArgumentException("No parent view specified");
        } else if (lVar == null) {
            throw new IllegalArgumentException("No sdk specified");
        } else if (appLovinAdSize != null) {
            this.f21169c = lVar;
            this.f21170d = lVar.m30299W();
            this.f21171e = lVar.m30262d0();
            AppLovinCommunicator.getInstance(context);
            this.f21172f = appLovinAdSize;
            this.f21173g = str;
            this.f21167a = context;
            this.f21168b = appLovinAdView;
            this.f21175i = new C2077e(this, lVar);
            this.f21179m = new RunnableC6916i(this, null);
            this.f21178l = new RunnableC6917j(this, null);
            this.f21176j = new C6918k(this, lVar);
            attachNewAdView(appLovinAdSize);
        } else {
            throw new IllegalArgumentException("No ad size specified");
        }
    }

    /* renamed from: a */
    public void m19394a(AbstractC7036g gVar, AppLovinAdView appLovinAdView, Uri uri, PointF pointF) {
        C2391j.m29900a(this.f21190x, gVar);
        if (appLovinAdView != null) {
            this.f21170d.trackAndLaunchClick(gVar, appLovinAdView, this, uri, pointF);
        } else {
            this.f21171e.m30039e("AppLovinAdView", "Unable to process ad click - AppLovinAdView destroyed prematurely");
        }
    }

    /* renamed from: a */
    public void m19393a(AppLovinAd appLovinAd) {
        if (appLovinAd != null) {
            if (!this.f21186t) {
                renderAd(appLovinAd);
            } else {
                this.f21184r.set(appLovinAd);
                this.f21171e.m30044b("AppLovinAdView", "Ad view has paused when an ad was received, ad saved for later");
            }
            m19392a(new RunnableC6912e(appLovinAd));
            return;
        }
        this.f21171e.m30039e("AppLovinAdView", "No provided when to the view controller");
        m19400a(-1);
    }

    /* renamed from: a */
    public final void m19392a(Runnable runnable) {
        AppLovinSdkUtils.runOnUiThread(runnable);
    }

    public void attachNewAdView(AppLovinAdSize appLovinAdSize) {
        C2070d a = C2070d.m31126a(appLovinAdSize, this.f21175i, this.f21169c, this.f21167a);
        this.f21177k = a;
        a.setBackgroundColor(0);
        this.f21177k.setWillNotCacheDrawing(false);
        this.f21168b.setBackgroundColor(0);
        this.f21168b.addView(this.f21177k);
        m19390b(this.f21177k, appLovinAdSize);
        if (!this.f21185s) {
            m19392a(this.f21179m);
        }
        m19392a(new RunnableC6907a());
        this.f21185s = true;
    }

    /* renamed from: b */
    public final void m19391b() {
        C2374t tVar = this.f21171e;
        if (tVar != null) {
            tVar.m30044b("AppLovinAdView", "Destroying...");
        }
        C2070d dVar = this.f21177k;
        if (dVar != null) {
            ViewParent parent = dVar.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(this.f21177k);
            }
            this.f21177k.removeAllViews();
            if (this.f21177k.m31131a()) {
                this.f21177k.loadUrl("about:blank");
                this.f21177k.clearHistory();
            } else {
                if (((Boolean) this.f21169c.m30291a(C2251d.C2256e.f8606T3)).booleanValue()) {
                    this.f21177k.loadUrl("about:blank");
                    this.f21177k.onPause();
                    this.f21177k.destroyDrawingCache();
                }
                this.f21177k.destroy();
            }
            this.f21177k = null;
            this.f21169c.m30316F().m30201b(this.f21180n);
        }
        this.f21186t = true;
    }

    /* renamed from: c */
    public final void m19387c() {
        m19392a(new RunnableC6908b());
    }

    @Override // com.applovin.adview.AdViewController
    public void contractAd() {
        m19392a(new RunnableC6911d());
    }

    /* renamed from: d */
    public final void m19385d() {
        m19392a(new RunnableC6914g());
    }

    @Override // com.applovin.adview.AdViewController
    public void destroy() {
        if (!(this.f21177k == null || this.f21182p == null)) {
            contractAd();
        }
        m19391b();
    }

    public void dismissInterstitialIfRequired() {
        if ((this.f21167a instanceof AbstractC2086i) && this.f21180n != null) {
            if (this.f21180n.m18892j() == AbstractC7036g.EnumC7037a.DISMISS) {
                ((AbstractC2086i) this.f21167a).dismiss();
            }
        }
    }

    /* renamed from: e */
    public final void m19383e() {
        C2262c cVar = this.f21174h;
        if (cVar != null) {
            cVar.m30551c();
            this.f21174h = null;
        }
    }

    @Override // com.applovin.adview.AdViewController
    public void expandAd(PointF pointF) {
        m19392a(new RunnableC6909c(pointF));
    }

    /* renamed from: f */
    public final void m19381f() {
        AbstractC7036g gVar = this.f21180n;
        C2418k kVar = new C2418k();
        kVar.m29878a();
        kVar.m29876a("Format", gVar.getAdZone().m30641b().getLabel());
        kVar.m29876a("Ad Id", Long.valueOf(gVar.getAdIdNumber()));
        kVar.m29876a("Zone Id", gVar.getAdZone().m30650a());
        kVar.m29876a("Source", gVar.getSource());
        kVar.m29876a("Ad Class", gVar.getClass().getSimpleName());
        if (gVar instanceof C6894a) {
            kVar.m29876a("VAST DSP", ((C6894a) gVar).m19461V0());
        }
        if (!AbstractC2426r.m29812a(gVar.getSize())) {
            kVar.m29878a();
            kVar.m29877a("Fullscreen Ad Properties");
            kVar.m29876a("Target", gVar.m18865w0());
            kVar.m29876a("close_style", gVar.m18964A0());
            kVar.m29875a("close_delay_graphic", Long.valueOf(gVar.m18859z0()), C8303s.f32309d);
            if (gVar.hasVideoUrl()) {
                kVar.m29875a("close_delay", Long.valueOf(gVar.m18863x0()), C8303s.f32309d);
                kVar.m29876a("skip_style", gVar.m18962B0());
                kVar.m29876a("Streaming", Boolean.valueOf(gVar.mo18873s0()));
                kVar.m29876a("Video Location", gVar.mo18875r0());
                kVar.m29876a("video_button_properties", gVar.m18952G0());
            }
        }
        kVar.m29878a();
        C2374t.m30037g("AppLovinAdView", kVar.toString());
    }

    public AppLovinAdViewEventListener getAdViewEventListener() {
        return this.f21189w;
    }

    public C2070d getAdWebView() {
        return this.f21177k;
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorEntity
    public String getCommunicatorId() {
        return AdViewControllerImpl.class.getSimpleName();
    }

    public AbstractC7036g getCurrentAd() {
        return this.f21180n;
    }

    public AppLovinAdView getParentView() {
        return (AppLovinAdView) this.f21168b;
    }

    public C2341l getSdk() {
        return this.f21169c;
    }

    @Override // com.applovin.adview.AdViewController
    public AppLovinAdSize getSize() {
        return this.f21172f;
    }

    @Override // com.applovin.adview.AdViewController
    public String getZoneId() {
        return this.f21173g;
    }

    @Override // com.applovin.adview.AdViewController
    public void initializeAdView(AppLovinAdView appLovinAdView, Context context, AppLovinAdSize appLovinAdSize, String str, AppLovinSdk appLovinSdk, AttributeSet attributeSet) {
        if (appLovinAdView == null) {
            throw new IllegalArgumentException("No parent view specified");
        } else if (context == null) {
            C2374t.m30034j("AppLovinAdView", "Unable to build AppLovinAdView: no context provided. Please use a different constructor for this view.");
        } else {
            AppLovinAdSize appLovinAdSize2 = appLovinAdSize;
            if (appLovinAdSize == null) {
                AppLovinAdSize a = C2382b.m29996a(attributeSet);
                appLovinAdSize2 = a;
                if (a == null) {
                    appLovinAdSize2 = AppLovinAdSize.BANNER;
                }
            }
            AppLovinSdk appLovinSdk2 = appLovinSdk;
            if (appLovinSdk == null) {
                appLovinSdk2 = AppLovinSdk.getInstance(context);
            }
            if (appLovinSdk2 != null && !appLovinSdk2.hasCriticalErrors()) {
                m19398a(appLovinAdView, AbstractC2426r.m29811a(appLovinSdk2), appLovinAdSize2, str, context);
                if (C2382b.m29993b(attributeSet)) {
                    loadNextAd();
                }
            }
        }
    }

    @Override // com.applovin.adview.AdViewController
    public boolean isAdReadyToDisplay() {
        return !TextUtils.isEmpty(this.f21173g) ? this.f21170d.hasPreloadedAdForZoneId(this.f21173g) : this.f21170d.hasPreloadedAd(this.f21172f);
    }

    @Override // com.applovin.adview.AdViewController
    public void loadNextAd() {
        if (this.f21169c == null || this.f21176j == null || this.f21167a == null || !this.f21185s) {
            C2374t.m30036h("AppLovinAdView", "Unable to load next ad: AppLovinAdView is not initialized.");
        } else {
            this.f21170d.loadNextAd(this.f21173g, this.f21172f, this.f21176j);
        }
    }

    public void onAdHtmlLoaded(WebView webView) {
        webView.setVisibility(0);
        try {
            if (this.f21180n != this.f21181o && this.f21188v != null) {
                this.f21181o = this.f21180n;
                C2391j.m29899a(this.f21188v, this.f21180n);
                this.f21169c.m30316F().m30203a(this.f21180n);
            }
        } catch (Throwable th) {
            C2374t.m30041c("AppLovinAdView", "Exception while notifying ad display listener", th);
        }
    }

    @Override // com.applovin.adview.AdViewController
    public void onAttachedToWindow() {
        if (C2382b.m29995a(this.f21177k)) {
            this.f21169c.m30248k().m30522a(C2267f.f8892p);
        }
    }

    @Override // com.applovin.adview.AdViewController
    public void onDetachedFromWindow() {
        if (this.f21185s) {
            C2391j.m29888b(this.f21188v, this.f21180n);
            this.f21169c.m30316F().m30201b(this.f21180n);
            if (this.f21177k == null || this.f21182p == null) {
                this.f21171e.m30044b("AppLovinAdView", "onDetachedFromWindowCalled without an expanded ad present");
                return;
            }
            this.f21171e.m30044b("AppLovinAdView", "onDetachedFromWindowCalled with expanded ad present");
            if (((Boolean) this.f21169c.m30291a(C2251d.C2256e.f8707m1)).booleanValue()) {
                contractAd();
            } else {
                m19387c();
            }
        }
    }

    @Override // com.applovin.communicator.AppLovinCommunicatorSubscriber
    public void onMessageReceived(AppLovinCommunicatorMessage appLovinCommunicatorMessage) {
        if ("crash_applovin_ad_webview".equals(appLovinCommunicatorMessage.getTopic())) {
            m19392a(new RunnableC6915h());
        }
    }

    @Override // com.applovin.adview.AdViewController
    public void pause() {
        if (this.f21185s && !this.f21186t) {
            this.f21186t = true;
        }
    }

    @Override // com.applovin.adview.AdViewController
    public void renderAd(AppLovinAd appLovinAd) {
        renderAd(appLovinAd, null);
    }

    @Override // com.applovin.adview.AdViewController
    public void renderAd(AppLovinAd appLovinAd, String str) {
        if (appLovinAd != null) {
            AbstractC2426r.m29786b(appLovinAd, this.f21169c);
            if (this.f21185s) {
                AbstractC7036g gVar = (AbstractC7036g) AbstractC2426r.m29814a(appLovinAd, this.f21169c);
                if (gVar != null && gVar != this.f21180n) {
                    C2374t tVar = this.f21171e;
                    tVar.m30044b("AppLovinAdView", "Rendering ad #" + gVar.getAdIdNumber() + " (" + gVar.getSize() + ")");
                    C2391j.m29888b(this.f21188v, this.f21180n);
                    this.f21169c.m30316F().m30201b(this.f21180n);
                    if (gVar.getSize() != AppLovinAdSize.INTERSTITIAL) {
                        m19383e();
                    }
                    this.f21184r.set(null);
                    this.f21181o = null;
                    this.f21180n = gVar;
                    if (!this.f21186t && AbstractC2426r.m29812a(this.f21172f)) {
                        this.f21169c.m30299W().trackImpression(gVar);
                    }
                    if (this.f21182p != null) {
                        if (((Boolean) this.f21169c.m30291a(C2251d.C2256e.f8701l1)).booleanValue()) {
                            m19385d();
                            this.f21171e.m30044b("AppLovinAdView", "Fade out the old ad scheduled");
                        } else {
                            m19387c();
                        }
                    }
                    m19392a(this.f21178l);
                } else if (gVar == null) {
                    this.f21171e.m30040d("AppLovinAdView", "Unable to render ad. Ad is null. Internal inconsistency error.");
                } else {
                    C2374t tVar2 = this.f21171e;
                    tVar2.m30040d("AppLovinAdView", "Ad #" + gVar.getAdIdNumber() + " is already showing, ignoring");
                    if (((Boolean) this.f21169c.m30291a(C2251d.C2256e.f8759v1)).booleanValue()) {
                        throw new IllegalStateException("Failed to display ad - ad can only be displayed once. Load the next ad.");
                    }
                }
            } else {
                C2374t.m30036h("AppLovinAdView", "Unable to render ad: AppLovinAdView is not initialized.");
            }
        } else {
            throw new IllegalArgumentException("No ad specified");
        }
    }

    @Override // com.applovin.adview.AdViewController
    public void resume() {
        if (this.f21185s) {
            AppLovinAd andSet = this.f21184r.getAndSet(null);
            if (andSet != null) {
                renderAd(andSet);
            }
            this.f21186t = false;
        }
    }

    @Override // com.applovin.adview.AdViewController
    public void setAdClickListener(AppLovinAdClickListener appLovinAdClickListener) {
        this.f21190x = appLovinAdClickListener;
    }

    @Override // com.applovin.adview.AdViewController
    public void setAdDisplayListener(AppLovinAdDisplayListener appLovinAdDisplayListener) {
        this.f21188v = appLovinAdDisplayListener;
    }

    @Override // com.applovin.adview.AdViewController
    public void setAdLoadListener(AppLovinAdLoadListener appLovinAdLoadListener) {
        this.f21187u = appLovinAdLoadListener;
    }

    @Override // com.applovin.adview.AdViewController
    public void setAdViewEventListener(AppLovinAdViewEventListener appLovinAdViewEventListener) {
        this.f21189w = appLovinAdViewEventListener;
    }

    public void setStatsManagerHelper(C2262c cVar) {
        C2070d dVar = this.f21177k;
        if (dVar != null) {
            dVar.setStatsManagerHelper(cVar);
        }
    }
}
