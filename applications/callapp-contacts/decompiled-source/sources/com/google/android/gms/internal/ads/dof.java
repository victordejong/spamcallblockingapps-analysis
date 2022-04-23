package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dof.class */
final class dof implements dsy {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f27025a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Bundle f27026b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dof(dlg dlgVar, Activity activity, Bundle bundle) {
        this.f27025a = activity;
        this.f27026b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.dsy
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f27025a, this.f27026b);
    }
}
