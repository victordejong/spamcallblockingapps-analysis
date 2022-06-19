package com.criteo.publisher.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Keep;
import com.criteo.publisher.Bid;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.advancednative.CriteoNativeLoader;
import com.criteo.publisher.advancednative.RendererHelper;
import com.criteo.publisher.context.ContextData;
import com.criteo.publisher.model.NativeAdUnit;
import e.i.b.e;
import e.i.b.k1;
import java.lang.ref.WeakReference;
import java.util.Objects;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.AbstractC23156x1;
import p193e.p1512i.p1516b.C23093t;
import p193e.p1512i.p1516b.C23157x2;
import p193e.p1512i.p1516b.C23161y1;
import p193e.p1512i.p1516b.p1519d2.C22935c;
import p193e.p1512i.p1516b.p1519d2.EnumC22933a;
import p193e.p1512i.p1516b.p1527q1.C23011b;
import p193e.p1512i.p1516b.p1528q2.C23019f;
import p193e.p1512i.p1516b.p1528q2.C23021h;
import p193e.p1512i.p1516b.p1528q2.C23023i;
import p193e.p1512i.p1516b.p1529r1.C23040d;
import p193e.p1512i.p1516b.p1529r1.C23042e;
import p193e.p1512i.p1516b.p1529r1.C23043f;
import p193e.p1512i.p1516b.p1529r1.C23046h;
import p193e.p1512i.p1516b.p1529r1.C23051l;
import p193e.p1512i.p1516b.p1529r1.C23054o;
import p193e.p1512i.p1516b.p1529r1.C23056q;
import p193e.p1512i.p1516b.p1529r1.C23058r;
import p193e.p1512i.p1516b.p1529r1.C23059s;
import p193e.p1512i.p1516b.p1529r1.C23060t;
import p193e.p1512i.p1516b.p1529r1.C23063w;
import p193e.p1512i.p1516b.p1531s2.C23089l;
import p193e.p1512i.p1516b.p1533u2.C23131w;
import p193e.p1512i.p1516b.p1533u2.p1534c.AbstractC23111n;
import p193e.p1512i.p1516b.p1536w1.ExecutorC23149c;
import s1.z.c.l;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeLoader.class */
public class CriteoNativeLoader {
    public final NativeAdUnit adUnit;
    private final CriteoNativeAdListener listener;
    private final C23021h logger;
    private final CriteoNativeRenderer publisherRenderer;
    private CriteoNativeRenderer renderer;

    /* renamed from: com.criteo.publisher.advancednative.CriteoNativeLoader$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeLoader$a.class */
    public class C0898a implements AbstractC23156x1 {
        public C0898a() {
            CriteoNativeLoader.this = r4;
        }

        @Override // p193e.p1512i.p1516b.AbstractC23156x1
        /* renamed from: a */
        public void mo7463a() {
            CriteoNativeLoader.this.handleNativeAssets(null);
        }

        @Override // p193e.p1512i.p1516b.AbstractC23156x1
        /* renamed from: a */
        public void mo7462a(C23131w c23131w) {
            CriteoNativeLoader.this.handleNativeAssets(c23131w.m7476i());
        }
    }

    public CriteoNativeLoader(CriteoNativeAdListener criteoNativeAdListener, CriteoNativeRenderer criteoNativeRenderer) {
        this(null, criteoNativeAdListener, criteoNativeRenderer);
    }

    public CriteoNativeLoader(NativeAdUnit nativeAdUnit, CriteoNativeAdListener criteoNativeAdListener, CriteoNativeRenderer criteoNativeRenderer) {
        C23021h m7583a = C23023i.m7583a(getClass());
        this.logger = m7583a;
        this.adUnit = nativeAdUnit;
        this.listener = new C23059s(criteoNativeAdListener, new WeakReference(this));
        this.publisherRenderer = criteoNativeRenderer;
        m7583a.m7586a(new C23019f(0, "NativeLoader initialized for " + nativeAdUnit, null, null, 13));
    }

    /* renamed from: a */
    public /* synthetic */ void m42044a() {
        this.listener.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NO_FILL);
    }

    /* renamed from: a */
    public /* synthetic */ void m42043a(CriteoNativeAd criteoNativeAd) {
        this.listener.onAdReceived(criteoNativeAd);
    }

    private void doLoad(Bid bid) {
        C23021h c23021h = this.logger;
        l.f(this, "nativeLoader");
        StringBuilder m8728C = C22128a.m8728C("Native(");
        m8728C.append(this.adUnit);
        m8728C.append(") is loading with bid ");
        m8728C.append(bid != null ? C26232y.m2359f(bid) : null);
        c23021h.m7586a(new C23019f(0, m8728C.toString(), null, null, 13));
        getIntegrationRegistry().m7620a(EnumC22933a.IN_HOUSE);
        handleNativeAssets(bid == null ? null : (AbstractC23111n) bid.m42048a(e.a));
    }

    private void doLoad(ContextData contextData) {
        C23021h c23021h = this.logger;
        l.f(this, "nativeLoader");
        StringBuilder m8728C = C22128a.m8728C("Native(");
        m8728C.append(this.adUnit);
        m8728C.append(") is loading");
        c23021h.m7586a(new C23019f(0, m8728C.toString(), null, null, 13));
        getIntegrationRegistry().m7620a(EnumC22933a.STANDALONE);
        getBidManager().m7435c(this.adUnit, contextData, new C0898a());
    }

    private C23042e getAdChoiceOverlay() {
        return C23157x2.m7454h().m7455g();
    }

    private C23161y1 getBidManager() {
        return C23157x2.m7454h().m7445q();
    }

    private static C23054o getImageLoaderHolder() {
        C23157x2 m7454h = C23157x2.m7454h();
        return (C23054o) C26232y.m2364e(m7454h.f64124a, C23054o.class, new k1(new C23093t(m7454h)));
    }

    private C22935c getIntegrationRegistry() {
        return C23157x2.m7454h().m7460b();
    }

    private C23060t getNativeAdMapper() {
        final C23157x2 m7454h = C23157x2.m7454h();
        return (C23060t) C26232y.m2364e(m7454h.f64124a, C23060t.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.o0
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                final C23157x2 c23157x2 = C23157x2.this;
                return new C23060t((C23063w) C26232y.m2364e(c23157x2.f64124a, C23063w.class, new k1(C22913b0.f63580a)), new C23056q(c23157x2.m7458d(), c23157x2.m7447o(), c23157x2.m7453i()), (C23046h) C26232y.m2364e(c23157x2.f64124a, C23046h.class, new k1(C22988m1.f63722a)), new C23051l((C23011b) C26232y.m2364e(c23157x2.f64124a, C23011b.class, new k1(new C23144w(c23157x2))), c23157x2.m7446p(), c23157x2.m7453i()), c23157x2.m7455g(), (RendererHelper) C26232y.m2364e(c23157x2.f64124a, RendererHelper.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.x
                    @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
                    /* renamed from: a */
                    public final Object mo7423a() {
                        C23157x2 c23157x22 = C23157x2.this;
                        return new RendererHelper((C23054o) C26232y.m2364e(c23157x22.f64124a, C23054o.class, new k1(new C23093t(c23157x22))), c23157x22.m7453i());
                    }
                })));
            }
        }));
    }

    private CriteoNativeRenderer getRenderer() {
        if (this.renderer == null) {
            this.renderer = new AdChoiceOverlayNativeRenderer(this.publisherRenderer, getAdChoiceOverlay());
        }
        return this.renderer;
    }

    private ExecutorC23149c getUiThreadExecutor() {
        return C23157x2.m7454h().m7453i();
    }

    public void handleNativeAssets(AbstractC23111n abstractC23111n) {
        if (abstractC23111n == null) {
            notifyForFailureAsync();
            return;
        }
        C23060t nativeAdMapper = getNativeAdMapper();
        WeakReference weakReference = new WeakReference(this.listener);
        CriteoNativeRenderer renderer = getRenderer();
        Objects.requireNonNull(nativeAdMapper);
        C23058r c23058r = new C23058r(abstractC23111n.m7545c(), weakReference, nativeAdMapper.f63869b);
        C23043f c23043f = new C23043f(abstractC23111n.m7540h().mo7533b(), weakReference, nativeAdMapper.f63871d);
        C23040d c23040d = new C23040d(abstractC23111n.mo7542f().mo7537a(), weakReference, nativeAdMapper.f63871d);
        nativeAdMapper.f63873f.preloadMedia(abstractC23111n.m7540h().m7530e());
        nativeAdMapper.f63873f.preloadMedia(abstractC23111n.m7546b());
        nativeAdMapper.f63873f.preloadMedia(abstractC23111n.m7541g());
        notifyForAdAsync(new CriteoNativeAd(abstractC23111n, nativeAdMapper.f63868a, c23058r, nativeAdMapper.f63870c, c23043f, c23040d, nativeAdMapper.f63872e, renderer, nativeAdMapper.f63873f));
    }

    private void notifyForAdAsync(final CriteoNativeAd criteoNativeAd) {
        ExecutorC23149c uiThreadExecutor = getUiThreadExecutor();
        uiThreadExecutor.f64119a.post(new Runnable() { // from class: e.i.b.r1.a
            @Override // java.lang.Runnable
            public final void run() {
                CriteoNativeLoader.this.m42043a(criteoNativeAd);
            }
        });
    }

    private void notifyForFailureAsync() {
        ExecutorC23149c uiThreadExecutor = getUiThreadExecutor();
        uiThreadExecutor.f64119a.post(new Runnable() { // from class: e.i.b.r1.b
            @Override // java.lang.Runnable
            public final void run() {
                CriteoNativeLoader.this.m42044a();
            }
        });
    }

    public static void setImageLoader(ImageLoader imageLoader) {
        getImageLoaderHolder().f63854a.set(imageLoader);
    }

    public View createEmptyNativeView(Context context, ViewGroup viewGroup) {
        return getRenderer().createNativeView(context, viewGroup);
    }

    public void loadAd() {
        loadAd(new ContextData());
    }

    public void loadAd(Bid bid) {
        try {
            doLoad(bid);
        } catch (Throwable th) {
            C23089l.m7560a(th);
        }
    }

    public void loadAd(ContextData contextData) {
        try {
            doLoad(contextData);
        } catch (Throwable th) {
            C23089l.m7560a(th);
        }
    }
}
