package p193e.p194a.p1011l.p1025p2;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p194a.p1011l.p1023n2.AbstractC16987e;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1114o5.AbstractC19128x1;
import q3.a.h1;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.l.p2.s */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/s.class */
public final class C17173s implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public int f48169a;

    /* renamed from: b */
    public final Handler f48170b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    public final Runnable f48171c = new RunnableC17174a();

    /* renamed from: d */
    public boolean f48172d = true;

    /* renamed from: e */
    public final a<AbstractC16987e> f48173e;

    /* renamed from: f */
    public final a<AbstractC17197v0> f48174f;

    /* renamed from: g */
    public final AbstractC19022f0 f48175g;

    /* renamed from: h */
    public final AbstractC19128x1 f48176h;

    /* renamed from: i */
    public final a<AbstractC17028a> f48177i;

    /* renamed from: j */
    public final f f48178j;

    /* renamed from: e.a.l.p2.s$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/s$a.class */
    public static final class RunnableC17174a implements Runnable {
        public RunnableC17174a() {
            C17173s.this = r4;
        }

        @Override // java.lang.Runnable
        public final void run() {
            C17173s c17173s = C17173s.this;
            d.w2(h1.a, c17173s.f48178j, (j0) null, new C17167r(c17173s, null), 2, (Object) null);
        }
    }

    @Inject
    public C17173s(a<AbstractC16987e> aVar, a<AbstractC17197v0> aVar2, AbstractC19022f0 abstractC19022f0, AbstractC19128x1 abstractC19128x1, a<AbstractC17028a> aVar3, @Named("UI") f fVar) {
        l.e(aVar, "billing");
        l.e(aVar2, "premiumStateSettings");
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC19128x1, "usageChecker");
        l.e(aVar3, "acknowledgePurchaseHelper");
        l.e(fVar, "uiContext");
        this.f48173e = aVar;
        this.f48174f = aVar2;
        this.f48175g = abstractC19022f0;
        this.f48176h = abstractC19128x1;
        this.f48177i = aVar3;
        this.f48178j = fVar;
    }

    /* renamed from: a */
    public final boolean m16455a(Activity activity) {
        return this.f48172d && !C17190t.f48230a.contains(activity.getClass());
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        l.e(activity, "activity");
        this.f48170b.removeCallbacks(this.f48171c);
        if (m16455a(activity)) {
            String str = "onActivityCreated: " + activity;
            this.f48169a++;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        l.e(activity, "activity");
        if (m16455a(activity)) {
            String str = "onActivityDestroyed: " + activity;
            int i = this.f48169a - 1;
            this.f48169a = i;
            if (i != 0) {
                return;
            }
            this.f48170b.postDelayed(this.f48171c, 700L);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        l.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        l.e(activity, "activity");
        l.e(bundle, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        l.e(activity, "activity");
        if (m16455a(activity)) {
            String str = "onActivityStarted: " + activity;
            if (this.f48176h.mo14081b() || !this.f48175g.mo14245a() || ((AbstractC17197v0) this.f48174f.get()).mo16408H()) {
                return;
            }
            d.w2(h1.a, this.f48178j, (j0) null, new C17161q(this, null), 2, (Object) null);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        l.e(activity, "activity");
    }
}
