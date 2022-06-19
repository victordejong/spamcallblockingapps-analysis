package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* renamed from: com.google.android.gms.internal.ads.c0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/c0.class */
final class C6349c0 implements AbstractC6535h0 {

    /* renamed from: a */
    final /* synthetic */ Activity f21044a;

    public C6349c0(C6572i0 c6572i0, Activity activity) {
        this.f21044a = activity;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6535h0
    /* renamed from: a */
    public final void mo8640a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f21044a);
    }
}
