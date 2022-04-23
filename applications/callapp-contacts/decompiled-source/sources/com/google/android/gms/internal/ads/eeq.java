package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eeq.class */
final class eeq implements eet {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f27742a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eeq(eel eelVar, Activity activity) {
        this.f27742a = activity;
    }

    @Override // com.google.android.gms.internal.ads.eet
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f27742a);
    }
}
