package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eeu.class */
final class eeu implements eet {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f27746a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eeu(eel eelVar, Activity activity) {
        this.f27746a = activity;
    }

    @Override // com.google.android.gms.internal.ads.eet
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f27746a);
    }
}
