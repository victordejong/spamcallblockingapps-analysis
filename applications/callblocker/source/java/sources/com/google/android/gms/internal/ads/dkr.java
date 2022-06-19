package com.google.android.gms.internal.ads;

import java.util.UUID;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dkr.class */
public final class dkr {

    /* renamed from: a */
    public static final int f14536a;

    /* renamed from: b */
    public static final UUID f14537b;

    /* renamed from: c */
    private static final UUID f14538c;

    /* renamed from: d */
    private static final UUID f14539d;

    /* renamed from: e */
    private static final UUID f14540e;

    static {
        f14536a = dsn.f15576a < 23 ? 1020 : 6396;
        f14537b = new UUID(0L, 0L);
        f14538c = new UUID(1186680826959645954L, -5988876978535335093L);
        f14539d = new UUID(-1301668207276963122L, -6645017420763422227L);
        f14540e = new UUID(-7348484286925749626L, -6083546864340672619L);
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* renamed from: a */
    public static long m9305a(long j) {
        return j == -9223372036854775807L ? (char) 1 : j / 1000;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* renamed from: b */
    public static long m9304b(long j) {
        return j == -9223372036854775807L ? (char) 1 : 1000 * j;
    }
}
