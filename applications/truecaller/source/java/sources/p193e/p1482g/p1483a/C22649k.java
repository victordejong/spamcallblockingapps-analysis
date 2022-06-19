package p193e.p1482g.p1483a;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.g.a.k */
/* loaded from: classes-dex2jar.jar:e/g/a/k.class */
public final class C22649k {
    /* renamed from: a */
    public static void m7994a(double d, double d2, double d3) {
        if (d < d2 || d > d3) {
            throw new C22637b("The load factor should be in range [%.2f, %.2f]: %f", null, Double.valueOf(d2), Double.valueOf(d3), Double.valueOf(d));
        }
    }

    /* renamed from: b */
    public static int m7993b(int i, double d) {
        return Math.min(i - 1, (int) Math.ceil(i * d));
    }

    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* renamed from: c */
    public static int m7992c(int i, double d) {
        if (i >= 0) {
            ?? ceil = (long) Math.ceil(i / d);
            char c = ceil;
            if (ceil == i) {
                c = ceil + 1;
            }
            long j = c - 1;
            long j2 = j | (j >> 1);
            long j3 = j2 | (j2 >> 2);
            long j4 = j3 | (j3 >> 4);
            long j5 = j4 | (j4 >> 8);
            long j6 = j5 | (j5 >> 16);
            long max = Math.max(4L, (j6 | (j6 >> 32)) + 1);
            if (max > 1073741824) {
                throw new C22637b("Maximum array size exceeded for this load factor (elements: %d, load factor: %f)", null, Integer.valueOf(i), Double.valueOf(d));
            }
            return (int) max;
        }
        throw new IllegalArgumentException(C22128a.m8611i2("Number of elements must be >= 0: ", i));
    }

    /* renamed from: d */
    public static int m7991d(int i, int i2, double d) {
        if (i != 1073741824) {
            return i << 1;
        }
        throw new C22637b("Maximum array size exceeded for this load factor (elements: %d, load factor: %f)", null, Integer.valueOf(i2), Double.valueOf(d));
    }
}
