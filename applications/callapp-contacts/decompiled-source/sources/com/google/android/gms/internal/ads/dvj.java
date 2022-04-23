package com.google.android.gms.internal.ads;

import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dvj.class */
public final class dvj {

    /* renamed from: a  reason: collision with root package name */
    public static final int f27250a;

    /* renamed from: b  reason: collision with root package name */
    public static final UUID f27251b;

    /* renamed from: c  reason: collision with root package name */
    private static final UUID f27252c;

    /* renamed from: d  reason: collision with root package name */
    private static final UUID f27253d;
    private static final UUID e;

    static {
        f27250a = ede.f27664a < 23 ? 1020 : 6396;
        f27251b = new UUID(0L, 0L);
        f27252c = new UUID(1186680826959645954L, -5988876978535335093L);
        f27253d = new UUID(-1301668207276963122L, -6645017420763422227L);
        e = new UUID(-7348484286925749626L, -6083546864340672619L);
    }

    public static long a(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j / 1000;
    }

    public static long b(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j * 1000;
    }
}
