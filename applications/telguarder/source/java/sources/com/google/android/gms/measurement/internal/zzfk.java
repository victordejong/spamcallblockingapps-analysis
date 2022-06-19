package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzfk.class */
public final class zzfk implements Runnable {
    final /* synthetic */ zzgn zza;
    final /* synthetic */ zzfl zzb;

    public zzfk(zzfl zzflVar, zzgn zzgnVar) {
        this.zzb = zzflVar;
        this.zza = zzgnVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzfl.zzO(this.zzb, this.zza);
        this.zzb.zza(this.zza.zzg);
    }
}
