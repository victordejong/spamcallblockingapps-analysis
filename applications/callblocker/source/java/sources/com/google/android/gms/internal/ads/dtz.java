package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dtz.class */
final class dtz implements dud {

    /* renamed from: a */
    private final /* synthetic */ Activity f15752a;

    public dtz(dtv dtvVar, Activity activity) {
        this.f15752a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dud
    /* renamed from: a */
    public final void mo8568a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f15752a);
    }
}
