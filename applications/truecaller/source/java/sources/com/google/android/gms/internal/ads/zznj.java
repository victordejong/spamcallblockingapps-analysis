package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznj.class */
public final class zznj {
    public static final zznj zza = new zznj(-3, -9223372036854775807L, -1);
    private final int zzb;
    private final long zzc;
    private final long zzd;

    private zznj(int i, long j, long j2) {
        this.zzb = i;
        this.zzc = j;
        this.zzd = j2;
    }

    public static zznj zzd(long j, long j2) {
        return new zznj(-1, j, j2);
    }

    public static zznj zze(long j, long j2) {
        return new zznj(-2, j, j2);
    }

    public static zznj zzf(long j) {
        return new zznj(0, -9223372036854775807L, j);
    }
}
