package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ddr.class */
final class ddr implements dih {

    /* renamed from: a */
    private final /* synthetic */ Activity f14123a;

    public ddr(dar darVar, Activity activity) {
        this.f14123a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dih
    /* renamed from: a */
    public final void mo9429a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f14123a);
    }
}
