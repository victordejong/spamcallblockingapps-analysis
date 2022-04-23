package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.internal.measurement.i0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/i0.class */
public final class C2128i0 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: b */
    final /* synthetic */ C2133j0 f9757b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C2128i0(C2133j0 j0Var) {
        this.f9757b = j0Var;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        this.f9757b.m4290p(new b0(this, bundle, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        this.f9757b.m4290p(new h0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        this.f9757b.m4290p(new e0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        this.f9757b.m4290p(new d0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        ua uaVar = new ua();
        this.f9757b.m4290p(new g0(this, activity, uaVar));
        Bundle M1 = uaVar.M1(50L);
        if (M1 != null) {
            bundle.putAll(M1);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        this.f9757b.m4290p(new c0(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        this.f9757b.m4290p(new f0(this, activity));
    }
}
