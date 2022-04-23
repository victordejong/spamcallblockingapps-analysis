package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dsz.class */
final class dsz implements dsy {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f27171a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dsz(dlg dlgVar, Activity activity) {
        this.f27171a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dsy
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f27171a);
    }
}
