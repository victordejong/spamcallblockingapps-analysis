package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzym.class */
abstract class zzym {
    public final zzxt zza;

    public zzym(zzxt zzxtVar) {
        this.zza = zzxtVar;
    }

    public abstract boolean zza(zzfd zzfdVar) throws zzbj;

    public abstract boolean zzb(zzfd zzfdVar, long j) throws zzbj;

    public final boolean zzf(zzfd zzfdVar, long j) throws zzbj {
        return zza(zzfdVar) && zzb(zzfdVar, j);
    }
}
