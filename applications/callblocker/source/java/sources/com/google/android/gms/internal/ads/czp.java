package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/czp.class */
final class czp implements dih {

    /* renamed from: a */
    private final /* synthetic */ Activity f13866a;

    /* renamed from: b */
    private final /* synthetic */ Bundle f13867b;

    public czp(dar darVar, Activity activity, Bundle bundle) {
        this.f13866a = activity;
        this.f13867b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.dih
    /* renamed from: a */
    public final void mo9429a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f13866a, this.f13867b);
    }
}
