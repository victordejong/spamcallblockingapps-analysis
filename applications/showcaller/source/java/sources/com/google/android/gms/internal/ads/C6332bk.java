package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* renamed from: com.google.android.gms.internal.ads.bk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bk.class */
final class C6332bk implements AbstractC6369ck {

    /* renamed from: a */
    final /* synthetic */ Activity f20497a;

    public C6332bk(C6406dk c6406dk, Activity activity) {
        this.f20497a = activity;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6369ck
    /* renamed from: a */
    public final void mo8351a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f20497a);
    }
}
