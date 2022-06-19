package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qn2.class */
final class qn2 {

    /* renamed from: d */
    private static final long[] f8230d = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: a */
    private final byte[] f8231a = new byte[8];

    /* renamed from: b */
    private int f8232b;

    /* renamed from: c */
    private int f8233c;

    /* renamed from: c */
    public static int m6084c(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            if (i3 >= 8) {
                i2 = -1;
                break;
            }
            i2 = i3 + 1;
            i3 = i2;
            if ((f8230d[i3] & i) != 0) {
                break;
            }
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* renamed from: d */
    public static long m6083d(byte[] bArr, int i, boolean z) {
        ?? r0 = bArr[0] & 255;
        char c = r0;
        if (z) {
            c = r0 & (f8230d[i - 1] ^ (-1));
        }
        for (int i2 = 1; i2 < i; i2++) {
            c = (c << '\b') | (bArr[i2] & 255);
        }
        return c;
    }

    /* renamed from: a */
    public final void m6086a() {
        this.f8232b = 0;
        this.f8233c = 0;
    }

    /* renamed from: b */
    public final int m6085b() {
        return this.f8233c;
    }

    /* renamed from: e */
    public final long m6082e(xm2 xm2Var, boolean z, boolean z2, int i) {
        if (this.f8232b == 0) {
            if (!xm2Var.m4894b(this.f8231a, 0, 1, z)) {
                return -1L;
            }
            int m6084c = m6084c(this.f8231a[0] & 255);
            this.f8233c = m6084c;
            if (m6084c == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f8232b = 1;
        }
        int i2 = this.f8233c;
        if (i2 > i) {
            this.f8232b = 0;
            return -2L;
        }
        if (i2 != 1) {
            xm2Var.m4894b(this.f8231a, 1, i2 - 1, false);
        }
        this.f8232b = 0;
        return m6083d(this.f8231a, this.f8233c, z2);
    }
}
