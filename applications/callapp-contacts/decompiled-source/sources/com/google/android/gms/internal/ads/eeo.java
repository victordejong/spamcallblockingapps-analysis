package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eeo.class */
final class eeo implements eet {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ Activity f27739a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ Bundle f27740b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public eeo(eel eelVar, Activity activity, Bundle bundle) {
        this.f27739a = activity;
        this.f27740b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.eet
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f27739a, this.f27740b);
    }
}
