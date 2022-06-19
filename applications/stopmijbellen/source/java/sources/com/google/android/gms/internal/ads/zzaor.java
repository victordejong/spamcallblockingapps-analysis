package com.google.android.gms.internal.ads;

import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaor.class */
public final class zzaor {
    public static final int zza;
    public static final UUID zzb;
    public static final UUID zzc;
    public static final UUID zzd;
    public static final UUID zze;

    static {
        zza = zzaxb.zza < 23 ? 1020 : 6396;
        zzb = new UUID(0L, 0L);
        zzc = new UUID(1186680826959645954L, -5988876978535335093L);
        zzd = new UUID(-1301668207276963122L, -6645017420763422227L);
        zze = new UUID(-7348484286925749626L, -6083546864340672619L);
    }

    public static long zza(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j * 1000;
    }

    public static long zzb(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j / 1000;
    }
}
