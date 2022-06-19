package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* renamed from: com.google.android.gms.measurement.internal.f8 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/f8.class */
final class RunnableC2256f8 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ ComponentName f10193b;

    /* renamed from: c */
    final /* synthetic */ j8 f10194c;

    RunnableC2256f8(j8 j8Var, ComponentName componentName) {
        this.f10194c = j8Var;
        this.f10193b = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k8.x(this.f10194c.c, this.f10193b);
    }
}
