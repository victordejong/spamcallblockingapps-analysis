package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* renamed from: com.google.android.gms.internal.ads.vj */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vj.class */
final class C7073vj implements AbstractC6369ck {

    /* renamed from: a */
    final /* synthetic */ Activity f31201a;

    /* renamed from: b */
    final /* synthetic */ Bundle f31202b;

    public C7073vj(C6406dk c6406dk, Activity activity, Bundle bundle) {
        this.f31201a = activity;
        this.f31202b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6369ck
    /* renamed from: a */
    public final void mo8351a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f31201a, this.f31202b);
    }
}
