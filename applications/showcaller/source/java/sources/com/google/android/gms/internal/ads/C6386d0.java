package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* renamed from: com.google.android.gms.internal.ads.d0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/d0.class */
final class C6386d0 implements AbstractC6535h0 {

    /* renamed from: a */
    final /* synthetic */ Activity f21426a;

    public C6386d0(C6572i0 c6572i0, Activity activity) {
        this.f21426a = activity;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6535h0
    /* renamed from: a */
    public final void mo8640a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f21426a);
    }
}
