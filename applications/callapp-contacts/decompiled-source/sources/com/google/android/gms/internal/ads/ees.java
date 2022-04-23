package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ees.class */
final class ees implements eet {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f27745a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ees(eel eelVar, Activity activity) {
        this.f27745a = activity;
    }

    @Override // com.google.android.gms.internal.ads.eet
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f27745a);
    }
}
