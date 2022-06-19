package com.google.android.gms.measurement.internal;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzii.class */
public final class zzii implements Runnable {
    public final /* synthetic */ zzid zza;
    public final /* synthetic */ long zzb;
    public final /* synthetic */ zzik zzc;

    public zzii(zzik zzikVar, zzid zzidVar, long j) {
        this.zzc = zzikVar;
        this.zza = zzidVar;
        this.zzb = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzC(this.zza, false, this.zzb);
        zzik zzikVar = this.zzc;
        zzikVar.zza = null;
        zzikVar.zzs.zzy().zzz(null);
    }
}
