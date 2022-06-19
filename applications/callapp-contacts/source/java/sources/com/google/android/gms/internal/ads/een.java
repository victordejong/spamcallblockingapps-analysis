package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/een.class */
final class een implements eet {

    /* renamed from: a */
    private final /* synthetic */ Activity f48885a;

    public een(eel eelVar, Activity activity) {
        this.f48885a = activity;
    }

    @Override // com.google.android.gms.internal.ads.eet
    /* renamed from: a */
    public final void mo15121a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f48885a);
    }
}
