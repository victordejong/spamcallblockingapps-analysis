package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dng.class */
final class dng implements dsy {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f26991a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public dng(dlg dlgVar, Activity activity) {
        this.f26991a = activity;
    }

    @Override // com.google.android.gms.internal.ads.dsy
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f26991a);
    }
}
