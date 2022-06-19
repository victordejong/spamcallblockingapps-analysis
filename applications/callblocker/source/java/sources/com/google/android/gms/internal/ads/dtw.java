package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dtw.class */
final class dtw implements dud {

    /* renamed from: a */
    private final /* synthetic */ Activity f15749a;

    public dtw(dtv dtvVar, Activity activity) {
        this.f15749a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dud
    /* renamed from: a */
    public final void mo8568a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f15749a);
    }
}
