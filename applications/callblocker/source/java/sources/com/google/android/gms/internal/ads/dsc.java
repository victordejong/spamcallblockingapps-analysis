package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dsc.class */
public final class dsc {

    /* renamed from: a */
    private static final byte[] f15542a = {0, 0, 0, 1};

    /* renamed from: b */
    private static final int[] f15543b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: c */
    private static final int[] f15544c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: a */
    private static int m8761a(dsh dshVar) {
        int m8749a = dshVar.m8749a(5);
        int i = m8749a;
        if (m8749a == 31) {
            i = dshVar.m8749a(6) + 32;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0024, code lost:
        if (r0 == 29) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m8760a(byte[] r4) {
        /*
            com.google.android.gms.internal.ads.dsh r0 = new com.google.android.gms.internal.ads.dsh
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r4 = r0
            r0 = r4
            int r0 = m8761a(r0)
            r5 = r0
            r0 = r4
            int r0 = m8758b(r0)
            r6 = r0
            r0 = r4
            r1 = 4
            int r0 = r0.m8749a(r1)
            r7 = r0
            r0 = r5
            r1 = 5
            if (r0 == r1) goto L27
            r0 = r7
            r8 = r0
            r0 = r5
            r1 = 29
            if (r0 != r1) goto L43
        L27:
            r0 = r4
            int r0 = m8758b(r0)
            r5 = r0
            r0 = r7
            r8 = r0
            r0 = r5
            r6 = r0
            r0 = r4
            int r0 = m8761a(r0)
            r1 = 22
            if (r0 != r1) goto L43
            r0 = r4
            r1 = 4
            int r0 = r0.m8749a(r1)
            r8 = r0
            r0 = r5
            r6 = r0
        L43:
            int[] r0 = com.google.android.gms.internal.ads.dsc.f15544c
            r1 = r8
            r0 = r0[r1]
            r8 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L66
            r0 = 1
            r9 = r0
        L54:
            r0 = r9
            com.google.android.gms.internal.ads.drz.m8772a(r0)
            r0 = r6
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r1 = r8
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            android.util.Pair r0 = android.util.Pair.create(r0, r1)
            return r0
        L66:
            r0 = 0
            r9 = r0
            goto L54
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.dsc.m8760a(byte[]):android.util.Pair");
    }

    /* renamed from: a */
    public static byte[] m8759a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[f15542a.length + i2];
        System.arraycopy(f15542a, 0, bArr2, 0, f15542a.length);
        System.arraycopy(bArr, i, bArr2, f15542a.length, i2);
        return bArr2;
    }

    /* renamed from: b */
    private static int m8758b(dsh dshVar) {
        int i;
        int m8749a = dshVar.m8749a(4);
        if (m8749a == 15) {
            i = dshVar.m8749a(24);
        } else {
            drz.m8772a(m8749a < 13);
            i = f15543b[m8749a];
        }
        return i;
    }
}
