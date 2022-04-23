package p131c.p161d.p170b.p224d.p252g.p253a;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import com.google.android.gms.internal.ads.zzer;
import java.lang.ref.WeakReference;
/* renamed from: c.d.b.d.g.a.d70 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/d70.class */
public final class d70 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    public final Application f12613a;

    /* renamed from: b */
    public final WeakReference<Application.ActivityLifecycleCallbacks> f12614b;

    /* renamed from: c */
    public boolean f12615c = false;

    public d70(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f12614b = new WeakReference<>(activityLifecycleCallbacks);
        this.f12613a = application;
    }

    /* renamed from: a */
    public final void m27082a(zzer zzerVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f12614b.get();
            if (activityLifecycleCallbacks != null) {
                zzerVar.mo12180a(activityLifecycleCallbacks);
            } else if (!this.f12615c) {
                this.f12613a.unregisterActivityLifecycleCallbacks(this);
                this.f12615c = true;
            }
        } catch (Exception e) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m27082a(new a90(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m27082a(new cb0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m27082a(new z90(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m27082a(new qa0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m27082a(new za0(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        m27082a(new g80(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        m27082a(new bb0(this, activity));
    }
}
