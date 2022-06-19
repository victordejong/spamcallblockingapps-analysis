package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhk.class */
public final class zzhk implements Runnable {
    public final /* synthetic */ AtomicReference zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ boolean zzd;
    public final /* synthetic */ zzhw zze;

    public zzhk(zzhw zzhwVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.zze = zzhwVar;
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zzs.zzy().zzq(this.zza, null, this.zzb, this.zzc, this.zzd);
    }
}
