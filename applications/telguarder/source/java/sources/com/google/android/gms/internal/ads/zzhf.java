package com.google.android.gms.internal.ads;

import java.util.UUID;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzhf.class */
public final class zzhf {
    public static final int CHANNEL_OUT_7POINT1_SURROUND;
    public static final UUID UUID_NIL;
    private static final UUID zzaek;
    private static final UUID zzael;
    private static final UUID zzaem;

    static {
        CHANNEL_OUT_7POINT1_SURROUND = zzpt.SDK_INT < 23 ? 1020 : 6396;
        UUID_NIL = new UUID(0L, 0L);
        zzaek = new UUID(1186680826959645954L, -5988876978535335093L);
        zzael = new UUID(-1301668207276963122L, -6645017420763422227L);
        zzaem = new UUID(-7348484286925749626L, -6083546864340672619L);
    }

    public static long zzdo(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j / 1000;
    }

    public static long zzdp(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j * 1000;
    }
}
