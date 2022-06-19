package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsh.class */
final class dsh implements dsy {

    /* renamed from: a */
    private final /* synthetic */ Activity f47510a;

    public dsh(dlg dlgVar, Activity activity) {
        this.f47510a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dsy
    /* renamed from: a */
    public final void mo15753a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f47510a);
    }
}
