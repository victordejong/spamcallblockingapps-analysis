package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eer.class */
final class eer implements eet {

    /* renamed from: a */
    private final /* synthetic */ Activity f48890a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f48891b;

    public eer(eel eelVar, Activity activity, Bundle bundle) {
        this.f48890a = activity;
        this.f48891b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.eet
    /* renamed from: a */
    public final void mo15121a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f48890a, this.f48891b);
    }
}
