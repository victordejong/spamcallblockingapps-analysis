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

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m6083d(byte[] r7, int r8, boolean r9) {
        /*
            r0 = r7
            r1 = 0
            r0 = r0[r1]
            long r0 = (long) r0
            r1 = 255(0xff, double:1.26E-321)
            long r0 = r0 & r1
            r10 = r0
            r0 = r10
            r12 = r0
            r0 = r9
            if (r0 == 0) goto L_0x001f
            r0 = r10
            long[] r1 = com.google.android.gms.internal.ads.qn2.f8230d
            r2 = r8
            r3 = 1
            int r2 = r2 - r3
            r1 = r1[r2]
            r2 = -1
            long r1 = r1 ^ r2
            long r0 = r0 & r1
            r12 = r0
        L_0x001f:
            r0 = 1
            r14 = r0
        L_0x0022:
            r0 = r14
            r1 = r8
            if (r0 >= r1) goto L_0x003f
            r0 = r12
            r1 = 8
            long r0 = r0 << r1
            r1 = r7
            r2 = r14
            r1 = r1[r2]
            long r1 = (long) r1
            r2 = 255(0xff, double:1.26E-321)
            long r1 = r1 & r2
            long r0 = r0 | r1
            r12 = r0
            int r14 = r14 + 1
            goto L_0x0022
        L_0x003f:
            r0 = r12
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.qn2.m6083d(byte[], int, boolean):long");
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
            int c = m6084c(this.f8231a[0] & 255);
            this.f8233c = c;
            if (c != -1) {
                this.f8232b = 1;
            } else {
                throw new IllegalStateException("No valid varint length mask found");
            }
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
