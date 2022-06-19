package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqg.class */
final class dqg implements dsy {

    /* renamed from: a */
    private final /* synthetic */ Activity f47412a;

    public dqg(dlg dlgVar, Activity activity) {
        this.f47412a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dsy
    /* renamed from: a */
    public final void mo15753a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f47412a);
    }
}
