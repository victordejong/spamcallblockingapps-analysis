package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dtx.class */
final class dtx implements dud {

    /* renamed from: a */
    private final /* synthetic */ Activity f15750a;

    public dtx(dtv dtvVar, Activity activity) {
        this.f15750a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dud
    /* renamed from: a */
    public final void mo8568a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f15750a);
    }
}
