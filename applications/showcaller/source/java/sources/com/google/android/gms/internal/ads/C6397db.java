package com.google.android.gms.internal.ads;

import java.util.UUID;
/* renamed from: com.google.android.gms.internal.ads.db */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/db.class */
public final class C6397db {

    /* renamed from: a */
    public static final int f21566a;

    /* renamed from: b */
    public static final UUID f21567b;

    /* renamed from: c */
    public static final UUID f21568c;

    /* renamed from: d */
    public static final UUID f21569d;

    /* renamed from: e */
    public static final UUID f21570e;

    static {
        f21566a = C6961si.f29514a < 23 ? 1020 : 6396;
        f21567b = new UUID(0L, 0L);
        f21568c = new UUID(1186680826959645954L, -5988876978535335093L);
        f21569d = new UUID(-1301668207276963122L, -6645017420763422227L);
        f21570e = new UUID(-7348484286925749626L, -6083546864340672619L);
    }

    /* renamed from: a */
    public static long m15842a(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j / 1000;
    }

    /* renamed from: b */
    public static long m15841b(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j * 1000;
    }
}
