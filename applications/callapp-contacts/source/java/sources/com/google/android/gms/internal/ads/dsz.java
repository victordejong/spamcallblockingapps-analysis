package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsz.class */
final class dsz implements dsy {

    /* renamed from: a */
    private final /* synthetic */ Activity f47527a;

    public dsz(dlg dlgVar, Activity activity) {
        this.f47527a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dsy
    /* renamed from: a */
    public final void mo15753a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f47527a);
    }
}
