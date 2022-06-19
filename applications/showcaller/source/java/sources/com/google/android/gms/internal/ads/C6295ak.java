package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* renamed from: com.google.android.gms.internal.ads.ak */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ak.class */
final class C6295ak implements AbstractC6369ck {

    /* renamed from: a */
    final /* synthetic */ Activity f19979a;

    /* renamed from: b */
    final /* synthetic */ Bundle f19980b;

    public C6295ak(C6406dk c6406dk, Activity activity, Bundle bundle) {
        this.f19979a = activity;
        this.f19980b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6369ck
    /* renamed from: a */
    public final void mo8351a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f19979a, this.f19980b);
    }
}
