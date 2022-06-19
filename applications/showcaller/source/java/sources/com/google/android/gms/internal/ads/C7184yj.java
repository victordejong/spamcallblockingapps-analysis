package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* renamed from: com.google.android.gms.internal.ads.yj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yj.class */
final class C7184yj implements AbstractC6369ck {

    /* renamed from: a */
    final /* synthetic */ Activity f32521a;

    public C7184yj(C6406dk c6406dk, Activity activity) {
        this.f32521a = activity;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6369ck
    /* renamed from: a */
    public final void mo8351a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f32521a);
    }
}
