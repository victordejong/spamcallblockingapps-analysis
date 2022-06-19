package kotlin.p084f;
/* renamed from: kotlin.f.g */
/* loaded from: classes-dex2jar.jar:kotlin/f/g.class */
public class C1716g extends C1715f {
    /* renamed from: a */
    public static final int m3080a(int i, int i2, int i3) {
        if (i2 <= i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }
        throw new IllegalArgumentException("Cannot coerce value to an empty range: maximum " + i3 + " is less than minimum " + i2 + '.');
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public static final long m3079a(long j, long j2) {
        char c = j;
        if (j < j2) {
            c = j2;
        }
        return c;
    }

    /* renamed from: a */
    public static final C1708a m3081a(int i, int i2) {
        return C1708a.f4395a.m3088a(i, i2, -1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: b */
    public static final long m3077b(long j, long j2) {
        char c = j;
        if (j > j2) {
            c = j2;
        }
        return c;
    }

    /* renamed from: b */
    public static final C1711c m3078b(int i, int i2) {
        return i2 <= Integer.MIN_VALUE ? C1711c.f4403b.m3082a() : new C1711c(i, i2 - 1);
    }

    /* renamed from: c */
    public static final int m3076c(int i, int i2) {
        int i3 = i;
        if (i < i2) {
            i3 = i2;
        }
        return i3;
    }

    /* renamed from: d */
    public static final int m3075d(int i, int i2) {
        int i3 = i;
        if (i > i2) {
            i3 = i2;
        }
        return i3;
    }
}
