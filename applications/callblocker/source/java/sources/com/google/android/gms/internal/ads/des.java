package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/des.class */
final class des implements dih {

    /* renamed from: a */
    private final /* synthetic */ Activity f14168a;

    public des(dar darVar, Activity activity) {
        this.f14168a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dih
    /* renamed from: a */
    public final void mo9429a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f14168a);
    }
}
