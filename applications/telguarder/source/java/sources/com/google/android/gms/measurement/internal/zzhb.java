package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzhb.class */
public final class zzhb implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ boolean zzd;
    final /* synthetic */ zzhn zze;

    public zzhb(zzhn zzhnVar, AtomicReference atomicReference, String str, String str2, String str3, boolean z) {
        this.zze = zzhnVar;
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zze.zzx.zzy().zzq(this.zza, null, this.zzb, this.zzc, this.zzd);
    }
}
