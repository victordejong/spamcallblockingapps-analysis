package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dbs.class */
final class dbs implements dih {

    /* renamed from: a */
    private final /* synthetic */ Activity f13943a;

    public dbs(dar darVar, Activity activity) {
        this.f13943a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dih
    /* renamed from: a */
    public final void mo9429a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f13943a);
    }
}
