package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzjm.class */
final class zzjm implements Runnable {

    /* renamed from: f */
    private final /* synthetic */ zzji f9608f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjm(zzji zzjiVar) {
        this.f9608f = zzjiVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f9608f.f9596c.m11207C(new ComponentName(this.f9608f.f9596c.mo11075f(), "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
