package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dfs.class */
final class dfs implements dih {

    /* renamed from: a */
    private final /* synthetic */ Activity f14221a;

    public dfs(dar darVar, Activity activity) {
        this.f14221a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dih
    /* renamed from: a */
    public final void mo9429a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f14221a);
    }
}
