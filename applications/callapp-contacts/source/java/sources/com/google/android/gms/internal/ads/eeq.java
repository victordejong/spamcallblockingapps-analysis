package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eeq.class */
final class eeq implements eet {

    /* renamed from: a */
    private final /* synthetic */ Activity f48889a;

    public eeq(eel eelVar, Activity activity) {
        this.f48889a = activity;
    }

    @Override // com.google.android.gms.internal.ads.eet
    /* renamed from: a */
    public final void mo15121a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f48889a);
    }
}
