package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drg.class */
final class drg implements dsy {

    /* renamed from: a */
    private final /* synthetic */ Activity f47455a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f47456b;

    public drg(dlg dlgVar, Activity activity, Bundle bundle) {
        this.f47455a = activity;
        this.f47456b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.dsy
    /* renamed from: a */
    public final void mo15753a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f47455a, this.f47456b);
    }
}
