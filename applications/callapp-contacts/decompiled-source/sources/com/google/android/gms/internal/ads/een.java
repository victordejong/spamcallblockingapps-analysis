package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/een.class */
final class een implements eet {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f27738a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public een(eel eelVar, Activity activity) {
        this.f27738a = activity;
    }

    @Override // com.google.android.gms.internal.ads.eet
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f27738a);
    }
}
