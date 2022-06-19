package androidx.media2.exoplayer.external;

import java.util.UUID;
/* renamed from: androidx.media2.exoplayer.external.c */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/c.class */
public final class C1446c {

    /* renamed from: a */
    public static final UUID f5514a = new UUID(0, 0);

    /* renamed from: b */
    public static final UUID f5515b = new UUID(1186680826959645954L, -5988876978535335093L);

    /* renamed from: c */
    public static final UUID f5516c = new UUID(-2129748144642739255L, 8654423357094679310L);

    /* renamed from: d */
    public static final UUID f5517d = new UUID(-1301668207276963122L, -6645017420763422227L);

    /* renamed from: e */
    public static final UUID f5518e = new UUID(-7348484286925749626L, -6083546864340672619L);

    private C1446c() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    public static long m42894a(long j) {
        char c = j;
        if (j != -9223372036854775807L) {
            c = j == Long.MIN_VALUE ? j : j / 1000;
        }
        return c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: b */
    public static long m42893b(long j) {
        char c = j;
        if (j != -9223372036854775807L) {
            c = j == Long.MIN_VALUE ? j : j * 1000;
        }
        return c;
    }
}
