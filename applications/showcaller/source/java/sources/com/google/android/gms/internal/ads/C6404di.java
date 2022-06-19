package com.google.android.gms.internal.ads;
/* renamed from: com.google.android.gms.internal.ads.di */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/di.class */
public final class C6404di {

    /* renamed from: a */
    private static final byte[] f21633a = {0, 0, 0, 1};

    /* renamed from: b */
    private static final int[] f21634b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: c */
    private static final int[] f21635c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0026, code lost:
        if (r0 == 29) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m15817a(byte[] r5) {
        /*
            com.google.android.gms.internal.ads.ji r0 = new com.google.android.gms.internal.ads.ji
            r1 = r0
            r2 = r5
            r3 = r5
            int r3 = r3.length
            r1.<init>(r2, r3)
            r5 = r0
            r0 = r5
            int r0 = m15815c(r0)
            r6 = r0
            r0 = r5
            int r0 = m15814d(r0)
            r7 = r0
            r0 = r5
            r1 = 4
            int r0 = r0.m14116a(r1)
            r8 = r0
            r0 = r6
            r1 = 5
            if (r0 == r1) goto L29
            r0 = r8
            r9 = r0
            r0 = r6
            r1 = 29
            if (r0 != r1) goto L45
        L29:
            r0 = r5
            int r0 = m15814d(r0)
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r8
            r9 = r0
            r0 = r5
            int r0 = m15815c(r0)
            r1 = 22
            if (r0 != r1) goto L45
            r0 = r5
            r1 = 4
            int r0 = r0.m14116a(r1)
            r9 = r0
            r0 = r6
            r7 = r0
        L45:
            int[] r0 = com.google.android.gms.internal.ads.C6404di.f21635c
            r1 = r9
            r0 = r0[r1]
            r9 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L59
            r0 = 1
            r10 = r0
            goto L5c
        L59:
            r0 = 0
            r10 = r0
        L5c:
            r0 = r10
            com.google.android.gms.internal.ads.C6367ci.m16042a(r0)
            r0 = r7
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r1 = r9
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            android.util.Pair r0 = android.util.Pair.create(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.C6404di.m15817a(byte[]):android.util.Pair");
    }

    /* renamed from: b */
    public static byte[] m15816b(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2 + 4];
        System.arraycopy(f21633a, 0, bArr2, 0, 4);
        System.arraycopy(bArr, i, bArr2, 4, i2);
        return bArr2;
    }

    /* renamed from: c */
    private static int m15815c(C6628ji c6628ji) {
        int m14116a = c6628ji.m14116a(5);
        return m14116a == 31 ? c6628ji.m14116a(6) + 32 : m14116a;
    }

    /* renamed from: d */
    private static int m15814d(C6628ji c6628ji) {
        int i;
        int m14116a = c6628ji.m14116a(4);
        if (m14116a == 15) {
            i = c6628ji.m14116a(24);
        } else {
            C6367ci.m16042a(m14116a < 13);
            i = f21634b[m14116a];
        }
        return i;
    }
}
