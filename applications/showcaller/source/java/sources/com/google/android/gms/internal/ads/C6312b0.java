package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* renamed from: com.google.android.gms.internal.ads.b0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b0.class */
final class C6312b0 implements AbstractC6535h0 {

    /* renamed from: a */
    final /* synthetic */ Activity f20220a;

    public C6312b0(C6572i0 c6572i0, Activity activity) {
        this.f20220a = activity;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6535h0
    /* renamed from: a */
    public final void mo8640a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f20220a);
    }
}
