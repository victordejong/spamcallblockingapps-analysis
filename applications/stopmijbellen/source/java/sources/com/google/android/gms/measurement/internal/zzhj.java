package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzhj.class */
public final class zzhj implements Runnable {
    public final /* synthetic */ AtomicReference zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ zzhw zzd;

    public zzhj(zzhw zzhwVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.zzd = zzhwVar;
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zzs.zzy().zzn(this.zza, null, this.zzb, this.zzc);
    }
}
