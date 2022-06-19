package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1885s;

import java.io.IOException;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
/* renamed from: n3.y.b.a.q0.s.f */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/s/f.class */
public final class C27210f {

    /* renamed from: d */
    public static final long[] f76240d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a */
    public final byte[] f76241a = new byte[8];

    /* renamed from: b */
    public int f76242b;

    /* renamed from: c */
    public int f76243c;

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* renamed from: a */
    public static long m710a(byte[] bArr, int i, boolean z) {
        ?? r0 = bArr[0] & 255;
        char c = r0;
        if (z) {
            c = r0 & (f76240d[i - 1] ^ (-1));
        }
        for (int i2 = 1; i2 < i; i2++) {
            c = (c << '\b') | (bArr[i2] & 255);
        }
        return c;
    }

    /* renamed from: b */
    public static int m709b(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            long[] jArr = f76240d;
            if (i3 >= jArr.length) {
                i2 = -1;
                break;
            } else if ((jArr[i3] & i) != 0) {
                i2 = i3 + 1;
                break;
            } else {
                i3++;
            }
        }
        return i2;
    }

    /* renamed from: c */
    public long m708c(C27176d c27176d, boolean z, boolean z2, int i) throws IOException, InterruptedException {
        if (this.f76242b == 0) {
            if (!c27176d.m754g(this.f76241a, 0, 1, z)) {
                return -1L;
            }
            int m709b = m709b(this.f76241a[0] & 255);
            this.f76243c = m709b;
            if (m709b == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f76242b = 1;
        }
        int i2 = this.f76243c;
        if (i2 > i) {
            this.f76242b = 0;
            return -2L;
        }
        if (i2 != 1) {
            c27176d.m754g(this.f76241a, 1, i2 - 1, false);
        }
        this.f76242b = 0;
        return m710a(this.f76241a, this.f76243c, z2);
    }
}
