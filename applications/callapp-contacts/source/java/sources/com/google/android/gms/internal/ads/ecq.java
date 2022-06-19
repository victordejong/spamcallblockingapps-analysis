package com.google.android.gms.internal.ads;

import com.mopub.mobileads.VastVideoViewController;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ecq.class */
public final class ecq {

    /* renamed from: a */
    private static final byte[] f48704a = {0, 0, 0, 1};

    /* renamed from: b */
    private static final int[] f48705b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, VastVideoViewController.MAX_VIDEO_DURATION_FOR_CLOSE_BUTTON, 12000, 11025, 8000, 7350};

    /* renamed from: c */
    private static final int[] f48706c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: a */
    private static int m15256a(ecz eczVar) {
        int m15215a = eczVar.m15215a(5);
        int i = m15215a;
        if (m15215a == 31) {
            i = eczVar.m15215a(6) + 32;
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
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m15255a(byte[] r4) {
        /*
            com.google.android.gms.internal.ads.ecz r0 = new com.google.android.gms.internal.ads.ecz
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r4 = r0
            r0 = r4
            int r0 = m15256a(r0)
            r5 = r0
            r0 = r4
            int r0 = m15253b(r0)
            r6 = r0
            r0 = r4
            r1 = 4
            int r0 = r0.m15215a(r1)
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
            int r0 = m15253b(r0)
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r7
            r8 = r0
            r0 = r4
            int r0 = m15256a(r0)
            r1 = 22
            if (r0 != r1) goto L43
            r0 = r4
            r1 = 4
            int r0 = r0.m15215a(r1)
            r8 = r0
            r0 = r5
            r6 = r0
        L43:
            int[] r0 = com.google.android.gms.internal.ads.ecq.f48706c
            r1 = r8
            r0 = r0[r1]
            r8 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L57
            r0 = 1
            r9 = r0
            goto L5a
        L57:
            r0 = 0
            r9 = r0
        L5a:
            r0 = r9
            com.google.android.gms.internal.ads.ecr.m15249a(r0)
            r0 = r6
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r1 = r8
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            android.util.Pair r0 = android.util.Pair.create(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.ecq.m15255a(byte[]):android.util.Pair");
    }

    /* renamed from: a */
    public static byte[] m15254a(byte[] bArr, int i, int i2) {
        byte[] bArr2 = f48704a;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, i2);
        return bArr3;
    }

    /* renamed from: b */
    private static int m15253b(ecz eczVar) {
        int i;
        int m15215a = eczVar.m15215a(4);
        if (m15215a == 15) {
            i = eczVar.m15215a(24);
        } else {
            ecr.m15249a(m15215a < 13);
            i = f48705b[m15215a];
        }
        return i;
    }
}
