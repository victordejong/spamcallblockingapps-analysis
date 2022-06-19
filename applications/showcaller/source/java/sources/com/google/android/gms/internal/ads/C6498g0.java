package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* renamed from: com.google.android.gms.internal.ads.g0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g0.class */
final class C6498g0 implements AbstractC6535h0 {

    /* renamed from: a */
    final /* synthetic */ Activity f23210a;

    public C6498g0(C6572i0 c6572i0, Activity activity) {
        this.f23210a = activity;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6535h0
    /* renamed from: a */
    public final void mo8640a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f23210a);
    }
}
