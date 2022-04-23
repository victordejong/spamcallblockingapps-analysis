package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dpg.class */
final class dpg implements dsy {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f27055a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dpg(dlg dlgVar, Activity activity) {
        this.f27055a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dsy
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f27055a);
    }
}
