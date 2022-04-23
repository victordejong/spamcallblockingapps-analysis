package p012b.p076s.p078b.p079a.p086s0.p092w;

import androidx.media2.exoplayer.external.ParserException;
import java.util.Arrays;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p080a1.C1184p;
/* renamed from: b.s.b.a.s0.w.l */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/l.class */
public final class C1439l {

    /* renamed from: b.s.b.a.s0.w.l$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/l$a.class */
    public static final class C1440a {
        public C1440a(int i, int i2, long[] jArr, int i3, boolean z) {
        }
    }

    /* renamed from: b.s.b.a.s0.w.l$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/l$b.class */
    public static final class C1441b {
        public C1441b(String str, String[] strArr, int i) {
        }
    }

    /* renamed from: b.s.b.a.s0.w.l$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/l$c.class */
    public static final class C1442c {

        /* renamed from: a */
        public final boolean f5801a;

        public C1442c(boolean z, int i, int i2, int i3) {
            this.f5801a = z;
        }
    }

    /* renamed from: b.s.b.a.s0.w.l$d */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/w/l$d.class */
    public static final class C1443d {

        /* renamed from: a */
        public final int f5802a;

        /* renamed from: b */
        public final long f5803b;

        /* renamed from: c */
        public final int f5804c;

        /* renamed from: d */
        public final int f5805d;

        /* renamed from: e */
        public final int f5806e;

        /* renamed from: f */
        public final byte[] f5807f;

        public C1443d(long j, int i, long j2, int i2, int i3, int i4, int i5, int i6, boolean z, byte[] bArr) {
            this.f5802a = i;
            this.f5803b = j2;
            this.f5804c = i3;
            this.f5805d = i5;
            this.f5806e = i6;
            this.f5807f = bArr;
        }
    }

    /* renamed from: a */
    public static int m33305a(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    /* renamed from: a */
    public static long m33302a(long j, long j2) {
        double d = j2;
        Double.isNaN(d);
        return (long) Math.floor(Math.pow(j, 1.0d / d));
    }

    /* renamed from: a */
    public static C1440a m33299a(C1436j jVar) throws ParserException {
        if (jVar.m33318a(24) == 5653314) {
            int a = jVar.m33318a(16);
            int a2 = jVar.m33318a(24);
            long[] jArr = new long[a2];
            boolean c = jVar.m33315c();
            long j = 0;
            if (!c) {
                boolean c2 = jVar.m33315c();
                for (int i = 0; i < a2; i++) {
                    if (!c2) {
                        jArr[i] = jVar.m33318a(5) + 1;
                    } else if (jVar.m33315c()) {
                        jArr[i] = jVar.m33318a(5) + 1;
                    } else {
                        jArr[i] = 0;
                    }
                }
            } else {
                int a3 = jVar.m33318a(5) + 1;
                int i2 = 0;
                while (i2 < a2) {
                    int a4 = jVar.m33318a(m33305a(a2 - i2));
                    for (int i3 = 0; i3 < a4 && i2 < a2; i3++) {
                        jArr[i2] = a3;
                        i2++;
                    }
                    a3++;
                }
            }
            int a5 = jVar.m33318a(4);
            if (a5 <= 2) {
                if (a5 == 1 || a5 == 2) {
                    jVar.m33316b(32);
                    jVar.m33316b(32);
                    int a6 = jVar.m33318a(4);
                    jVar.m33316b(1);
                    if (a5 != 1) {
                        j = a2 * a;
                    } else if (a != 0) {
                        j = m33302a(a2, a);
                    }
                    jVar.m33316b((int) (j * (a6 + 1)));
                }
                return new C1440a(a, a2, jArr, a5, c);
            }
            StringBuilder sb = new StringBuilder(53);
            sb.append("lookup type greater than 2 not decodable: ");
            sb.append(a5);
            throw new ParserException(sb.toString());
        }
        int b = jVar.m33317b();
        StringBuilder sb2 = new StringBuilder(66);
        sb2.append("expected code book to start with [0x56, 0x43, 0x42] at ");
        sb2.append(b);
        throw new ParserException(sb2.toString());
    }

    /* renamed from: a */
    public static C1441b m33301a(C1184p pVar) throws ParserException {
        m33304a(3, pVar, false);
        String b = pVar.m34364b((int) pVar.m34351k());
        int length = b.length();
        long k = pVar.m34351k();
        String[] strArr = new String[(int) k];
        int i = 11 + length + 4;
        for (int i2 = 0; i2 < k; i2++) {
            strArr[i2] = pVar.m34364b((int) pVar.m34351k());
            i = i + 4 + strArr[i2].length();
        }
        if ((pVar.m34344r() & 1) != 0) {
            return new C1441b(b, strArr, i + 1);
        }
        throw new ParserException("framing bit expected to be set");
    }

    /* renamed from: a */
    public static void m33303a(int i, C1436j jVar) throws ParserException {
        int a = jVar.m33318a(6);
        for (int i2 = 0; i2 < a + 1; i2++) {
            int a2 = jVar.m33318a(16);
            if (a2 != 0) {
                StringBuilder sb = new StringBuilder(52);
                sb.append("mapping type other than 0 not supported: ");
                sb.append(a2);
                C1175j.m34417b("VorbisUtil", sb.toString());
            } else {
                int a3 = jVar.m33315c() ? jVar.m33318a(4) + 1 : 1;
                if (jVar.m33315c()) {
                    int a4 = jVar.m33318a(8);
                    for (int i3 = 0; i3 < a4 + 1; i3++) {
                        int i4 = i - 1;
                        jVar.m33316b(m33305a(i4));
                        jVar.m33316b(m33305a(i4));
                    }
                }
                if (jVar.m33318a(2) == 0) {
                    if (a3 > 1) {
                        for (int i5 = 0; i5 < i; i5++) {
                            jVar.m33316b(4);
                        }
                    }
                    for (int i6 = 0; i6 < a3; i6++) {
                        jVar.m33316b(8);
                        jVar.m33316b(8);
                        jVar.m33316b(8);
                    }
                } else {
                    throw new ParserException("to reserved bits must be zero after mapping coupling steps");
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m33304a(int i, C1184p pVar, boolean z) throws ParserException {
        if (pVar.m34372a() < 7) {
            if (z) {
                return false;
            }
            int a = pVar.m34372a();
            StringBuilder sb = new StringBuilder(29);
            sb.append("too short header: ");
            sb.append(a);
            throw new ParserException(sb.toString());
        } else if (pVar.m34344r() != i) {
            if (z) {
                return false;
            }
            String valueOf = String.valueOf(Integer.toHexString(i));
            throw new ParserException(valueOf.length() != 0 ? "expected header type ".concat(valueOf) : new String("expected header type "));
        } else if (pVar.m34344r() == 118 && pVar.m34344r() == 111 && pVar.m34344r() == 114 && pVar.m34344r() == 98 && pVar.m34344r() == 105 && pVar.m34344r() == 115) {
            return true;
        } else {
            if (z) {
                return false;
            }
            throw new ParserException("expected characters 'vorbis'");
        }
    }

    /* renamed from: a */
    public static C1442c[] m33300a(C1184p pVar, int i) throws ParserException {
        m33304a(5, pVar, false);
        int r = pVar.m34344r();
        C1436j jVar = new C1436j(pVar.f4738a);
        jVar.m33316b(pVar.m34363c() * 8);
        for (int i2 = 0; i2 < r + 1; i2++) {
            m33299a(jVar);
        }
        int a = jVar.m33318a(6);
        for (int i3 = 0; i3 < a + 1; i3++) {
            if (jVar.m33318a(16) != 0) {
                throw new ParserException("placeholder of time domain transforms not zeroed out");
            }
        }
        m33297b(jVar);
        m33295d(jVar);
        m33303a(i, jVar);
        C1442c[] c = m33296c(jVar);
        if (jVar.m33315c()) {
            return c;
        }
        throw new ParserException("framing bit after modes not set as expected");
    }

    /* renamed from: b */
    public static C1443d m33298b(C1184p pVar) throws ParserException {
        m33304a(1, pVar, false);
        long k = pVar.m34351k();
        int r = pVar.m34344r();
        long k2 = pVar.m34351k();
        int i = pVar.m34353i();
        int i2 = pVar.m34353i();
        int i3 = pVar.m34353i();
        int r2 = pVar.m34344r();
        return new C1443d(k, r, k2, i, i2, i3, (int) Math.pow(2.0d, r2 & 15), (int) Math.pow(2.0d, (r2 & 240) >> 4), (pVar.m34344r() & 1) > 0, Arrays.copyOf(pVar.f4738a, pVar.m34361d()));
    }

    /* renamed from: b */
    public static void m33297b(C1436j jVar) throws ParserException {
        int a = jVar.m33318a(6);
        for (int i = 0; i < a + 1; i++) {
            int a2 = jVar.m33318a(16);
            if (a2 == 0) {
                jVar.m33316b(8);
                jVar.m33316b(16);
                jVar.m33316b(16);
                jVar.m33316b(6);
                jVar.m33316b(8);
                int a3 = jVar.m33318a(4);
                for (int i2 = 0; i2 < a3 + 1; i2++) {
                    jVar.m33316b(8);
                }
            } else if (a2 == 1) {
                int a4 = jVar.m33318a(5);
                int i3 = -1;
                int[] iArr = new int[a4];
                for (int i4 = 0; i4 < a4; i4++) {
                    iArr[i4] = jVar.m33318a(4);
                    i3 = i3;
                    if (iArr[i4] > i3) {
                        i3 = iArr[i4];
                    }
                }
                int i5 = i3 + 1;
                int[] iArr2 = new int[i5];
                for (int i6 = 0; i6 < i5; i6++) {
                    iArr2[i6] = jVar.m33318a(3) + 1;
                    int a5 = jVar.m33318a(2);
                    if (a5 > 0) {
                        jVar.m33316b(8);
                    }
                    for (int i7 = 0; i7 < (1 << a5); i7++) {
                        jVar.m33316b(8);
                    }
                }
                jVar.m33316b(2);
                int a6 = jVar.m33318a(4);
                int i8 = 0;
                int i9 = 0;
                for (int i10 = 0; i10 < a4; i10++) {
                    i8 += iArr2[iArr[i10]];
                    while (i9 < i8) {
                        jVar.m33316b(a6);
                        i9++;
                    }
                }
            } else {
                StringBuilder sb = new StringBuilder(52);
                sb.append("floor type greater than 1 not decodable: ");
                sb.append(a2);
                throw new ParserException(sb.toString());
            }
        }
    }

    /* renamed from: c */
    public static C1442c[] m33296c(C1436j jVar) {
        int a = jVar.m33318a(6) + 1;
        C1442c[] cVarArr = new C1442c[a];
        for (int i = 0; i < a; i++) {
            cVarArr[i] = new C1442c(jVar.m33315c(), jVar.m33318a(16), jVar.m33318a(16), jVar.m33318a(8));
        }
        return cVarArr;
    }

    /* renamed from: d */
    public static void m33295d(C1436j jVar) throws ParserException {
        int a = jVar.m33318a(6);
        for (int i = 0; i < a + 1; i++) {
            if (jVar.m33318a(16) <= 2) {
                jVar.m33316b(24);
                jVar.m33316b(24);
                jVar.m33316b(24);
                int a2 = jVar.m33318a(6) + 1;
                jVar.m33316b(8);
                int[] iArr = new int[a2];
                for (int i2 = 0; i2 < a2; i2++) {
                    iArr[i2] = ((jVar.m33315c() ? jVar.m33318a(5) : 0) * 8) + jVar.m33318a(3);
                }
                for (int i3 = 0; i3 < a2; i3++) {
                    for (int i4 = 0; i4 < 8; i4++) {
                        if ((iArr[i3] & (1 << i4)) != 0) {
                            jVar.m33316b(8);
                        }
                    }
                }
            } else {
                throw new ParserException("residueType greater than 2 is not decodable");
            }
        }
    }
}
