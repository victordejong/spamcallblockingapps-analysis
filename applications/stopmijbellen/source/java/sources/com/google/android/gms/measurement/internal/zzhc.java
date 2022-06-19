package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhc.class */
public final class zzhc implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ long zzc;
    public final /* synthetic */ Bundle zzd;
    public final /* synthetic */ boolean zze;
    public final /* synthetic */ boolean zzf;
    public final /* synthetic */ boolean zzg;
    public final /* synthetic */ String zzh;
    public final /* synthetic */ zzhw zzi;

    public zzhc(zzhw zzhwVar, String str, String str2, long j, Bundle bundle, boolean z, boolean z2, boolean z3, String str3) {
        this.zzi = zzhwVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = j;
        this.zzd = bundle;
        this.zze = z;
        this.zzf = z2;
        this.zzg = z3;
        this.zzh = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzi.zzu(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf, this.zzg, this.zzh);
    }
}
