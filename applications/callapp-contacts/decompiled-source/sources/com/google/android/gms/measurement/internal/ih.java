package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ih.class */
final class ih implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ ij f29836a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ih(ij ijVar) {
        this.f29836a = ijVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ik ikVar = this.f29836a.f29839b;
        ik.a(ikVar, new ComponentName(ikVar.t.f29583a, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
