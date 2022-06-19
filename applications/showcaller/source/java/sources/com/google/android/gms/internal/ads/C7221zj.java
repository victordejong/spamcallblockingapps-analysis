package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* renamed from: com.google.android.gms.internal.ads.zj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zj.class */
final class C7221zj implements AbstractC6369ck {

    /* renamed from: a */
    final /* synthetic */ Activity f32963a;

    public C7221zj(C6406dk c6406dk, Activity activity) {
        this.f32963a = activity;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6369ck
    /* renamed from: a */
    public final void mo8351a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f32963a);
    }
}
