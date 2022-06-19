package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpg.class */
final class dpg implements dsy {

    /* renamed from: a */
    private final /* synthetic */ Activity f47356a;

    public dpg(dlg dlgVar, Activity activity) {
        this.f47356a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dsy
    /* renamed from: a */
    public final void mo15753a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f47356a);
    }
}
