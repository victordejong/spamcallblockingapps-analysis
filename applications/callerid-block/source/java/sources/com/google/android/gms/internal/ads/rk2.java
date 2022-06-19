package com.google.android.gms.internal.ads;

import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rk2.class */
public final class rk2 {

    /* renamed from: a */
    public static final int f8343a;

    /* renamed from: b */
    public static final UUID f8344b;

    static {
        f8343a = zr2.f9434a < 23 ? 1020 : 6396;
        f8344b = new UUID(0L, 0L);
        new UUID(1186680826959645954L, -5988876978535335093L);
        new UUID(-1301668207276963122L, -6645017420763422227L);
        new UUID(-7348484286925749626L, -6083546864340672619L);
    }

    /* renamed from: a */
    public static long m5947a(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j / 1000;
    }

    /* renamed from: b */
    public static long m5946b(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j * 1000;
    }
}
