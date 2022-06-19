package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* renamed from: com.google.android.gms.measurement.internal.ih */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ih.class */
final class RunnableC14076ih implements Runnable {

    /* renamed from: a */
    final /* synthetic */ ServiceConnectionC14078ij f51884a;

    public RunnableC14076ih(ServiceConnectionC14078ij serviceConnectionC14078ij) {
        this.f51884a = serviceConnectionC14078ij;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C14079ik c14079ik = this.f51884a.f51887b;
        C14079ik.m11750a(c14079ik, new ComponentName(c14079ik.f51637t.f51523a, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
