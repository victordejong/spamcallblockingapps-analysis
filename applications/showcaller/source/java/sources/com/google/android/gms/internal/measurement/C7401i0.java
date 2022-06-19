package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* renamed from: com.google.android.gms.internal.measurement.i0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/i0.class */
public final class C7401i0 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: d */
    final /* synthetic */ C7415j0 f34516d;

    public C7401i0(C7415j0 c7415j0) {
        this.f34516d = c7415j0;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.f34516d.m7264p(new C7303b0(this, bundle, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f34516d.m7264p(new C7387h0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f34516d.m7264p(new C7345e0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        this.f34516d.m7264p(new C7331d0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        BinderC7328cb binderC7328cb = new BinderC7328cb();
        this.f34516d.m7264p(new C7373g0(this, activity, binderC7328cb));
        Bundle m7622J0 = binderC7328cb.m7622J0(50L);
        if (m7622J0 != null) {
            bundle.putAll(m7622J0);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        this.f34516d.m7264p(new C7317c0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.f34516d.m7264p(new C7359f0(this, activity));
    }
}
