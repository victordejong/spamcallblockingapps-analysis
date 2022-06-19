package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* renamed from: com.google.android.gms.internal.ads.wj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wj.class */
final class C7110wj implements AbstractC6369ck {

    /* renamed from: a */
    final /* synthetic */ Activity f31593a;

    public C7110wj(C6406dk c6406dk, Activity activity) {
        this.f31593a = activity;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6369ck
    /* renamed from: a */
    public final void mo8351a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f31593a);
    }
}
