package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dng.class */
final class dng implements dsy {

    /* renamed from: a */
    private final /* synthetic */ Activity f47272a;

    public dng(dlg dlgVar, Activity activity) {
        this.f47272a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dsy
    /* renamed from: a */
    public final void mo15753a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f47272a);
    }
}
