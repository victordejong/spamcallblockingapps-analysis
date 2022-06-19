package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eeo.class */
final class eeo implements eet {

    /* renamed from: a */
    private final /* synthetic */ Activity f48886a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f48887b;

    public eeo(eel eelVar, Activity activity, Bundle bundle) {
        this.f48886a = activity;
        this.f48887b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.eet
    /* renamed from: a */
    public final void mo15121a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f48886a, this.f48887b);
    }
}
