package p193e.p194a.p1341w3;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import javax.inject.Inject;
import o3.a;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import s1.z.c.l;
/* renamed from: e.a.w3.a */
/* loaded from: classes9-dex2jar.jar:e/a/w3/a.class */
public final class C21190a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public int f59374a;

    /* renamed from: b */
    public final a<AbstractC21631b> f59375b;

    @Inject
    public C21190a(a<AbstractC21631b> aVar) {
        l.e(aVar, "flashManager");
        this.f59375b = aVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        l.e(activity, "activity");
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
        boolean z = true;
        this.f59374a++;
        AbstractC21631b abstractC21631b = (AbstractC21631b) this.f59375b.get();
        if (this.f59374a <= 0) {
            z = false;
        }
        abstractC21631b.mo9324F(z);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        l.e(activity, "activity");
        this.f59374a--;
        ((AbstractC21631b) this.f59375b.get()).mo9324F(this.f59374a > 0);
    }
}
