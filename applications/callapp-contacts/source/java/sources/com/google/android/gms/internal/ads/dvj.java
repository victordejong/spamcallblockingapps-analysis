package com.google.android.gms.internal.ads;

import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvj.class */
public final class dvj {

    /* renamed from: a */
    public static final int f47657a;

    /* renamed from: b */
    public static final UUID f47658b;

    /* renamed from: c */
    private static final UUID f47659c;

    /* renamed from: d */
    private static final UUID f47660d;

    /* renamed from: e */
    private static final UUID f47661e;

    static {
        f47657a = ede.f48739a < 23 ? 1020 : 6396;
        f47658b = new UUID(0L, 0L);
        f47659c = new UUID(1186680826959645954L, -5988876978535335093L);
        f47660d = new UUID(-1301668207276963122L, -6645017420763422227L);
        f47661e = new UUID(-7348484286925749626L, -6083546864340672619L);
    }

    /* renamed from: a */
    public static long m15657a(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j / 1000;
    }

    /* renamed from: b */
    public static long m15656b(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j * 1000;
    }
}
