package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eep.class */
final class eep implements eet {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f27741a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eep(eel eelVar, Activity activity) {
        this.f27741a = activity;
    }

    @Override // com.google.android.gms.internal.ads.eet
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f27741a);
    }
}
