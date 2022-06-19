package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* renamed from: com.google.android.gms.internal.ads.e0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e0.class */
final class C6424e0 implements AbstractC6535h0 {

    /* renamed from: a */
    final /* synthetic */ Activity f21956a;

    public C6424e0(C6572i0 c6572i0, Activity activity) {
        this.f21956a = activity;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6535h0
    /* renamed from: a */
    public final void mo8640a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f21956a);
    }
}
