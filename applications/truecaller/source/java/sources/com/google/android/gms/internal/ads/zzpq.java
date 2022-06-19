package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpq.class */
public abstract class zzpq {
    public final zzox zza;

    public zzpq(zzox zzoxVar) {
        this.zza = zzoxVar;
    }

    public abstract boolean zza(zzamf zzamfVar) throws zzaha;

    public abstract boolean zzb(zzamf zzamfVar, long j) throws zzaha;

    public final boolean zzf(zzamf zzamfVar, long j) throws zzaha {
        return zza(zzamfVar) && zzb(zzamfVar, j);
    }
}
