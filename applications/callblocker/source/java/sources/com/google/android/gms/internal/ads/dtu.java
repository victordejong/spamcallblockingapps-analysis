package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dtu.class */
final class dtu implements dud {

    /* renamed from: a */
    private final /* synthetic */ Activity f15744a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f15745b;

    public dtu(dtv dtvVar, Activity activity, Bundle bundle) {
        this.f15744a = activity;
        this.f15745b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.dud
    /* renamed from: a */
    public final void mo8568a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f15744a, this.f15745b);
    }
}
