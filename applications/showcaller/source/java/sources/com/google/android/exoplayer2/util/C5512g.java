package com.google.android.exoplayer2.util;

import android.util.Pair;
/* renamed from: com.google.android.exoplayer2.util.g */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/g.class */
public final class C5512g {

    /* renamed from: a */
    private static final byte[] f17869a = {0, 0, 0, 1};

    /* renamed from: b */
    private static final int[] f17870b = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};

    /* renamed from: c */
    private static final int[] f17871c = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* renamed from: a */
    public static byte[] m18889a(int i, int i2, int i3) {
        return new byte[]{(byte) (((i << 3) & 248) | ((i2 >> 1) & 7)), (byte) (((i2 << 7) & 128) | ((i3 << 3) & 120))};
    }

    /* renamed from: b */
    public static String m18888b(int i, int i2, int i3) {
        return String.format("avc1.%02X%02X%02X", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3));
    }

    /* renamed from: c */
    public static byte[] m18887c(byte[] bArr, int i, int i2) {
        byte[] bArr2 = f17869a;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, i2);
        return bArr3;
    }

    /* renamed from: d */
    private static int m18886d(C5535u c5535u) {
        int m18703h = c5535u.m18703h(5);
        int i = m18703h;
        if (m18703h == 31) {
            i = c5535u.m18703h(6) + 32;
        }
        return i;
    }

    /* renamed from: e */
    private static int m18885e(C5535u c5535u) {
        int i;
        int m18703h = c5535u.m18703h(4);
        if (m18703h == 15) {
            i = c5535u.m18703h(24);
        } else {
            C5508e.m18915a(m18703h < 13);
            i = f17870b[m18703h];
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0020, code lost:
        if (r0 == 29) goto L6;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> m18884f(com.google.android.exoplayer2.util.C5535u r4, boolean r5) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.C5512g.m18884f(com.google.android.exoplayer2.util.u, boolean):android.util.Pair");
    }

    /* renamed from: g */
    public static Pair<Integer, Integer> m18883g(byte[] bArr) {
        return m18884f(new C5535u(bArr), false);
    }

    /* renamed from: h */
    public static Pair<Integer, Integer> m18882h(byte[] bArr) {
        C5536v c5536v = new C5536v(bArr);
        c5536v.m18680M(9);
        int m18653z = c5536v.m18653z();
        c5536v.m18680M(20);
        return Pair.create(Integer.valueOf(c5536v.m18689D()), Integer.valueOf(m18653z));
    }

    /* renamed from: i */
    private static void m18881i(C5535u c5535u, int i, int i2) {
        c5535u.m18694q(1);
        if (c5535u.m18704g()) {
            c5535u.m18694q(14);
        }
        boolean m18704g = c5535u.m18704g();
        if (i2 != 0) {
            if (i == 6 || i == 20) {
                c5535u.m18694q(3);
            }
            if (!m18704g) {
                return;
            }
            if (i == 22) {
                c5535u.m18694q(16);
            }
            if (i == 17 || i == 19 || i == 20 || i == 23) {
                c5535u.m18694q(3);
            }
            c5535u.m18694q(1);
            return;
        }
        throw new UnsupportedOperationException();
    }
}
