package com.google.android.exoplayer2.util;

import java.nio.ByteBuffer;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.util.s */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/s.class */
public final class C5531s {

    /* renamed from: a */
    public static final byte[] f17917a = {0, 0, 0, 1};

    /* renamed from: b */
    public static final float[] f17918b = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 2.1818182f, 1.8181819f, 2.909091f, 2.4242425f, 1.6363636f, 1.3636364f, 1.939394f, 1.6161616f, 1.3333334f, 1.5f, 2.0f};

    /* renamed from: c */
    private static final Object f17919c = new Object();

    /* renamed from: d */
    private static int[] f17920d = new int[10];

    /* renamed from: com.google.android.exoplayer2.util.s$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/s$a.class */
    public static final class C5532a {

        /* renamed from: a */
        public final int f17921a;

        /* renamed from: b */
        public final int f17922b;

        /* renamed from: c */
        public final boolean f17923c;

        public C5532a(int i, int i2, boolean z) {
            this.f17921a = i;
            this.f17922b = i2;
            this.f17923c = z;
        }
    }

    /* renamed from: com.google.android.exoplayer2.util.s$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/s$b.class */
    public static final class C5533b {

        /* renamed from: a */
        public final int f17924a;

        /* renamed from: b */
        public final int f17925b;

        /* renamed from: c */
        public final int f17926c;

        /* renamed from: d */
        public final int f17927d;

        /* renamed from: e */
        public final int f17928e;

        /* renamed from: f */
        public final int f17929f;

        /* renamed from: g */
        public final float f17930g;

        /* renamed from: h */
        public final boolean f17931h;

        /* renamed from: i */
        public final boolean f17932i;

        /* renamed from: j */
        public final int f17933j;

        /* renamed from: k */
        public final int f17934k;

        /* renamed from: l */
        public final int f17935l;

        /* renamed from: m */
        public final boolean f17936m;

        public C5533b(int i, int i2, int i3, int i4, int i5, int i6, float f, boolean z, boolean z2, int i7, int i8, int i9, boolean z3) {
            this.f17924a = i;
            this.f17925b = i2;
            this.f17926c = i3;
            this.f17927d = i4;
            this.f17928e = i5;
            this.f17929f = i6;
            this.f17930g = f;
            this.f17931h = z;
            this.f17932i = z2;
            this.f17933j = i7;
            this.f17934k = i8;
            this.f17935l = i9;
            this.f17936m = z3;
        }
    }

    /* renamed from: a */
    public static void m18722a(boolean[] zArr) {
        zArr[0] = false;
        zArr[1] = false;
        zArr[2] = false;
    }

    /* renamed from: b */
    public static void m18721b(ByteBuffer byteBuffer) {
        int i;
        int position = byteBuffer.position();
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i2 + 1;
            if (i4 >= position) {
                byteBuffer.clear();
                return;
            }
            int i5 = byteBuffer.get(i2) & 255;
            if (i3 == 3) {
                i = i3;
                if (i5 == 1) {
                    i = i3;
                    if ((byteBuffer.get(i4) & 31) == 7) {
                        ByteBuffer duplicate = byteBuffer.duplicate();
                        duplicate.position(i2 - 3);
                        duplicate.limit(position);
                        byteBuffer.position(0);
                        byteBuffer.put(duplicate);
                        return;
                    }
                }
            } else {
                i = i3;
                if (i5 == 0) {
                    i = i3 + 1;
                }
            }
            i3 = i;
            if (i5 != 0) {
                i3 = 0;
            }
            i2 = i4;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:75:0x0114, code lost:
        r10 = true;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m18720c(byte[] r4, int r5, int r6, boolean[] r7) {
        /*
            Method dump skipped, instructions count: 356
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.C5531s.m18720c(byte[], int, int, boolean[]):int");
    }

    /* renamed from: d */
    private static int m18719d(byte[] bArr, int i, int i2) {
        while (i < i2 - 2) {
            if (bArr[i] == 0 && bArr[i + 1] == 0 && bArr[i + 2] == 3) {
                return i;
            }
            i++;
        }
        return i2;
    }

    /* renamed from: e */
    public static int m18718e(byte[] bArr, int i) {
        return (bArr[i + 3] & 126) >> 1;
    }

    /* renamed from: f */
    public static int m18717f(byte[] bArr, int i) {
        return bArr[i + 3] & 31;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0015, code lost:
        if ((r4 & 31) != 6) goto L6;
     */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m18716g(java.lang.String r3, byte r4) {
        /*
            java.lang.String r0 = "video/avc"
            r1 = r3
            boolean r0 = r0.equals(r1)
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L18
            r0 = r6
            r5 = r0
            r0 = r4
            r1 = 31
            r0 = r0 & r1
            r1 = 6
            if (r0 == r1) goto L33
        L18:
            java.lang.String r0 = "video/hevc"
            r1 = r3
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L31
            r0 = r4
            r1 = 126(0x7e, float:1.77E-43)
            r0 = r0 & r1
            r1 = 1
            int r0 = r0 >> r1
            r1 = 39
            if (r0 != r1) goto L31
            r0 = r6
            r5 = r0
            goto L33
        L31:
            r0 = 0
            r5 = r0
        L33:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.C5531s.m18716g(java.lang.String, byte):boolean");
    }

    /* renamed from: h */
    public static C5532a m18715h(byte[] bArr, int i, int i2) {
        C5537w c5537w = new C5537w(bArr, i, i2);
        c5537w.m18641l(8);
        int m18645h = c5537w.m18645h();
        int m18645h2 = c5537w.m18645h();
        c5537w.m18642k();
        return new C5532a(m18645h, m18645h2, c5537w.m18649d());
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0197  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x024f  */
    /* JADX WARN: Type inference failed for: r0v25, types: [boolean, int] */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.util.C5531s.C5533b m18714i(byte[] r16, int r17, int r18) {
        /*
            Method dump skipped, instructions count: 678
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.C5531s.m18714i(byte[], int, int):com.google.android.exoplayer2.util.s$b");
    }

    /* renamed from: j */
    private static void m18713j(C5537w c5537w, int i) {
        int i2 = 8;
        int i3 = 8;
        int i4 = 0;
        while (i4 < i) {
            int i5 = i2;
            if (i2 != 0) {
                i5 = ((c5537w.m18646g() + i3) + 256) % 256;
            }
            if (i5 != 0) {
                i3 = i5;
            }
            i4++;
            i2 = i5;
        }
    }

    /* renamed from: k */
    public static int m18712k(byte[] bArr, int i) {
        int i2;
        synchronized (f17919c) {
            int i3 = 0;
            int i4 = 0;
            while (i3 < i) {
                int m18719d = m18719d(bArr, i3, i);
                i3 = m18719d;
                if (m18719d < i) {
                    int[] iArr = f17920d;
                    if (iArr.length <= i4) {
                        f17920d = Arrays.copyOf(iArr, iArr.length * 2);
                    }
                    f17920d[i4] = m18719d;
                    i3 = m18719d + 3;
                    i4++;
                }
            }
            i2 = i - i4;
            int i5 = 0;
            int i6 = 0;
            for (int i7 = 0; i7 < i4; i7++) {
                int i8 = f17920d[i7] - i6;
                System.arraycopy(bArr, i6, bArr, i5, i8);
                int i9 = i5 + i8;
                int i10 = i9 + 1;
                bArr[i9] = (byte) 0;
                i5 = i10 + 1;
                bArr[i10] = (byte) 0;
                i6 += i8 + 3;
            }
            System.arraycopy(bArr, i6, bArr, i5, i2 - i5);
        }
        return i2;
    }
}
