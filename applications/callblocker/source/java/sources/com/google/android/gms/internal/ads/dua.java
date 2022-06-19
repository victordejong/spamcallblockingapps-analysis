package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dua.class */
final class dua implements dud {

    /* renamed from: a */
    private final /* synthetic */ Activity f15753a;

    public dua(dtv dtvVar, Activity activity) {
        this.f15753a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dud
    /* renamed from: a */
    public final void mo8568a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f15753a);
    }
}
