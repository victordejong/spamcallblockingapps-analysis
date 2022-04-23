package com.applovin.impl.mediation.ads;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.applovin.impl.mediation.MediationServiceImpl;
import com.applovin.mediation.MaxAd;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.mediation.ads.MaxAdView;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.AppLovinSdkUtils;
import java.util.concurrent.TimeUnit;
import p131c.p135b.p136a.p143d.C2135c;
import p131c.p135b.p136a.p143d.C2173h;
import p131c.p135b.p136a.p143d.p146b.AbstractC2134a;
import p131c.p135b.p136a.p143d.p147e.C2168c;
import p131c.p135b.p136a.p148e.C2239a0;
import p131c.p135b.p136a.p148e.C2241b0;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2270g;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
import p131c.p135b.p136a.p148e.p153y.AbstractC2426r;
import p131c.p135b.p136a.p148e.p153y.C2382b;
import p131c.p135b.p136a.p148e.p153y.C2391j;
import p131c.p135b.p136a.p148e.p153y.C2427s;
/* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxAdViewImpl.class */
public class MaxAdViewImpl extends AbstractC2134a implements C2270g.AbstractC2273b, C2241b0.AbstractC2244c {

    /* renamed from: a */
    public final Activity f21476a;

    /* renamed from: b */
    public final MaxAdView f21477b;

    /* renamed from: c */
    public final View f21478c;

    /* renamed from: e */
    public C2135c.C2138c f21480e;

    /* renamed from: f */
    public String f21481f;

    /* renamed from: g */
    public final C6994d f21482g;

    /* renamed from: h */
    public final C6996f f21483h;

    /* renamed from: i */
    public final C2270g f21484i;

    /* renamed from: j */
    public final C2239a0 f21485j;

    /* renamed from: k */
    public final C2241b0 f21486k;

    /* renamed from: n */
    public boolean f21489n;

    /* renamed from: o */
    public boolean f21490o;

    /* renamed from: d */
    public long f21479d = Long.MAX_VALUE;

    /* renamed from: l */
    public final Object f21487l = new Object();

    /* renamed from: m */
    public C2135c.C2138c f21488m = null;

    /* renamed from: p */
    public boolean f21491p = false;

    /* renamed from: com.applovin.impl.mediation.ads.MaxAdViewImpl$a */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxAdViewImpl$a.class */
    public class RunnableC6989a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ MaxAdListener f21492a;

        public RunnableC6989a(MaxAdListener maxAdListener) {
            this.f21492a = maxAdListener;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (MaxAdViewImpl.this.f21488m != null) {
                long a = MaxAdViewImpl.this.f21485j.m30677a(MaxAdViewImpl.this.f21488m);
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                C2173h.C2175b bVar = maxAdViewImpl.loadRequestBuilder;
                bVar.m30797a("visible_ad_ad_unit_id", maxAdViewImpl.f21488m.getAdUnitId());
                bVar.m30797a("viewability_flags", String.valueOf(a));
            } else {
                C2173h.C2175b bVar2 = MaxAdViewImpl.this.loadRequestBuilder;
                bVar2.m30798a("visible_ad_ad_unit_id");
                bVar2.m30798a("viewability_flags");
            }
            MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
            C2374t tVar = maxAdViewImpl2.logger;
            String str = maxAdViewImpl2.tag;
            tVar.m30044b(str, "Loading banner ad for '" + MaxAdViewImpl.this.adUnitId + "' and notifying " + this.f21492a + "...");
            MediationServiceImpl g0 = MaxAdViewImpl.this.sdk.m30254g0();
            MaxAdViewImpl maxAdViewImpl3 = MaxAdViewImpl.this;
            g0.loadAd(maxAdViewImpl3.adUnitId, maxAdViewImpl3.adFormat, maxAdViewImpl3.loadRequestBuilder.m30800a(), false, MaxAdViewImpl.this.f21476a, this.f21492a);
        }
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxAdViewImpl$b */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxAdViewImpl$b.class */
    public class RunnableC6990b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ C2135c.C2138c f21494a;

        /* renamed from: com.applovin.impl.mediation.ads.MaxAdViewImpl$b$a */
        /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxAdViewImpl$b$a.class */
        public class C6991a extends AnimatorListenerAdapter {

            /* renamed from: a */
            public final /* synthetic */ MaxAdView f21496a;

            /* renamed from: com.applovin.impl.mediation.ads.MaxAdViewImpl$b$a$a */
            /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxAdViewImpl$b$a$a.class */
            public class RunnableC6992a implements Runnable {
                public RunnableC6992a() {
                }

                @Override // java.lang.Runnable
                public void run() {
                    long a = MaxAdViewImpl.this.f21485j.m30677a(RunnableC6990b.this.f21494a);
                    if (!RunnableC6990b.this.f21494a.m30957E()) {
                        RunnableC6990b bVar = RunnableC6990b.this;
                        MaxAdViewImpl.this.m19117a(bVar.f21494a, a);
                    }
                    MaxAdViewImpl.this.m19121a(a);
                }
            }

            public C6991a(MaxAdView maxAdView) {
                this.f21496a = maxAdView;
            }

            @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animator) {
                super.onAnimationEnd(animator);
                MaxAdViewImpl.this.m19123a();
                MaxAdViewImpl.this.sdk.m30316F().m30203a(RunnableC6990b.this.f21494a);
                if (RunnableC6990b.this.f21494a.m30957E()) {
                    MaxAdViewImpl.this.f21486k.m30670a(MaxAdViewImpl.this.f21476a, RunnableC6990b.this.f21494a);
                }
                RunnableC6990b bVar = RunnableC6990b.this;
                MaxAdViewImpl.this.m19116a(bVar.f21494a, this.f21496a);
                synchronized (MaxAdViewImpl.this.f21487l) {
                    MaxAdViewImpl.this.f21488m = RunnableC6990b.this.f21494a;
                }
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                maxAdViewImpl.logger.m30044b(maxAdViewImpl.tag, "Scheduling impression for ad manually...");
                MaxAdViewImpl.this.sdk.m30254g0().maybeScheduleRawAdImpressionPostback(RunnableC6990b.this.f21494a);
                AppLovinSdkUtils.runOnUiThreadDelayed(new RunnableC6992a(), RunnableC6990b.this.f21494a.m30949z());
            }
        }

        public RunnableC6990b(C2135c.C2138c cVar) {
            this.f21494a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str;
            C2374t tVar;
            String str2;
            if (this.f21494a.m30950y() != null) {
                MaxAdView maxAdView = MaxAdViewImpl.this.f21477b;
                if (maxAdView != null) {
                    MaxAdViewImpl.this.m19120a(new C6991a(maxAdView));
                    return;
                }
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                tVar = maxAdViewImpl.logger;
                str2 = maxAdViewImpl.tag;
                str = "Max ad view does not have a parent View";
            } else {
                MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                tVar = maxAdViewImpl2.logger;
                str2 = maxAdViewImpl2.tag;
                str = "Max ad does not have a loaded ad view";
            }
            tVar.m30039e(str2, str);
            MaxAdViewImpl.this.f21482g.onAdDisplayFailed(this.f21494a, -5201);
        }
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxAdViewImpl$c */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxAdViewImpl$c.class */
    public class RunnableC6993c implements Runnable {
        public RunnableC6993c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
            maxAdViewImpl.m19105a(maxAdViewImpl.f21483h);
        }
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxAdViewImpl$d */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxAdViewImpl$d.class */
    public class C6994d extends AbstractC6995e {
        public C6994d() {
            super(MaxAdViewImpl.this, null);
        }

        public /* synthetic */ C6994d(MaxAdViewImpl maxAdViewImpl, RunnableC6989a aVar) {
            this();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, int i) {
            C2391j.m29902a(MaxAdViewImpl.this.adListener, str, i);
            MaxAdViewImpl.this.m19122a(i);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (MaxAdViewImpl.this.f21491p) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                C2374t tVar = maxAdViewImpl.logger;
                String str = maxAdViewImpl.tag;
                tVar.m30044b(str, "Pre-cache ad with ad unit ID '" + MaxAdViewImpl.this.adUnitId + "' loaded after MaxAdView was destroyed. Destroying the ad.");
                MaxAdViewImpl.this.sdk.m30254g0().destroyAd(maxAd);
            } else if (maxAd instanceof C2135c.C2138c) {
                C2135c.C2138c cVar = (C2135c.C2138c) maxAd;
                cVar.m30901d(MaxAdViewImpl.this.f21481f);
                MaxAdViewImpl.this.m19118a(cVar);
                if (cVar.m30955G()) {
                    long H = cVar.m30954H();
                    C2374t d0 = MaxAdViewImpl.this.sdk.m30262d0();
                    String str2 = MaxAdViewImpl.this.tag;
                    d0.m30044b(str2, "Scheduling banner ad refresh " + H + " milliseconds from now for '" + MaxAdViewImpl.this.adUnitId + "'...");
                    MaxAdViewImpl.this.f21484i.m30511a(H);
                }
                C2391j.m29905a(MaxAdViewImpl.this.adListener, maxAd);
            } else {
                MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
                C2374t tVar2 = maxAdViewImpl2.logger;
                String str3 = maxAdViewImpl2.tag;
                tVar2.m30039e(str3, "Not a MediatedAdViewAd received: " + maxAd);
                onAdLoadFailed(MaxAdViewImpl.this.adUnitId, -5201);
            }
        }
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxAdViewImpl$e */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxAdViewImpl$e.class */
    public abstract class AbstractC6995e implements MaxAdListener, MaxAdViewAdListener {
        public AbstractC6995e() {
        }

        public /* synthetic */ AbstractC6995e(MaxAdViewImpl maxAdViewImpl, RunnableC6989a aVar) {
            this();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdClicked(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f21488m)) {
                C2391j.m29883d(MaxAdViewImpl.this.adListener, maxAd);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdCollapsed(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f21488m)) {
                if (MaxAdViewImpl.this.f21488m.m30953I()) {
                    MaxAdViewImpl.this.startAutoRefresh();
                }
                C2391j.m29879h(MaxAdViewImpl.this.adListener, maxAd);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayFailed(MaxAd maxAd, int i) {
            if (maxAd.equals(MaxAdViewImpl.this.f21488m)) {
                C2391j.m29904a(MaxAdViewImpl.this.adListener, maxAd, i);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdDisplayed(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f21488m)) {
                C2391j.m29890b(MaxAdViewImpl.this.adListener, maxAd);
            }
        }

        @Override // com.applovin.mediation.MaxAdViewAdListener
        public void onAdExpanded(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f21488m)) {
                if (MaxAdViewImpl.this.f21488m.m30953I()) {
                    MaxAdViewImpl.this.stopAutoRefresh();
                }
                C2391j.m29880g(MaxAdViewImpl.this.adListener, maxAd);
            }
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdHidden(MaxAd maxAd) {
            if (maxAd.equals(MaxAdViewImpl.this.f21488m)) {
                C2391j.m29885c(MaxAdViewImpl.this.adListener, maxAd);
            }
        }
    }

    /* renamed from: com.applovin.impl.mediation.ads.MaxAdViewImpl$f */
    /* loaded from: classes-dex2jar.jar:com/applovin/impl/mediation/ads/MaxAdViewImpl$f.class */
    public class C6996f extends AbstractC6995e {
        public C6996f() {
            super(MaxAdViewImpl.this, null);
        }

        public /* synthetic */ C6996f(MaxAdViewImpl maxAdViewImpl, RunnableC6989a aVar) {
            this();
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoadFailed(String str, int i) {
            MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
            C2374t tVar = maxAdViewImpl.logger;
            String str2 = maxAdViewImpl.tag;
            tVar.m30044b(str2, "Failed to pre-cache ad for refresh with error code " + i);
            MaxAdViewImpl.this.m19122a(i);
        }

        @Override // com.applovin.mediation.MaxAdListener
        public void onAdLoaded(MaxAd maxAd) {
            if (MaxAdViewImpl.this.f21491p) {
                MaxAdViewImpl maxAdViewImpl = MaxAdViewImpl.this;
                C2374t tVar = maxAdViewImpl.logger;
                String str = maxAdViewImpl.tag;
                tVar.m30044b(str, "Ad with ad unit ID '" + MaxAdViewImpl.this.adUnitId + "' loaded after MaxAdView was destroyed. Destroying the ad.");
                MaxAdViewImpl.this.sdk.m30254g0().destroyAd(maxAd);
                return;
            }
            MaxAdViewImpl maxAdViewImpl2 = MaxAdViewImpl.this;
            maxAdViewImpl2.logger.m30044b(maxAdViewImpl2.tag, "Successfully pre-cached ad for refresh");
            MaxAdViewImpl.this.m19106a(maxAd);
        }
    }

    public MaxAdViewImpl(String str, MaxAdFormat maxAdFormat, MaxAdView maxAdView, View view, C2341l lVar, Activity activity) {
        super(str, maxAdFormat, "MaxAdView", lVar);
        if (activity != null) {
            this.f21476a = activity;
            this.f21477b = maxAdView;
            this.f21478c = view;
            this.f21482g = new C6994d(this, null);
            this.f21483h = new C6996f(this, null);
            this.f21484i = new C2270g(lVar, this);
            this.f21485j = new C2239a0(maxAdView, lVar);
            this.f21486k = new C2241b0(maxAdView, lVar, this);
            C2374t tVar = this.logger;
            String str2 = this.tag;
            tVar.m30044b(str2, "Created new MaxAdView (" + this + ")");
            return;
        }
        throw new IllegalArgumentException("No activity specified");
    }

    /* renamed from: a */
    public final void m19123a() {
        C2135c.C2138c cVar;
        MaxAdView maxAdView = this.f21477b;
        if (maxAdView != null) {
            C2382b.m29994a(maxAdView, this.f21478c);
        }
        this.f21486k.m30672a();
        synchronized (this.f21487l) {
            cVar = this.f21488m;
        }
        if (cVar != null) {
            this.sdk.m30316F().m30201b(cVar);
            this.sdk.m30254g0().destroyAd(cVar);
        }
    }

    /* renamed from: a */
    public final void m19122a(int i) {
        if (this.sdk.m30275b(C2251d.C2255d.f8474K4).contains(String.valueOf(i))) {
            C2374t d0 = this.sdk.m30262d0();
            String str = this.tag;
            d0.m30044b(str, "Ignoring banner ad refresh for error code '" + i + "'...");
            return;
        }
        this.f21489n = true;
        long longValue = ((Long) this.sdk.m30291a(C2251d.C2255d.f8473J4)).longValue();
        if (longValue >= 0) {
            C2374t d02 = this.sdk.m30262d0();
            String str2 = this.tag;
            d02.m30044b(str2, "Scheduling failed banner ad refresh " + longValue + " milliseconds from now for '" + this.adUnitId + "'...");
            this.f21484i.m30511a(longValue);
        }
    }

    /* renamed from: a */
    public final void m19121a(long j) {
        if (AbstractC2426r.m29826a(j, ((Long) this.sdk.m30291a(C2251d.C2255d.f8483T4)).longValue())) {
            C2374t tVar = this.logger;
            String str = this.tag;
            tVar.m30044b(str, "Undesired flags matched - current: " + Long.toBinaryString(j) + ", undesired: " + Long.toBinaryString(j));
            this.logger.m30044b(this.tag, "Waiting for refresh timer to manually fire request");
            this.f21489n = true;
            return;
        }
        this.logger.m30044b(this.tag, "No undesired viewability flags matched - scheduling viewability");
        this.f21489n = false;
        m19104b();
    }

    /* renamed from: a */
    public final void m19120a(AnimatorListenerAdapter animatorListenerAdapter) {
        C2135c.C2138c cVar = this.f21488m;
        if (cVar == null || cVar.m30950y() == null) {
            animatorListenerAdapter.onAnimationEnd(null);
            return;
        }
        View y = this.f21488m.m30950y();
        y.animate().alpha(0.0f).setDuration(((Long) this.sdk.m30291a(C2251d.C2255d.f8480Q4)).longValue()).setListener(animatorListenerAdapter).start();
    }

    /* renamed from: a */
    public final void m19119a(View view, C2135c.C2138c cVar) {
        int w = cVar.mo30931w();
        int x = cVar.m30951x();
        int i = -1;
        int dpToPx = w == -1 ? -1 : AppLovinSdkUtils.dpToPx(view.getContext(), w);
        if (x != -1) {
            i = AppLovinSdkUtils.dpToPx(view.getContext(), x);
        }
        int height = this.f21477b.getHeight();
        int width = this.f21477b.getWidth();
        if ((height > 0 && height < i) || (width > 0 && width < dpToPx)) {
            int pxToDp = AppLovinSdkUtils.pxToDp(view.getContext(), height);
            C2374t.m30035i(AppLovinSdk.TAG, "\n**************************************************\n`MaxAdView` size " + AppLovinSdkUtils.pxToDp(view.getContext(), width) + "x" + pxToDp + " dp smaller than required size: " + w + "x" + x + " dp\n**************************************************\n");
        }
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams == null) {
            layoutParams = new RelativeLayout.LayoutParams(dpToPx, i);
        } else {
            layoutParams.width = dpToPx;
            layoutParams.height = i;
        }
        if (layoutParams instanceof RelativeLayout.LayoutParams) {
            this.logger.m30044b(this.tag, "Pinning ad view to MAX ad view with width: " + dpToPx + " and height: " + i + ".");
            RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) layoutParams;
            for (int i2 : C2427s.m29768a(this.f21477b.getGravity(), 10, 14)) {
                layoutParams2.addRule(i2);
            }
        }
        view.setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    public final void m19118a(C2135c.C2138c cVar) {
        AppLovinSdkUtils.runOnUiThread(new RunnableC6990b(cVar));
    }

    /* renamed from: a */
    public final void m19117a(C2135c.C2138c cVar, long j) {
        this.logger.m30044b(this.tag, "Scheduling viewability impression for ad...");
        this.sdk.m30254g0().maybeScheduleViewabilityAdImpressionPostback(cVar, j);
    }

    /* renamed from: a */
    public final void m19116a(C2135c.C2138c cVar, MaxAdView maxAdView) {
        View y = cVar.m30950y();
        y.setAlpha(0.0f);
        if (cVar.m30952J() != Long.MAX_VALUE) {
            this.f21478c.setBackgroundColor((int) cVar.m30952J());
        } else {
            long j = this.f21479d;
            if (j != Long.MAX_VALUE) {
                this.f21478c.setBackgroundColor((int) j);
            } else {
                this.f21478c.setBackgroundColor(0);
            }
        }
        maxAdView.addView(y);
        m19119a(y, cVar);
        y.animate().alpha(1.0f).setDuration(((Long) this.sdk.m30291a(C2251d.C2255d.f8479P4)).longValue()).start();
    }

    /* renamed from: a */
    public final void m19106a(MaxAd maxAd) {
        this.sdk.m30316F().m30203a(maxAd);
        if (this.f21490o) {
            this.f21490o = false;
            C2374t tVar = this.logger;
            String str = this.tag;
            tVar.m30044b(str, "Rendering precache request ad: " + maxAd.getAdUnitId() + "...");
            this.f21482g.onAdLoaded(maxAd);
            return;
        }
        this.f21480e = (C2135c.C2138c) maxAd;
    }

    /* renamed from: a */
    public final void m19105a(MaxAdListener maxAdListener) {
        if (m19099d()) {
            C2374t.m30034j(this.tag, "Unable to load new ad; ad is already destroyed");
            C2391j.m29902a(this.adListener, this.adUnitId, -1);
            return;
        }
        AppLovinSdkUtils.runOnUiThread(new RunnableC6989a(maxAdListener));
    }

    /* renamed from: b */
    public final void m19104b() {
        if (m19101c()) {
            long longValue = ((Long) this.sdk.m30291a(C2251d.C2255d.f8484U4)).longValue();
            C2374t tVar = this.logger;
            String str = this.tag;
            tVar.m30044b(str, "Scheduling refresh precache request in " + TimeUnit.MICROSECONDS.toSeconds(longValue) + " seconds...");
            this.sdk.m30249j().m18825a(new C2270g.C2290g(this.sdk, new RunnableC6993c()), C2168c.m30808a(this.adFormat), longValue);
        }
    }

    /* renamed from: c */
    public final boolean m19101c() {
        return ((Long) this.sdk.m30291a(C2251d.C2255d.f8484U4)).longValue() > 0;
    }

    /* renamed from: d */
    public final boolean m19099d() {
        boolean z;
        synchronized (this.f21487l) {
            z = this.f21491p;
        }
        return z;
    }

    public void destroy() {
        m19123a();
        if (this.f21480e != null) {
            this.sdk.m30316F().m30201b(this.f21480e);
            this.sdk.m30254g0().destroyAd(this.f21480e);
        }
        synchronized (this.f21487l) {
            this.f21491p = true;
        }
        this.f21484i.m30507c();
    }

    public String getPlacement() {
        return this.f21481f;
    }

    public void loadAd() {
        C2374t tVar = this.logger;
        String str = this.tag;
        tVar.m30044b(str, "" + this + " Loading ad for " + this.adUnitId + "...");
        if (m19099d()) {
            C2374t.m30034j(this.tag, "Unable to load new ad; ad is already destroyed");
            C2391j.m29902a(this.adListener, this.adUnitId, -1);
        } else if (!((Boolean) this.sdk.m30291a(C2251d.C2255d.f8485V4)).booleanValue() || !this.f21484i.m30512a()) {
            m19105a(this.f21482g);
        } else {
            String str2 = this.tag;
            C2374t.m30034j(str2, "Unable to load a new ad. An ad refresh has already been scheduled in " + TimeUnit.MILLISECONDS.toSeconds(this.f21484i.m30509b()) + " seconds.");
        }
    }

    @Override // p131c.p135b.p136a.p148e.C2270g.AbstractC2273b
    public void onAdRefresh() {
        String str;
        C2374t tVar;
        String str2;
        this.f21490o = false;
        if (this.f21480e != null) {
            C2374t tVar2 = this.logger;
            String str3 = this.tag;
            tVar2.m30044b(str3, "Refreshing for cached ad: " + this.f21480e.getAdUnitId() + "...");
            this.f21482g.onAdLoaded(this.f21480e);
            this.f21480e = null;
            return;
        }
        if (!m19101c()) {
            tVar = this.logger;
            str = this.tag;
            str2 = "Refreshing ad from network...";
        } else if (this.f21489n) {
            tVar = this.logger;
            str = this.tag;
            str2 = "Refreshing ad from network due to viewability requirements not met for refresh request...";
        } else {
            this.logger.m30039e(this.tag, "Ignoring attempt to refresh ad - either still waiting for precache or did not attempt request due to visibility requirement not met");
            this.f21490o = true;
            return;
        }
        tVar.m30044b(str, str2);
        loadAd();
    }

    @Override // p131c.p135b.p136a.p148e.C2241b0.AbstractC2244c
    public void onLogVisibilityImpression() {
        m19117a(this.f21488m, this.f21485j.m30677a(this.f21488m));
    }

    public void onWindowVisibilityChanged(int i) {
        if (((Boolean) this.sdk.m30291a(C2251d.C2255d.f8478O4)).booleanValue() && this.f21484i.m30512a()) {
            if (C2427s.m29770a(i)) {
                this.logger.m30044b(this.tag, "Ad view visible");
                this.f21484i.m30503g();
                return;
            }
            this.logger.m30044b(this.tag, "Ad view hidden");
            this.f21484i.m30504f();
        }
    }

    public void setPlacement(String str) {
        this.f21481f = str;
    }

    public void setPublisherBackgroundColor(int i) {
        this.f21479d = i;
    }

    public void startAutoRefresh() {
        this.f21484i.m30505e();
        C2374t tVar = this.logger;
        String str = this.tag;
        tVar.m30044b(str, "Resumed auto-refresh with remaining time: " + this.f21484i.m30509b());
    }

    public void stopAutoRefresh() {
        if (this.f21488m != null) {
            C2374t tVar = this.logger;
            String str = this.tag;
            tVar.m30044b(str, "Pausing auto-refresh with remaining time: " + this.f21484i.m30509b());
            this.f21484i.m30506d();
            return;
        }
        C2374t.m30035i(this.tag, "Stopping auto-refresh has no effect until after the first ad has been loaded.");
    }

    public String toString() {
        return "MaxAdView{adUnitId='" + this.adUnitId + "', adListener=" + this.adListener + ", isDestroyed=" + m19099d() + '}';
    }
}
