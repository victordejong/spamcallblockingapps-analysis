package p193e.p1577m.p1578a.p1596c.p1602g1.p1603a0;

import java.io.IOException;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24353e;
/* renamed from: e.m.a.c.g1.a0.f */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/a0/f.class */
public final class C24305f {

    /* renamed from: d */
    public static final long[] f67483d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a */
    public final byte[] f67484a = new byte[8];

    /* renamed from: b */
    public int f67485b;

    /* renamed from: c */
    public int f67486c;

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* renamed from: a */
    public static long m5277a(byte[] bArr, int i, boolean z) {
        ?? r0 = bArr[0] & 255;
        char c = r0;
        if (z) {
            c = r0 & (f67483d[i - 1] ^ (-1));
        }
        for (int i2 = 1; i2 < i; i2++) {
            c = (c << '\b') | (bArr[i2] & 255);
        }
        return c;
    }

    /* renamed from: b */
    public static int m5276b(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            long[] jArr = f67483d;
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
    public long m5275c(C24353e c24353e, boolean z, boolean z2, int i) throws IOException, InterruptedException {
        if (this.f67485b == 0) {
            if (!c24353e.m5207h(this.f67484a, 0, 1, z)) {
                return -1L;
            }
            int m5276b = m5276b(this.f67484a[0] & 255);
            this.f67486c = m5276b;
            if (m5276b == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f67485b = 1;
        }
        int i2 = this.f67486c;
        if (i2 > i) {
            this.f67485b = 0;
            return -2L;
        }
        if (i2 != 1) {
            c24353e.m5207h(this.f67484a, 1, i2 - 1, false);
        }
        this.f67485b = 0;
        return m5277a(this.f67484a, this.f67486c, z2);
    }
}
