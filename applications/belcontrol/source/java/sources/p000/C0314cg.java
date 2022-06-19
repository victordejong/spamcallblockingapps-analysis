package p000;

import com.google.android.exoplayer2.C0515C;
import java.util.UUID;
/* renamed from: cg */
/* loaded from: classes-dex2jar.jar:cg.class */
public final class C0314cg {

    /* renamed from: a */
    public static final UUID f2367a = new UUID(0, 0);

    /* renamed from: b */
    public static final UUID f2368b = new UUID(1186680826959645954L, -5988876978535335093L);

    /* renamed from: c */
    public static final UUID f2369c = new UUID(-2129748144642739255L, 8654423357094679310L);

    /* renamed from: d */
    public static final UUID f2370d = new UUID(-1301668207276963122L, -6645017420763422227L);

    /* renamed from: e */
    public static final UUID f2371e = new UUID(-7348484286925749626L, -6083546864340672619L);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: a */
    public static long m5333a(long j) {
        char c = j;
        if (j != C0515C.TIME_UNSET) {
            c = j == Long.MIN_VALUE ? j : j * 1000;
        }
        return c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: b */
    public static long m5332b(long j) {
        char c = j;
        if (j != C0515C.TIME_UNSET) {
            c = j == Long.MIN_VALUE ? j : j / 1000;
        }
        return c;
    }
}
