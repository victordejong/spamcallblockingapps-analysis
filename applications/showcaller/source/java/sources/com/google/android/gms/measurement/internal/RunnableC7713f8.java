package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* renamed from: com.google.android.gms.measurement.internal.f8 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/f8.class */
final class RunnableC7713f8 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ ComponentName f35257d;

    /* renamed from: e */
    final /* synthetic */ ServiceConnectionC7761j8 f35258e;

    public RunnableC7713f8(ServiceConnectionC7761j8 serviceConnectionC7761j8, ComponentName componentName) {
        this.f35258e = serviceConnectionC7761j8;
        this.f35257d = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C7773k8.m6260v(this.f35258e.f35365c, this.f35257d);
    }
}
