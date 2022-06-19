package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* renamed from: com.google.android.gms.internal.ads.f0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/f0.class */
final class C6461f0 implements AbstractC6535h0 {

    /* renamed from: a */
    final /* synthetic */ Activity f22691a;

    /* renamed from: b */
    final /* synthetic */ Bundle f22692b;

    public C6461f0(C6572i0 c6572i0, Activity activity, Bundle bundle) {
        this.f22691a = activity;
        this.f22692b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6535h0
    /* renamed from: a */
    public final void mo8640a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f22691a, this.f22692b);
    }
}
