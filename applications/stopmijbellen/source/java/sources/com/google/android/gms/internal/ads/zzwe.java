package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwe.class */
public final class zzwe {
    public static final zzwe zza = new zzwe(-3, -9223372036854775807L, -1);
    private final int zzb;
    private final long zzc;
    private final long zzd;

    private zzwe(int i, long j, long j2) {
        this.zzb = i;
        this.zzc = j;
        this.zzd = j2;
    }

    public static zzwe zzd(long j, long j2) {
        return new zzwe(-1, j, j2);
    }

    public static zzwe zze(long j) {
        return new zzwe(0, -9223372036854775807L, j);
    }

    public static zzwe zzf(long j, long j2) {
        return new zzwe(-2, j, j2);
    }
}
