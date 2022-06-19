package com.google.android.exoplayer2.p243c1;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.C5526o;
import com.google.android.exoplayer2.util.C5536v;
import java.util.Arrays;
/* renamed from: com.google.android.exoplayer2.c1.x */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/x.class */
public final class C4999x {

    /* renamed from: com.google.android.exoplayer2.c1.x$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/x$a.class */
    public static final class C5000a {

        /* renamed from: a */
        public final int f15533a;

        /* renamed from: b */
        public final int f15534b;

        /* renamed from: c */
        public final long[] f15535c;

        /* renamed from: d */
        public final int f15536d;

        /* renamed from: e */
        public final boolean f15537e;

        public C5000a(int i, int i2, long[] jArr, int i3, boolean z) {
            this.f15533a = i;
            this.f15534b = i2;
            this.f15535c = jArr;
            this.f15536d = i3;
            this.f15537e = z;
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.x$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/x$b.class */
    public static final class C5001b {

        /* renamed from: a */
        public final String f15538a;

        /* renamed from: b */
        public final String[] f15539b;

        /* renamed from: c */
        public final int f15540c;

        public C5001b(String str, String[] strArr, int i) {
            this.f15538a = str;
            this.f15539b = strArr;
            this.f15540c = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.x$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/x$c.class */
    public static final class C5002c {

        /* renamed from: a */
        public final boolean f15541a;

        /* renamed from: b */
        public final int f15542b;

        /* renamed from: c */
        public final int f15543c;

        /* renamed from: d */
        public final int f15544d;

        public C5002c(boolean z, int i, int i2, int i3) {
            this.f15541a = z;
            this.f15542b = i;
            this.f15543c = i2;
            this.f15544d = i3;
        }
    }

    /* renamed from: com.google.android.exoplayer2.c1.x$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/c1/x$d.class */
    public static final class C5003d {

        /* renamed from: a */
        public final long f15545a;

        /* renamed from: b */
        public final int f15546b;

        /* renamed from: c */
        public final long f15547c;

        /* renamed from: d */
        public final int f15548d;

        /* renamed from: e */
        public final int f15549e;

        /* renamed from: f */
        public final int f15550f;

        /* renamed from: g */
        public final int f15551g;

        /* renamed from: h */
        public final int f15552h;

        /* renamed from: i */
        public final boolean f15553i;

        /* renamed from: j */
        public final byte[] f15554j;

        public C5003d(long j, int i, long j2, int i2, int i3, int i4, int i5, int i6, boolean z, byte[] bArr) {
            this.f15545a = j;
            this.f15546b = i;
            this.f15547c = j2;
            this.f15548d = i2;
            this.f15549e = i3;
            this.f15550f = i4;
            this.f15551g = i5;
            this.f15552h = i6;
            this.f15553i = z;
            this.f15554j = bArr;
        }
    }

    /* renamed from: a */
    public static int m20959a(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    /* renamed from: b */
    private static long m20958b(long j, long j2) {
        return (long) Math.floor(Math.pow(j, 1.0d / j2));
    }

    /* JADX WARN: Type inference failed for: r0v39, types: [long] */
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    /* renamed from: c */
    private static C5000a m20957c(C4998w c4998w) {
        if (c4998w.m20961d(24) != 5653314) {
            throw new ParserException("expected code book to start with [0x56, 0x43, 0x42] at " + c4998w.m20963b());
        }
        int m20961d = c4998w.m20961d(16);
        int m20961d2 = c4998w.m20961d(24);
        long[] jArr = new long[m20961d2];
        boolean m20962c = c4998w.m20962c();
        char c = 0;
        if (!m20962c) {
            boolean m20962c2 = c4998w.m20962c();
            for (int i = 0; i < m20961d2; i++) {
                if (!m20962c2) {
                    jArr[i] = c4998w.m20961d(5) + 1;
                } else if (c4998w.m20962c()) {
                    jArr[i] = c4998w.m20961d(5) + 1;
                } else {
                    jArr[i] = 0;
                }
            }
        } else {
            int m20961d3 = c4998w.m20961d(5) + 1;
            int i2 = 0;
            while (i2 < m20961d2) {
                int m20961d4 = c4998w.m20961d(m20959a(m20961d2 - i2));
                for (int i3 = 0; i3 < m20961d4 && i2 < m20961d2; i3++) {
                    jArr[i2] = m20961d3;
                    i2++;
                }
                m20961d3++;
            }
        }
        int m20961d5 = c4998w.m20961d(4);
        if (m20961d5 > 2) {
            throw new ParserException("lookup type greater than 2 not decodable: " + m20961d5);
        }
        if (m20961d5 == 1 || m20961d5 == 2) {
            c4998w.m20960e(32);
            c4998w.m20960e(32);
            int m20961d6 = c4998w.m20961d(4);
            c4998w.m20960e(1);
            if (m20961d5 != 1) {
                c = m20961d2 * m20961d;
            } else if (m20961d != 0) {
                c = m20958b(m20961d2, m20961d);
            }
            c4998w.m20960e((int) (c * (m20961d6 + 1)));
        }
        return new C5000a(m20961d, m20961d2, jArr, m20961d5, m20962c);
    }

    /* renamed from: d */
    private static void m20956d(C4998w c4998w) {
        int m20961d = c4998w.m20961d(6);
        for (int i = 0; i < m20961d + 1; i++) {
            int m20961d2 = c4998w.m20961d(16);
            if (m20961d2 == 0) {
                c4998w.m20960e(8);
                c4998w.m20960e(16);
                c4998w.m20960e(16);
                c4998w.m20960e(6);
                c4998w.m20960e(8);
                int m20961d3 = c4998w.m20961d(4);
                for (int i2 = 0; i2 < m20961d3 + 1; i2++) {
                    c4998w.m20960e(8);
                }
            } else if (m20961d2 != 1) {
                throw new ParserException("floor type greater than 1 not decodable: " + m20961d2);
            } else {
                int m20961d4 = c4998w.m20961d(5);
                int i3 = -1;
                int[] iArr = new int[m20961d4];
                int i4 = 0;
                while (i4 < m20961d4) {
                    iArr[i4] = c4998w.m20961d(4);
                    int i5 = i3;
                    if (iArr[i4] > i3) {
                        i5 = iArr[i4];
                    }
                    i4++;
                    i3 = i5;
                }
                int i6 = i3 + 1;
                int[] iArr2 = new int[i6];
                for (int i7 = 0; i7 < i6; i7++) {
                    iArr2[i7] = c4998w.m20961d(3) + 1;
                    int m20961d5 = c4998w.m20961d(2);
                    if (m20961d5 > 0) {
                        c4998w.m20960e(8);
                    }
                    for (int i8 = 0; i8 < (1 << m20961d5); i8++) {
                        c4998w.m20960e(8);
                    }
                }
                c4998w.m20960e(2);
                int m20961d6 = c4998w.m20961d(4);
                int i9 = 0;
                int i10 = 0;
                for (int i11 = 0; i11 < m20961d4; i11++) {
                    i9 += iArr2[iArr[i11]];
                    while (i10 < i9) {
                        c4998w.m20960e(m20961d6);
                        i10++;
                    }
                }
            }
        }
    }

    /* renamed from: e */
    private static void m20955e(int i, C4998w c4998w) {
        int m20961d = c4998w.m20961d(6);
        for (int i2 = 0; i2 < m20961d + 1; i2++) {
            int m20961d2 = c4998w.m20961d(16);
            if (m20961d2 != 0) {
                C5526o.m18745c("VorbisUtil", "mapping type other than 0 not supported: " + m20961d2);
            } else {
                int m20961d3 = c4998w.m20962c() ? c4998w.m20961d(4) + 1 : 1;
                if (c4998w.m20962c()) {
                    int m20961d4 = c4998w.m20961d(8);
                    for (int i3 = 0; i3 < m20961d4 + 1; i3++) {
                        int i4 = i - 1;
                        c4998w.m20960e(m20959a(i4));
                        c4998w.m20960e(m20959a(i4));
                    }
                }
                if (c4998w.m20961d(2) != 0) {
                    throw new ParserException("to reserved bits must be zero after mapping coupling steps");
                }
                if (m20961d3 > 1) {
                    for (int i5 = 0; i5 < i; i5++) {
                        c4998w.m20960e(4);
                    }
                }
                for (int i6 = 0; i6 < m20961d3; i6++) {
                    c4998w.m20960e(8);
                    c4998w.m20960e(8);
                    c4998w.m20960e(8);
                }
            }
        }
    }

    /* renamed from: f */
    private static C5002c[] m20954f(C4998w c4998w) {
        int m20961d = c4998w.m20961d(6) + 1;
        C5002c[] c5002cArr = new C5002c[m20961d];
        for (int i = 0; i < m20961d; i++) {
            c5002cArr[i] = new C5002c(c4998w.m20962c(), c4998w.m20961d(16), c4998w.m20961d(16), c4998w.m20961d(8));
        }
        return c5002cArr;
    }

    /* renamed from: g */
    private static void m20953g(C4998w c4998w) {
        int m20961d = c4998w.m20961d(6);
        for (int i = 0; i < m20961d + 1; i++) {
            if (c4998w.m20961d(16) > 2) {
                throw new ParserException("residueType greater than 2 is not decodable");
            }
            c4998w.m20960e(24);
            c4998w.m20960e(24);
            c4998w.m20960e(24);
            int m20961d2 = c4998w.m20961d(6) + 1;
            c4998w.m20960e(8);
            int[] iArr = new int[m20961d2];
            for (int i2 = 0; i2 < m20961d2; i2++) {
                iArr[i2] = ((c4998w.m20962c() ? c4998w.m20961d(5) : 0) * 8) + c4998w.m20961d(3);
            }
            for (int i3 = 0; i3 < m20961d2; i3++) {
                for (int i4 = 0; i4 < 8; i4++) {
                    if ((iArr[i3] & (1 << i4)) != 0) {
                        c4998w.m20960e(8);
                    }
                }
            }
        }
    }

    /* renamed from: h */
    public static C5001b m20952h(C5536v c5536v) {
        return m20951i(c5536v, true, true);
    }

    /* renamed from: i */
    public static C5001b m20951i(C5536v c5536v, boolean z, boolean z2) {
        if (z) {
            m20948l(3, c5536v, false);
        }
        String m18656w = c5536v.m18656w((int) c5536v.m18663p());
        int length = m18656w.length();
        long m18663p = c5536v.m18663p();
        String[] strArr = new String[(int) m18663p];
        int i = 11 + length + 4;
        for (int i2 = 0; i2 < m18663p; i2++) {
            strArr[i2] = c5536v.m18656w((int) c5536v.m18663p());
            i = i + 4 + strArr[i2].length();
        }
        if (!z2 || (c5536v.m18653z() & 1) != 0) {
            return new C5001b(m18656w, strArr, i + 1);
        }
        throw new ParserException("framing bit expected to be set");
    }

    /* renamed from: j */
    public static C5003d m20950j(C5536v c5536v) {
        m20948l(1, c5536v, false);
        long m18663p = c5536v.m18663p();
        int m18653z = c5536v.m18653z();
        long m18663p2 = c5536v.m18663p();
        int m18665n = c5536v.m18665n();
        int m18665n2 = c5536v.m18665n();
        int m18665n3 = c5536v.m18665n();
        int m18653z2 = c5536v.m18653z();
        return new C5003d(m18663p, m18653z, m18663p2, m18665n, m18665n2, m18665n3, (int) Math.pow(2.0d, m18653z2 & 15), (int) Math.pow(2.0d, (m18653z2 & 240) >> 4), (c5536v.m18653z() & 1) > 0, Arrays.copyOf(c5536v.f17941a, c5536v.m18675d()));
    }

    /* renamed from: k */
    public static C5002c[] m20949k(C5536v c5536v, int i) {
        m20948l(5, c5536v, false);
        int m18653z = c5536v.m18653z();
        C4998w c4998w = new C4998w(c5536v.f17941a);
        c4998w.m20960e(c5536v.m18676c() * 8);
        for (int i2 = 0; i2 < m18653z + 1; i2++) {
            m20957c(c4998w);
        }
        int m20961d = c4998w.m20961d(6);
        for (int i3 = 0; i3 < m20961d + 1; i3++) {
            if (c4998w.m20961d(16) != 0) {
                throw new ParserException("placeholder of time domain transforms not zeroed out");
            }
        }
        m20956d(c4998w);
        m20953g(c4998w);
        m20955e(i, c4998w);
        C5002c[] m20954f = m20954f(c4998w);
        if (c4998w.m20962c()) {
            return m20954f;
        }
        throw new ParserException("framing bit after modes not set as expected");
    }

    /* renamed from: l */
    public static boolean m20948l(int i, C5536v c5536v, boolean z) {
        if (c5536v.m18678a() < 7) {
            if (z) {
                return false;
            }
            throw new ParserException("too short header: " + c5536v.m18678a());
        } else if (c5536v.m18653z() != i) {
            if (z) {
                return false;
            }
            throw new ParserException("expected header type " + Integer.toHexString(i));
        } else if (c5536v.m18653z() == 118 && c5536v.m18653z() == 111 && c5536v.m18653z() == 114 && c5536v.m18653z() == 98 && c5536v.m18653z() == 105 && c5536v.m18653z() == 115) {
            return true;
        } else {
            if (!z) {
                throw new ParserException("expected characters 'vorbis'");
            }
            return false;
        }
    }
}
