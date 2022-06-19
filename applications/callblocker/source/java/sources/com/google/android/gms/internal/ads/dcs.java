package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dcs.class */
final class dcs implements dih {

    /* renamed from: a */
    private final /* synthetic */ Activity f14062a;

    public dcs(dar darVar, Activity activity) {
        this.f14062a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dih
    /* renamed from: a */
    public final void mo9429a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f14062a);
    }
}
