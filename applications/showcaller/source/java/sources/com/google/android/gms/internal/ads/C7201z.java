package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* renamed from: com.google.android.gms.internal.ads.z */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/z.class */
final class C7201z implements AbstractC6535h0 {

    /* renamed from: a */
    final /* synthetic */ Activity f32735a;

    /* renamed from: b */
    final /* synthetic */ Bundle f32736b;

    public C7201z(C6572i0 c6572i0, Activity activity, Bundle bundle) {
        this.f32735a = activity;
        this.f32736b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6535h0
    /* renamed from: a */
    public final void mo8640a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f32735a, this.f32736b);
    }
}
