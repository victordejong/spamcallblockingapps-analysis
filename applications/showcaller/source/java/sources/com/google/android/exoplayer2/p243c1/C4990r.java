package com.google.android.exoplayer2.p243c1;
/* renamed from: com.google.android.exoplayer2.c1.r */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/r.class */
public final class C4990r {

    /* renamed from: a */
    private static final String[] f15503a = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};

    /* renamed from: b */
    private static final int[] f15504b = {44100, 48000, 32000};

    /* renamed from: c */
    private static final int[] f15505c = {32000, 64000, 96000, 128000, 160000, 192000, 224000, 256000, 288000, 320000, 352000, 384000, 416000, 448000};

    /* renamed from: d */
    private static final int[] f15506d = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000, 176000, 192000, 224000, 256000};

    /* renamed from: e */
    private static final int[] f15507e = {32000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000, 384000};

    /* renamed from: f */
    private static final int[] f15508f = {32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 160000, 192000, 224000, 256000, 320000};

    /* renamed from: g */
    private static final int[] f15509g = {8000, 16000, 24000, 32000, 40000, 48000, 56000, 64000, 80000, 96000, 112000, 128000, 144000, 160000};

    /* renamed from: h */
    public int f15510h;

    /* renamed from: i */
    public String f15511i;

    /* renamed from: j */
    public int f15512j;

    /* renamed from: k */
    public int f15513k;

    /* renamed from: l */
    public int f15514l;

    /* renamed from: m */
    public int f15515m;

    /* renamed from: n */
    public int f15516n;

    /* renamed from: a */
    public static int m20970a(int i) {
        int i2;
        int i3;
        int i4;
        if (!m20967d(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || ((i >>> 10) & 3) == 3) {
            return -1;
        }
        return m20968c(i2, i3);
    }

    /* renamed from: b */
    public static int m20969b(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        if (!m20967d(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i7 = f15504b[i5];
        if (i2 == 2) {
            i6 = i7 / 2;
        } else {
            i6 = i7;
            if (i2 == 0) {
                i6 = i7 / 4;
            }
        }
        int i8 = (i >>> 9) & 1;
        if (i3 == 3) {
            return ((((i2 == 3 ? f15505c[i4 - 1] : f15506d[i4 - 1]) * 12) / i6) + i8) * 4;
        }
        int i9 = i2 == 3 ? i3 == 2 ? f15507e[i4 - 1] : f15508f[i4 - 1] : f15509g[i4 - 1];
        int i10 = 144;
        if (i2 == 3) {
            return ((i9 * 144) / i6) + i8;
        }
        if (i3 == 1) {
            i10 = 72;
        }
        return ((i10 * i9) / i6) + i8;
    }

    /* renamed from: c */
    private static int m20968c(int i, int i2) {
        if (i2 == 1) {
            return i == 3 ? 1152 : 576;
        } else if (i2 == 2) {
            return 1152;
        } else {
            if (i2 != 3) {
                throw new IllegalArgumentException();
            }
            return 384;
        }
    }

    /* renamed from: d */
    private static boolean m20967d(int i) {
        return (i & (-2097152)) == -2097152;
    }

    /* renamed from: e */
    public static boolean m20966e(int i, C4990r c4990r) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        if (!m20967d(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return false;
        }
        int i10 = f15504b[i5];
        if (i2 == 2) {
            i6 = i10 / 2;
        } else {
            i6 = i10;
            if (i2 == 0) {
                i6 = i10 / 4;
            }
        }
        int i11 = (i >>> 9) & 1;
        int m20968c = m20968c(i2, i3);
        if (i3 == 3) {
            i7 = i2 == 3 ? f15505c[i4 - 1] : f15506d[i4 - 1];
            i8 = (((i7 * 12) / i6) + i11) * 4;
        } else {
            if (i2 == 3) {
                i7 = i3 == 2 ? f15507e[i4 - 1] : f15508f[i4 - 1];
                i9 = (i7 * 144) / i6;
            } else {
                int i12 = f15509g[i4 - 1];
                i9 = ((i3 == 1 ? 72 : 144) * i12) / i6;
                i7 = i12;
            }
            i8 = i9 + i11;
        }
        c4990r.m20965f(i2, f15503a[3 - i3], i8, i6, ((i >> 6) & 3) == 3 ? 1 : 2, i7, m20968c);
        return true;
    }

    /* renamed from: f */
    private void m20965f(int i, String str, int i2, int i3, int i4, int i5, int i6) {
        this.f15510h = i;
        this.f15511i = str;
        this.f15512j = i2;
        this.f15513k = i3;
        this.f15514l = i4;
        this.f15515m = i5;
        this.f15516n = i6;
    }
}
