package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzhv.class */
public final class zzhv implements Runnable {
    final /* synthetic */ Bundle zza;
    final /* synthetic */ zzhu zzb;
    final /* synthetic */ zzhu zzc;
    final /* synthetic */ long zzd;
    final /* synthetic */ zzib zze;

    public zzhv(zzib zzibVar, Bundle bundle, zzhu zzhuVar, zzhu zzhuVar2, long j) {
        this.zze = zzibVar;
        this.zza = bundle;
        this.zzb = zzhuVar;
        this.zzc = zzhuVar2;
        this.zzd = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzib.zzu(this.zze, this.zza, this.zzb, this.zzc, this.zzd);
    }
}
