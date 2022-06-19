package com.google.android.gms.measurement.internal;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/zzha.class */
public final class zzha implements Runnable {
    final /* synthetic */ AtomicReference zza;
    final /* synthetic */ String zzb;
    final /* synthetic */ String zzc;
    final /* synthetic */ zzhn zzd;

    public zzha(zzhn zzhnVar, AtomicReference atomicReference, String str, String str2, String str3) {
        this.zzd = zzhnVar;
        this.zza = atomicReference;
        this.zzb = str2;
        this.zzc = str3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.zzd.zzx.zzy().zzn(this.zza, null, this.zzb, this.zzc);
    }
}
