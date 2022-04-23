package p626l.p638x;
/* renamed from: l.x.c */
/* loaded from: classes3-dex2jar.jar:l/x/c.class */
public final class C15082c {
    /* renamed from: a */
    public static final int m457a(int i, int i2) {
        int i3 = i % i2;
        if (i3 < 0) {
            i3 += i2;
        }
        return i3;
    }

    /* renamed from: a */
    public static final int m456a(int i, int i2, int i3) {
        return m457a(m457a(i, i3) - m457a(i2, i3), i3);
    }

    /* renamed from: a */
    public static final long m455a(long j, long j2) {
        long j3 = j % j2;
        if (j3 < 0) {
            j3 += j2;
        }
        return j3;
    }

    /* renamed from: a */
    public static final long m454a(long j, long j2, long j3) {
        return m455a(m455a(j, j3) - m455a(j2, j3), j3);
    }

    /* renamed from: b */
    public static final int m453b(int i, int i2, int i3) {
        if (i3 > 0) {
            if (i < i2) {
                i2 -= m456a(i2, i, i3);
            }
        } else if (i3 >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else if (i > i2) {
            i2 += m456a(i, i2, -i3);
        }
        return i2;
    }

    /* renamed from: b */
    public static final long m452b(long j, long j2, long j3) {
        int i = (j3 > 0L ? 1 : (j3 == 0L ? 0 : -1));
        if (i > 0) {
            if (j < j2) {
                j2 -= m454a(j2, j, j3);
            }
        } else if (i >= 0) {
            throw new IllegalArgumentException("Step is zero.");
        } else if (j > j2) {
            j2 += m454a(j, j2, -j3);
        }
        return j2;
    }
}
