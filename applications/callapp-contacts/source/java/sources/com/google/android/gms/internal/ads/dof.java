package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dof.class */
final class dof implements dsy {

    /* renamed from: a */
    private final /* synthetic */ Activity f47311a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f47312b;

    public dof(dlg dlgVar, Activity activity, Bundle bundle) {
        this.f47311a = activity;
        this.f47312b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.dsy
    /* renamed from: a */
    public final void mo15753a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f47311a, this.f47312b);
    }
}
