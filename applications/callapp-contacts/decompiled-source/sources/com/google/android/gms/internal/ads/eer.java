package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eer.class */
final class eer implements eet {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f27743a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Bundle f27744b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eer(eel eelVar, Activity activity, Bundle bundle) {
        this.f27743a = activity;
        this.f27744b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.eet
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f27743a, this.f27744b);
    }
}
