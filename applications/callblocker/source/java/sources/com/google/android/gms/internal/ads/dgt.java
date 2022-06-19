package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dgt.class */
final class dgt implements dih {

    /* renamed from: a */
    private final /* synthetic */ Activity f14327a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f14328b;

    public dgt(dar darVar, Activity activity, Bundle bundle) {
        this.f14327a = activity;
        this.f14328b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.dih
    /* renamed from: a */
    public final void mo9429a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f14327a, this.f14328b);
    }
}
