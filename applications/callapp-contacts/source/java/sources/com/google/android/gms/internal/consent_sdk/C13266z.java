package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* renamed from: com.google.android.gms.internal.consent_sdk.z */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/z.class */
final class C13266z implements Application.ActivityLifecycleCallbacks {

    /* renamed from: a */
    private final Activity f50519a;

    /* renamed from: b */
    private final /* synthetic */ C13261u f50520b;

    public C13266z(C13261u c13261u, Activity activity) {
        this.f50520b = c13261u;
        this.f50519a = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        if (activity != this.f50519a) {
            return;
        }
        this.f50520b.m13521b(new zzk(3, "Activity is destroyed."));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
