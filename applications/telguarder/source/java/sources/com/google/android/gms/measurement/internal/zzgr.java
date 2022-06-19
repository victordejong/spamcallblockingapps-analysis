package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzgr.class */
public final class zzgr implements Runnable {
    final /* synthetic */ zzhn zza;

    public zzgr(zzhn zzhnVar) {
        this.zza = zzhnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zza.zzb.zza();
    }
}
