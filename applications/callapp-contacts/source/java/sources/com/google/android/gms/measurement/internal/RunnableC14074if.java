package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* renamed from: com.google.android.gms.measurement.internal.if */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/if.class */
final class RunnableC14074if implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ComponentName f51880a;

    /* renamed from: b */
    final /* synthetic */ ServiceConnectionC14078ij f51881b;

    public RunnableC14074if(ServiceConnectionC14078ij serviceConnectionC14078ij, ComponentName componentName) {
        this.f51881b = serviceConnectionC14078ij;
        this.f51880a = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14079ik.m11750a(this.f51881b.f51887b, this.f51880a);
    }
}
