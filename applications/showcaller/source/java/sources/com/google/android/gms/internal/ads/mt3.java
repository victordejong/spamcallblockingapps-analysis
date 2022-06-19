package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/mt3.class */
final class mt3 {

    /* renamed from: a */
    private static final long[] f26867a = {128, 64, 32, 16, 8, 4, 2, 1};

    /* renamed from: b */
    private final byte[] f26868b = new byte[8];

    /* renamed from: c */
    private int f26869c;

    /* renamed from: d */
    private int f26870d;

    /* renamed from: d */
    public static int m13080d(int i) {
        int i2;
        int i3 = 0;
        while (true) {
            if (i3 >= 8) {
                i2 = -1;
                break;
            }
            i2 = i3 + 1;
            i3 = i2;
            if ((f26867a[i3] & i) != 0) {
                break;
            }
        }
        return i2;
    }

    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* renamed from: e */
    public static long m13079e(byte[] bArr, int i, boolean z) {
        ?? r0 = bArr[0] & 255;
        char c = r0;
        if (z) {
            c = r0 & (f26867a[i - 1] ^ (-1));
        }
        for (int i2 = 1; i2 < i; i2++) {
            c = (c << '\b') | (bArr[i2] & 255);
        }
        return c;
    }

    /* renamed from: a */
    public final void m13083a() {
        this.f26869c = 0;
        this.f26870d = 0;
    }

    /* renamed from: b */
    public final long m13082b(vq3 vq3Var, boolean z, boolean z2, int i) {
        if (this.f26869c == 0) {
            if (!vq3Var.mo9883k(this.f26868b, 0, 1, z)) {
                return -1L;
            }
            int m13080d = m13080d(this.f26868b[0] & 255);
            this.f26870d = m13080d;
            if (m13080d == -1) {
                throw new IllegalStateException("No valid varint length mask found");
            }
            this.f26869c = 1;
        }
        int i2 = this.f26870d;
        if (i2 > i) {
            this.f26869c = 0;
            return -2L;
        }
        if (i2 != 1) {
            ((pq3) vq3Var).mo9883k(this.f26868b, 1, i2 - 1, false);
        }
        this.f26869c = 0;
        return m13079e(this.f26868b, this.f26870d, z2);
    }

    /* renamed from: c */
    public final int m13081c() {
        return this.f26870d;
    }
}
