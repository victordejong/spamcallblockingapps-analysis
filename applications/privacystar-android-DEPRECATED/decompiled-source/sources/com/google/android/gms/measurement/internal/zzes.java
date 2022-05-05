package com.google.android.gms.measurement.internal;

import android.support.annotation.WorkerThread;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzes.class */
public final class zzes extends zzv {
    private final /* synthetic */ zzeq zzasz;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzes(zzeq zzeqVar, zzcq zzcqVar) {
        super(zzcqVar);
        this.zzasz = zzeqVar;
    }

    @Override // com.google.android.gms.measurement.internal.zzv
    @WorkerThread
    public final void run() {
        this.zzasz.zzll();
    }
}
