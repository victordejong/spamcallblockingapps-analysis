package p193e.p194a.p1146q2;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import s1.z.c.l;
/* renamed from: e.a.q2.k */
/* loaded from: classes4-dex2jar.jar:e/a/q2/k.class */
public final class C19513k implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final AbstractC19511j f54136a;

    /* renamed from: b */
    public final AbstractC19541s f54137b;

    public C19513k(AbstractC19511j abstractC19511j, AbstractC19541s abstractC19541s) {
        l.e(abstractC19511j, "appOpenTracker");
        l.e(abstractC19541s, "dauEventsTracker");
        this.f54136a = abstractC19511j;
        this.f54137b = abstractC19541s;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        l.e(activity, "activity");
        this.f54136a.onActivityCreated(activity, bundle);
        this.f54137b.mo13185b(bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        l.e(activity, "activity");
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
        this.f54136a.onActivityStarted(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        l.e(activity, "activity");
        this.f54136a.onActivityStopped(activity);
    }
}
