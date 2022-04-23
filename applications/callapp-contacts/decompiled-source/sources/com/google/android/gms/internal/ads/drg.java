package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drg.class */
final class drg implements dsy {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f27124a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Bundle f27125b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public drg(dlg dlgVar, Activity activity, Bundle bundle) {
        this.f27124a = activity;
        this.f27125b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.dsy
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivitySaveInstanceState(this.f27124a, this.f27125b);
    }
}
