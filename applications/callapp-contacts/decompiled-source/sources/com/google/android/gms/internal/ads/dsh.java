package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsh.class */
final class dsh implements dsy {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f27154a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dsh(dlg dlgVar, Activity activity) {
        this.f27154a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dsy
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStopped(this.f27154a);
    }
}
