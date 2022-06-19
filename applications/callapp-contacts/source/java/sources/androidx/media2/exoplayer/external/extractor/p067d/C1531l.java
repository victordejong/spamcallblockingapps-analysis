package androidx.media2.exoplayer.external.extractor.p067d;

import androidx.media2.exoplayer.external.ParserException;
import androidx.media2.exoplayer.external.util.C2009j;
import androidx.media2.exoplayer.external.util.C2018p;
/* renamed from: androidx.media2.exoplayer.external.extractor.d.l */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/l.class */
final class C1531l {

    /* renamed from: androidx.media2.exoplayer.external.extractor.d.l$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/l$a.class */
    public static final class C1532a {

        /* renamed from: a */
        public final int f5899a;

        /* renamed from: b */
        public final int f5900b;

        /* renamed from: c */
        public final long[] f5901c;

        /* renamed from: d */
        public final int f5902d;

        /* renamed from: e */
        public final boolean f5903e;

        public C1532a(int i, int i2, long[] jArr, int i3, boolean z) {
            this.f5899a = i;
            this.f5900b = i2;
            this.f5901c = jArr;
            this.f5902d = i3;
            this.f5903e = z;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.d.l$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/l$b.class */
    public static final class C1533b {

        /* renamed from: a */
        public final String f5904a;

        /* renamed from: b */
        public final String[] f5905b;

        /* renamed from: c */
        public final int f5906c;

        public C1533b(String str, String[] strArr, int i) {
            this.f5904a = str;
            this.f5905b = strArr;
            this.f5906c = i;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.d.l$c */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/l$c.class */
    public static final class C1534c {

        /* renamed from: a */
        public final boolean f5907a;

        /* renamed from: b */
        public final int f5908b;

        /* renamed from: c */
        public final int f5909c;

        /* renamed from: d */
        public final int f5910d;

        public C1534c(boolean z, int i, int i2, int i3) {
            this.f5907a = z;
            this.f5908b = i;
            this.f5909c = i2;
            this.f5910d = i3;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.extractor.d.l$d */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/extractor/d/l$d.class */
    public static final class C1535d {

        /* renamed from: a */
        public final long f5911a;

        /* renamed from: b */
        public final int f5912b;

        /* renamed from: c */
        public final long f5913c;

        /* renamed from: d */
        public final int f5914d;

        /* renamed from: e */
        public final int f5915e;

        /* renamed from: f */
        public final int f5916f;

        /* renamed from: g */
        public final int f5917g;

        /* renamed from: h */
        public final int f5918h;

        /* renamed from: i */
        public final boolean f5919i;

        /* renamed from: j */
        public final byte[] f5920j;

        public C1535d(long j, int i, long j2, int i2, int i3, int i4, int i5, int i6, boolean z, byte[] bArr) {
            this.f5911a = j;
            this.f5912b = i;
            this.f5913c = j2;
            this.f5914d = i2;
            this.f5915e = i3;
            this.f5916f = i4;
            this.f5917g = i5;
            this.f5918h = i6;
            this.f5919i = z;
            this.f5920j = bArr;
        }
    }

    private C1531l() {
    }

    /* renamed from: a */
    public static int m42736a(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    /* renamed from: a */
    public static void m42735a(int i, C1528j c1528j) throws ParserException {
        int m42744a = c1528j.m42744a(6);
        for (int i2 = 0; i2 < m42744a + 1; i2++) {
            int m42744a2 = c1528j.m42744a(16);
            if (m42744a2 != 0) {
                StringBuilder sb = new StringBuilder(52);
                sb.append("mapping type other than 0 not supported: ");
                sb.append(m42744a2);
                C2009j.m41580b("VorbisUtil", sb.toString());
            } else {
                int m42744a3 = c1528j.m42745a() ? c1528j.m42744a(4) + 1 : 1;
                if (c1528j.m42745a()) {
                    int m42744a4 = c1528j.m42744a(8);
                    for (int i3 = 0; i3 < m42744a4 + 1; i3++) {
                        int i4 = i - 1;
                        c1528j.m42742b(m42736a(i4));
                        c1528j.m42742b(m42736a(i4));
                    }
                }
                if (c1528j.m42744a(2) != 0) {
                    throw new ParserException("to reserved bits must be zero after mapping coupling steps");
                }
                if (m42744a3 > 1) {
                    for (int i5 = 0; i5 < i; i5++) {
                        c1528j.m42742b(4);
                    }
                }
                for (int i6 = 0; i6 < m42744a3; i6++) {
                    c1528j.m42742b(8);
                    c1528j.m42742b(8);
                    c1528j.m42742b(8);
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m42734a(int i, C2018p c2018p, boolean z) throws ParserException {
        if (c2018p.m41536b() < 7) {
            if (z) {
                return false;
            }
            int m41536b = c2018p.m41536b();
            StringBuilder sb = new StringBuilder(29);
            sb.append("too short header: ");
            sb.append(m41536b);
            throw new ParserException(sb.toString());
        } else if (c2018p.m41534c() != i) {
            if (z) {
                return false;
            }
            String valueOf = String.valueOf(Integer.toHexString(i));
            throw new ParserException(valueOf.length() != 0 ? "expected header type ".concat(valueOf) : new String("expected header type "));
        } else if (c2018p.m41534c() == 118 && c2018p.m41534c() == 111 && c2018p.m41534c() == 114 && c2018p.m41534c() == 98 && c2018p.m41534c() == 105 && c2018p.m41534c() == 115) {
            return true;
        } else {
            if (!z) {
                throw new ParserException("expected characters 'vorbis'");
            }
            return false;
        }
    }

    /* renamed from: a */
    public static C1534c[] m42733a(C1528j c1528j) {
        int m42744a = c1528j.m42744a(6) + 1;
        C1534c[] c1534cArr = new C1534c[m42744a];
        for (int i = 0; i < m42744a; i++) {
            c1534cArr[i] = new C1534c(c1528j.m42745a(), c1528j.m42744a(16), c1528j.m42744a(16), c1528j.m42744a(8));
        }
        return c1534cArr;
    }

    /* renamed from: b */
    public static void m42732b(C1528j c1528j) throws ParserException {
        int m42744a = c1528j.m42744a(6);
        for (int i = 0; i < m42744a + 1; i++) {
            if (c1528j.m42744a(16) > 2) {
                throw new ParserException("residueType greater than 2 is not decodable");
            }
            c1528j.m42742b(24);
            c1528j.m42742b(24);
            c1528j.m42742b(24);
            int m42744a2 = c1528j.m42744a(6) + 1;
            c1528j.m42742b(8);
            int[] iArr = new int[m42744a2];
            for (int i2 = 0; i2 < m42744a2; i2++) {
                iArr[i2] = ((c1528j.m42745a() ? c1528j.m42744a(5) : 0) * 8) + c1528j.m42744a(3);
            }
            for (int i3 = 0; i3 < m42744a2; i3++) {
                for (int i4 = 0; i4 < 8; i4++) {
                    if ((iArr[i3] & (1 << i4)) != 0) {
                        c1528j.m42742b(8);
                    }
                }
            }
        }
    }

    /* renamed from: c */
    public static void m42731c(C1528j c1528j) throws ParserException {
        int m42744a = c1528j.m42744a(6);
        for (int i = 0; i < m42744a + 1; i++) {
            int m42744a2 = c1528j.m42744a(16);
            if (m42744a2 == 0) {
                c1528j.m42742b(8);
                c1528j.m42742b(16);
                c1528j.m42742b(16);
                c1528j.m42742b(6);
                c1528j.m42742b(8);
                int m42744a3 = c1528j.m42744a(4);
                for (int i2 = 0; i2 < m42744a3 + 1; i2++) {
                    c1528j.m42742b(8);
                }
            } else if (m42744a2 != 1) {
                StringBuilder sb = new StringBuilder(52);
                sb.append("floor type greater than 1 not decodable: ");
                sb.append(m42744a2);
                throw new ParserException(sb.toString());
            } else {
                int m42744a4 = c1528j.m42744a(5);
                int i3 = -1;
                int[] iArr = new int[m42744a4];
                int i4 = 0;
                while (i4 < m42744a4) {
                    iArr[i4] = c1528j.m42744a(4);
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
                    iArr2[i7] = c1528j.m42744a(3) + 1;
                    int m42744a5 = c1528j.m42744a(2);
                    if (m42744a5 > 0) {
                        c1528j.m42742b(8);
                    }
                    for (int i8 = 0; i8 < (1 << m42744a5); i8++) {
                        c1528j.m42742b(8);
                    }
                }
                c1528j.m42742b(2);
                int m42744a6 = c1528j.m42744a(4);
                int i9 = 0;
                int i10 = 0;
                for (int i11 = 0; i11 < m42744a4; i11++) {
                    i9 += iArr2[iArr[i11]];
                    while (i10 < i9) {
                        c1528j.m42742b(m42744a6);
                        i10++;
                    }
                }
            }
        }
    }
}
