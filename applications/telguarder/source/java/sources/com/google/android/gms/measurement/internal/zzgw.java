package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzgw.class */
public final class zzgw implements Runnable {
    final /* synthetic */ long zza;
    final /* synthetic */ zzhn zzb;

    public zzgw(zzhn zzhnVar, long j) {
        this.zzb = zzhnVar;
        this.zza = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzb.zzG(this.zza, true);
        this.zzb.zzx.zzy().zzv(new AtomicReference<>());
    }
}
