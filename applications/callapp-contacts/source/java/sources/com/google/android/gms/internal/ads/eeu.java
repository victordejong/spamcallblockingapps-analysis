package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eeu.class */
final class eeu implements eet {

    /* renamed from: a */
    private final /* synthetic */ Activity f48893a;

    public eeu(eel eelVar, Activity activity) {
        this.f48893a = activity;
    }

    @Override // com.google.android.gms.internal.ads.eet
    /* renamed from: a */
    public final void mo15121a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f48893a);
    }
}
