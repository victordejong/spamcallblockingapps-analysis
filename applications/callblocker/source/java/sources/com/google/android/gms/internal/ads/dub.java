package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dub.class */
final class dub implements dud {

    /* renamed from: a */
    private final /* synthetic */ Activity f15754a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f15755b;

    public dub(dtv dtvVar, Activity activity, Bundle bundle) {
        this.f15754a = activity;
        this.f15755b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.dud
    /* renamed from: a */
    public final void mo8568a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f15754a, this.f15755b);
    }
}
