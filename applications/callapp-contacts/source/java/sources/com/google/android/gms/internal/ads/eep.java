package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eep.class */
final class eep implements eet {

    /* renamed from: a */
    private final /* synthetic */ Activity f48888a;

    public eep(eel eelVar, Activity activity) {
        this.f48888a = activity;
    }

    @Override // com.google.android.gms.internal.ads.eet
    /* renamed from: a */
    public final void mo15121a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f48888a);
    }
}
