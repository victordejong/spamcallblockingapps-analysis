package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
/* renamed from: com.google.android.gms.measurement.internal.h8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/h8.class */
final class RunnableC7737h8 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ ServiceConnectionC7761j8 f35310d;

    public RunnableC7737h8(ServiceConnectionC7761j8 serviceConnectionC7761j8) {
        this.f35310d = serviceConnectionC7761j8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C7773k8 c7773k8 = this.f35310d.f35365c;
        Context mo6030a = c7773k8.f35460a.mo6030a();
        this.f35310d.f35365c.f35460a.mo6028c();
        C7773k8.m6260v(c7773k8, new ComponentName(mo6030a, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
