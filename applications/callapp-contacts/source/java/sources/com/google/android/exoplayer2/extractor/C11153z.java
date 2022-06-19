package com.google.android.exoplayer2.extractor;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11628u;
/* renamed from: com.google.android.exoplayer2.extractor.z */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/z.class */
public final class C11153z {

    /* renamed from: com.google.android.exoplayer2.extractor.z$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/z$a.class */
    public static final class C11154a {

        /* renamed from: a */
        public final int f36517a;

        /* renamed from: b */
        public final int f36518b;

        /* renamed from: c */
        public final long[] f36519c;

        /* renamed from: d */
        public final int f36520d;

        /* renamed from: e */
        public final boolean f36521e;

        public C11154a(int i, int i2, long[] jArr, int i3, boolean z) {
            this.f36517a = i;
            this.f36518b = i2;
            this.f36519c = jArr;
            this.f36520d = i3;
            this.f36521e = z;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.z$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/z$b.class */
    public static final class C11155b {

        /* renamed from: a */
        public final String f36522a;

        /* renamed from: b */
        public final String[] f36523b;

        /* renamed from: c */
        public final int f36524c;

        public C11155b(String str, String[] strArr, int i) {
            this.f36522a = str;
            this.f36523b = strArr;
            this.f36524c = i;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.z$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/z$c.class */
    public static final class C11156c {

        /* renamed from: a */
        public final boolean f36525a;

        /* renamed from: b */
        public final int f36526b;

        /* renamed from: c */
        public final int f36527c;

        /* renamed from: d */
        public final int f36528d;

        public C11156c(boolean z, int i, int i2, int i3) {
            this.f36525a = z;
            this.f36526b = i;
            this.f36527c = i2;
            this.f36528d = i3;
        }
    }

    /* renamed from: com.google.android.exoplayer2.extractor.z$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/z$d.class */
    public static final class C11157d {

        /* renamed from: a */
        public final int f36529a;

        /* renamed from: b */
        public final int f36530b;

        /* renamed from: c */
        public final int f36531c;

        /* renamed from: d */
        public final int f36532d;

        /* renamed from: e */
        public final int f36533e;

        /* renamed from: f */
        public final int f36534f;

        /* renamed from: g */
        public final int f36535g;

        /* renamed from: h */
        public final int f36536h;

        /* renamed from: i */
        public final boolean f36537i;

        /* renamed from: j */
        public final byte[] f36538j;

        public C11157d(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, boolean z, byte[] bArr) {
            this.f36529a = i;
            this.f36530b = i2;
            this.f36531c = i3;
            this.f36532d = i4;
            this.f36533e = i5;
            this.f36534f = i6;
            this.f36535g = i7;
            this.f36536h = i8;
            this.f36537i = z;
            this.f36538j = bArr;
        }
    }

    private C11153z() {
    }

    /* renamed from: a */
    public static int m21382a(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    /* renamed from: a */
    public static C11155b m21378a(C11628u c11628u, boolean z, boolean z2) throws ParserException {
        if (z) {
            m21380a(3, c11628u, false);
        }
        String m19797f = c11628u.m19797f((int) c11628u.m19793i());
        int length = m19797f.length();
        long m19793i = c11628u.m19793i();
        String[] strArr = new String[(int) m19793i];
        int i = length + 11 + 4;
        for (int i2 = 0; i2 < m19793i; i2++) {
            strArr[i2] = c11628u.m19797f((int) c11628u.m19793i());
            i = i + 4 + strArr[i2].length();
        }
        if (!z2 || (c11628u.m19804c() & 1) != 0) {
            return new C11155b(m19797f, strArr, i + 1);
        }
        throw new ParserException("framing bit expected to be set");
    }

    /* renamed from: a */
    public static void m21381a(int i, C11152y c11152y) throws ParserException {
        int m21385a = c11152y.m21385a(6);
        for (int i2 = 0; i2 < m21385a + 1; i2++) {
            int m21385a2 = c11152y.m21385a(16);
            if (m21385a2 != 0) {
                C11617n.m19858b("VorbisUtil", "mapping type other than 0 not supported: ".concat(String.valueOf(m21385a2)));
            } else {
                int m21385a3 = c11152y.m21386a() ? c11152y.m21385a(4) + 1 : 1;
                if (c11152y.m21386a()) {
                    int m21385a4 = c11152y.m21385a(8);
                    for (int i3 = 0; i3 < m21385a4 + 1; i3++) {
                        int i4 = i - 1;
                        c11152y.m21383b(m21382a(i4));
                        c11152y.m21383b(m21382a(i4));
                    }
                }
                if (c11152y.m21385a(2) != 0) {
                    throw new ParserException("to reserved bits must be zero after mapping coupling steps");
                }
                if (m21385a3 > 1) {
                    for (int i5 = 0; i5 < i; i5++) {
                        c11152y.m21383b(4);
                    }
                }
                for (int i6 = 0; i6 < m21385a3; i6++) {
                    c11152y.m21383b(8);
                    c11152y.m21383b(8);
                    c11152y.m21383b(8);
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m21380a(int i, C11628u c11628u, boolean z) throws ParserException {
        if (c11628u.m19812a() < 7) {
            if (z) {
                return false;
            }
            throw new ParserException("too short header: " + c11628u.m19812a());
        } else if (c11628u.m19804c() != i) {
            if (z) {
                return false;
            }
            throw new ParserException("expected header type " + Integer.toHexString(i));
        } else if (c11628u.m19804c() == 118 && c11628u.m19804c() == 111 && c11628u.m19804c() == 114 && c11628u.m19804c() == 98 && c11628u.m19804c() == 105 && c11628u.m19804c() == 115) {
            return true;
        } else {
            if (!z) {
                throw new ParserException("expected characters 'vorbis'");
            }
            return false;
        }
    }

    /* renamed from: a */
    public static C11156c[] m21379a(C11152y c11152y) {
        int m21385a = c11152y.m21385a(6) + 1;
        C11156c[] c11156cArr = new C11156c[m21385a];
        for (int i = 0; i < m21385a; i++) {
            c11156cArr[i] = new C11156c(c11152y.m21386a(), c11152y.m21385a(16), c11152y.m21385a(16), c11152y.m21385a(8));
        }
        return c11156cArr;
    }

    /* renamed from: b */
    public static void m21377b(C11152y c11152y) throws ParserException {
        int m21385a = c11152y.m21385a(6);
        for (int i = 0; i < m21385a + 1; i++) {
            if (c11152y.m21385a(16) > 2) {
                throw new ParserException("residueType greater than 2 is not decodable");
            }
            c11152y.m21383b(24);
            c11152y.m21383b(24);
            c11152y.m21383b(24);
            int m21385a2 = c11152y.m21385a(6) + 1;
            c11152y.m21383b(8);
            int[] iArr = new int[m21385a2];
            for (int i2 = 0; i2 < m21385a2; i2++) {
                iArr[i2] = ((c11152y.m21386a() ? c11152y.m21385a(5) : 0) * 8) + c11152y.m21385a(3);
            }
            for (int i3 = 0; i3 < m21385a2; i3++) {
                for (int i4 = 0; i4 < 8; i4++) {
                    if ((iArr[i3] & (1 << i4)) != 0) {
                        c11152y.m21383b(8);
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public static void m21376c(C11152y c11152y) throws ParserException {
        int m21385a = c11152y.m21385a(6);
        for (int i = 0; i < m21385a + 1; i++) {
            int m21385a2 = c11152y.m21385a(16);
            if (m21385a2 == 0) {
                c11152y.m21383b(8);
                c11152y.m21383b(16);
                c11152y.m21383b(16);
                c11152y.m21383b(6);
                c11152y.m21383b(8);
                int m21385a3 = c11152y.m21385a(4);
                for (int i2 = 0; i2 < m21385a3 + 1; i2++) {
                    c11152y.m21383b(8);
                }
            } else if (m21385a2 != 1) {
                throw new ParserException("floor type greater than 1 not decodable: ".concat(String.valueOf(m21385a2)));
            } else {
                int m21385a4 = c11152y.m21385a(5);
                int i3 = -1;
                int[] iArr = new int[m21385a4];
                int i4 = 0;
                while (i4 < m21385a4) {
                    iArr[i4] = c11152y.m21385a(4);
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
                    iArr2[i7] = c11152y.m21385a(3) + 1;
                    int m21385a5 = c11152y.m21385a(2);
                    if (m21385a5 > 0) {
                        c11152y.m21383b(8);
                    }
                    for (int i8 = 0; i8 < (1 << m21385a5); i8++) {
                        c11152y.m21383b(8);
                    }
                }
                c11152y.m21383b(2);
                int m21385a6 = c11152y.m21385a(4);
                int i9 = 0;
                int i10 = 0;
                for (int i11 = 0; i11 < m21385a4; i11++) {
                    i9 += iArr2[iArr[i11]];
                    while (i10 < i9) {
                        c11152y.m21383b(m21385a6);
                        i10++;
                    }
                }
            }
        }
    }
}
