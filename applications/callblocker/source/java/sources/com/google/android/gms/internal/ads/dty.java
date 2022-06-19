package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dty.class */
final class dty implements dud {

    /* renamed from: a */
    private final /* synthetic */ Activity f15751a;

    public dty(dtv dtvVar, Activity activity) {
        this.f15751a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dud
    /* renamed from: a */
    public final void mo8568a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f15751a);
    }
}
