package com.google.android.gms.measurement.internal;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzhz.class */
public final class zzhz implements Runnable {
    final /* synthetic */ zzhu zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zzib zzc;

    public zzhz(zzib zzibVar, zzhu zzhuVar, long j) {
        this.zzc = zzibVar;
        this.zza = zzhuVar;
        this.zzb = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzc.zzC(this.zza, false, this.zzb);
        zzib zzibVar = this.zzc;
        zzibVar.zza = null;
        zzibVar.zzx.zzy().zzz(null);
    }
}
