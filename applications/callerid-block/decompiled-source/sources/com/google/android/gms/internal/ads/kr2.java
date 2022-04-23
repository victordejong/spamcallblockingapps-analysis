package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kr2.class */
public final class kr2 {

    /* renamed from: a */
    private static final byte[] f7050a = {0, 0, 0, 1};

    /* renamed from: b */
    private static final int[] f7051b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: c */
    private static final int[] f7052c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0026, code lost:
        if (r0 == 29) goto L_0x0029;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m6765a(byte[] r5) {
        /*
            com.google.android.gms.internal.ads.rr2 r0 = new com.google.android.gms.internal.ads.rr2
            r1 = r0
            r2 = r5
            r3 = r5
            int r3 = r3.length
            r1.<init>(r2, r3)
            r5 = r0
            r0 = r5
            int r0 = m6763c(r0)
            r6 = r0
            r0 = r5
            int r0 = m6762d(r0)
            r7 = r0
            r0 = r5
            r1 = 4
            int r0 = r0.m5870a(r1)
            r8 = r0
            r0 = r6
            r1 = 5
            if (r0 == r1) goto L_0x0029
            r0 = r8
            r9 = r0
            r0 = r6
            r1 = 29
            if (r0 != r1) goto L_0x0045
        L_0x0029:
            r0 = r5
            int r0 = m6762d(r0)
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r8
            r9 = r0
            r0 = r5
            int r0 = m6763c(r0)
            r1 = 22
            if (r0 != r1) goto L_0x0045
            r0 = r5
            r1 = 4
            int r0 = r0.m5870a(r1)
            r9 = r0
            r0 = r6
            r7 = r0
        L_0x0045:
            int[] r0 = com.google.android.gms.internal.ads.kr2.f7052c
            r1 = r9
            r0 = r0[r1]
            r9 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L_0x0059
            r0 = 1
            r10 = r0
            goto L_0x005c
        L_0x0059:
            r0 = 0
            r10 = r0
        L_0x005c:
            r0 = r10
            com.google.android.gms.internal.ads.jr2.m6926a(r0)
            r0 = r7
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r1 = r9
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            android.util.Pair r0 = android.util.Pair.create(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.kr2.m6765a(byte[]):android.util.Pair");
    }

    /* renamed from: b */
    public static byte[] m6764b(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2 + 4];
        System.arraycopy(f7050a, 0, bArr2, 0, 4);
        System.arraycopy(bArr, i, bArr2, 4, i2);
        return bArr2;
    }

    /* renamed from: c */
    private static int m6763c(rr2 rr2Var) {
        int a = rr2Var.m5870a(5);
        return a == 31 ? rr2Var.m5870a(6) + 32 : a;
    }

    /* renamed from: d */
    private static int m6762d(rr2 rr2Var) {
        int i;
        int a = rr2Var.m5870a(4);
        if (a == 15) {
            i = rr2Var.m5870a(24);
        } else {
            jr2.m6926a(a < 13);
            i = f7051b[a];
        }
        return i;
    }
}
