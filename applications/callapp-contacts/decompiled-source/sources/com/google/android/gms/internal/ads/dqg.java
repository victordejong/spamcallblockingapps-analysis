package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dqg.class */
final class dqg implements dsy {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f27102a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dqg(dlg dlgVar, Activity activity) {
        this.f27102a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dsy
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f27102a);
    }
}
