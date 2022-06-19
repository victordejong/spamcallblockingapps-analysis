package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* renamed from: com.google.android.gms.internal.ads.xj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xj.class */
final class C7147xj implements AbstractC6369ck {

    /* renamed from: a */
    final /* synthetic */ Activity f32065a;

    public C7147xj(C6406dk c6406dk, Activity activity) {
        this.f32065a = activity;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6369ck
    /* renamed from: a */
    public final void mo8351a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f32065a);
    }
}
