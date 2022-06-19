package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ees.class */
final class ees implements eet {

    /* renamed from: a */
    private final /* synthetic */ Activity f48892a;

    public ees(eel eelVar, Activity activity) {
        this.f48892a = activity;
    }

    @Override // com.google.android.gms.internal.ads.eet
    /* renamed from: a */
    public final void mo15121a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f48892a);
    }
}
