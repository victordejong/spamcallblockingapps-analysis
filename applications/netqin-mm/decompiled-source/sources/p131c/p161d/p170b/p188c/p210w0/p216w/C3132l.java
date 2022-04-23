package p131c.p161d.p170b.p188c.p210w0.p216w;

import com.google.android.exoplayer2.ParserException;
import java.util.Arrays;
import p131c.p161d.p170b.p188c.p203g1.C2894o;
import p131c.p161d.p170b.p188c.p203g1.C2904v;
/* renamed from: c.d.b.c.w0.w.l */
/* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/l.class */
public final class C3132l {

    /* renamed from: c.d.b.c.w0.w.l$a */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/l$a.class */
    public static final class C3133a {
        public C3133a(int i, int i2, long[] jArr, int i3, boolean z) {
        }
    }

    /* renamed from: c.d.b.c.w0.w.l$b */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/l$b.class */
    public static final class C3134b {
        public C3134b(String str, String[] strArr, int i) {
        }
    }

    /* renamed from: c.d.b.c.w0.w.l$c */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/l$c.class */
    public static final class C3135c {

        /* renamed from: a */
        public final boolean f11441a;

        public C3135c(boolean z, int i, int i2, int i3) {
            this.f11441a = z;
        }
    }

    /* renamed from: c.d.b.c.w0.w.l$d */
    /* loaded from: classes-dex2jar.jar:c/d/b/c/w0/w/l$d.class */
    public static final class C3136d {

        /* renamed from: a */
        public final int f11442a;

        /* renamed from: b */
        public final long f11443b;

        /* renamed from: c */
        public final int f11444c;

        /* renamed from: d */
        public final int f11445d;

        /* renamed from: e */
        public final int f11446e;

        /* renamed from: f */
        public final byte[] f11447f;

        public C3136d(long j, int i, long j2, int i2, int i3, int i4, int i5, int i6, boolean z, byte[] bArr) {
            this.f11442a = i;
            this.f11443b = j2;
            this.f11444c = i3;
            this.f11445d = i5;
            this.f11446e = i6;
            this.f11447f = bArr;
        }
    }

    /* renamed from: a */
    public static int m27736a(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    /* renamed from: a */
    public static long m27733a(long j, long j2) {
        double d = j2;
        Double.isNaN(d);
        return (long) Math.floor(Math.pow(j, 1.0d / d));
    }

    /* renamed from: a */
    public static C3133a m27730a(C3129j jVar) throws ParserException {
        if (jVar.m27749a(24) == 5653314) {
            int a = jVar.m27749a(16);
            int a2 = jVar.m27749a(24);
            long[] jArr = new long[a2];
            boolean c = jVar.m27746c();
            long j = 0;
            if (!c) {
                boolean c2 = jVar.m27746c();
                for (int i = 0; i < a2; i++) {
                    if (!c2) {
                        jArr[i] = jVar.m27749a(5) + 1;
                    } else if (jVar.m27746c()) {
                        jArr[i] = jVar.m27749a(5) + 1;
                    } else {
                        jArr[i] = 0;
                    }
                }
            } else {
                int a3 = jVar.m27749a(5) + 1;
                int i2 = 0;
                while (i2 < a2) {
                    int a4 = jVar.m27749a(m27736a(a2 - i2));
                    for (int i3 = 0; i3 < a4 && i2 < a2; i3++) {
                        jArr[i2] = a3;
                        i2++;
                    }
                    a3++;
                }
            }
            int a5 = jVar.m27749a(4);
            if (a5 <= 2) {
                if (a5 == 1 || a5 == 2) {
                    jVar.m27747b(32);
                    jVar.m27747b(32);
                    int a6 = jVar.m27749a(4);
                    jVar.m27747b(1);
                    if (a5 != 1) {
                        j = a2 * a;
                    } else if (a != 0) {
                        j = m27733a(a2, a);
                    }
                    jVar.m27747b((int) (j * (a6 + 1)));
                }
                return new C3133a(a, a2, jArr, a5, c);
            }
            throw new ParserException("lookup type greater than 2 not decodable: " + a5);
        }
        throw new ParserException("expected code book to start with [0x56, 0x43, 0x42] at " + jVar.m27748b());
    }

    /* renamed from: a */
    public static C3134b m27732a(C2904v vVar) throws ParserException {
        m27735a(3, vVar, false);
        String b = vVar.m28544b((int) vVar.m28531k());
        int length = b.length();
        long k = vVar.m28531k();
        String[] strArr = new String[(int) k];
        int i = 11 + length + 4;
        for (int i2 = 0; i2 < k; i2++) {
            strArr[i2] = vVar.m28544b((int) vVar.m28531k());
            i = i + 4 + strArr[i2].length();
        }
        if ((vVar.m28524r() & 1) != 0) {
            return new C3134b(b, strArr, i + 1);
        }
        throw new ParserException("framing bit expected to be set");
    }

    /* renamed from: a */
    public static void m27734a(int i, C3129j jVar) throws ParserException {
        int a = jVar.m27749a(6);
        for (int i2 = 0; i2 < a + 1; i2++) {
            int a2 = jVar.m27749a(16);
            if (a2 != 0) {
                C2894o.m28597b("VorbisUtil", "mapping type other than 0 not supported: " + a2);
            } else {
                int a3 = jVar.m27746c() ? jVar.m27749a(4) + 1 : 1;
                if (jVar.m27746c()) {
                    int a4 = jVar.m27749a(8);
                    for (int i3 = 0; i3 < a4 + 1; i3++) {
                        int i4 = i - 1;
                        jVar.m27747b(m27736a(i4));
                        jVar.m27747b(m27736a(i4));
                    }
                }
                if (jVar.m27749a(2) == 0) {
                    if (a3 > 1) {
                        for (int i5 = 0; i5 < i; i5++) {
                            jVar.m27747b(4);
                        }
                    }
                    for (int i6 = 0; i6 < a3; i6++) {
                        jVar.m27747b(8);
                        jVar.m27747b(8);
                        jVar.m27747b(8);
                    }
                } else {
                    throw new ParserException("to reserved bits must be zero after mapping coupling steps");
                }
            }
        }
    }

    /* renamed from: a */
    public static boolean m27735a(int i, C2904v vVar, boolean z) throws ParserException {
        if (vVar.m28552a() < 7) {
            if (z) {
                return false;
            }
            throw new ParserException("too short header: " + vVar.m28552a());
        } else if (vVar.m28524r() != i) {
            if (z) {
                return false;
            }
            throw new ParserException("expected header type " + Integer.toHexString(i));
        } else if (vVar.m28524r() == 118 && vVar.m28524r() == 111 && vVar.m28524r() == 114 && vVar.m28524r() == 98 && vVar.m28524r() == 105 && vVar.m28524r() == 115) {
            return true;
        } else {
            if (z) {
                return false;
            }
            throw new ParserException("expected characters 'vorbis'");
        }
    }

    /* renamed from: a */
    public static C3135c[] m27731a(C2904v vVar, int i) throws ParserException {
        m27735a(5, vVar, false);
        int r = vVar.m28524r();
        C3129j jVar = new C3129j(vVar.f10530a);
        jVar.m27747b(vVar.m28543c() * 8);
        for (int i2 = 0; i2 < r + 1; i2++) {
            m27730a(jVar);
        }
        int a = jVar.m27749a(6);
        for (int i3 = 0; i3 < a + 1; i3++) {
            if (jVar.m27749a(16) != 0) {
                throw new ParserException("placeholder of time domain transforms not zeroed out");
            }
        }
        m27728b(jVar);
        m27726d(jVar);
        m27734a(i, jVar);
        C3135c[] c = m27727c(jVar);
        if (jVar.m27746c()) {
            return c;
        }
        throw new ParserException("framing bit after modes not set as expected");
    }

    /* renamed from: b */
    public static C3136d m27729b(C2904v vVar) throws ParserException {
        m27735a(1, vVar, false);
        long k = vVar.m28531k();
        int r = vVar.m28524r();
        long k2 = vVar.m28531k();
        int i = vVar.m28533i();
        int i2 = vVar.m28533i();
        int i3 = vVar.m28533i();
        int r2 = vVar.m28524r();
        return new C3136d(k, r, k2, i, i2, i3, (int) Math.pow(2.0d, r2 & 15), (int) Math.pow(2.0d, (r2 & 240) >> 4), (vVar.m28524r() & 1) > 0, Arrays.copyOf(vVar.f10530a, vVar.m28541d()));
    }

    /* renamed from: b */
    public static void m27728b(C3129j jVar) throws ParserException {
        int a = jVar.m27749a(6);
        for (int i = 0; i < a + 1; i++) {
            int a2 = jVar.m27749a(16);
            if (a2 == 0) {
                jVar.m27747b(8);
                jVar.m27747b(16);
                jVar.m27747b(16);
                jVar.m27747b(6);
                jVar.m27747b(8);
                int a3 = jVar.m27749a(4);
                for (int i2 = 0; i2 < a3 + 1; i2++) {
                    jVar.m27747b(8);
                }
            } else if (a2 == 1) {
                int a4 = jVar.m27749a(5);
                int i3 = -1;
                int[] iArr = new int[a4];
                for (int i4 = 0; i4 < a4; i4++) {
                    iArr[i4] = jVar.m27749a(4);
                    i3 = i3;
                    if (iArr[i4] > i3) {
                        i3 = iArr[i4];
                    }
                }
                int i5 = i3 + 1;
                int[] iArr2 = new int[i5];
                for (int i6 = 0; i6 < i5; i6++) {
                    iArr2[i6] = jVar.m27749a(3) + 1;
                    int a5 = jVar.m27749a(2);
                    if (a5 > 0) {
                        jVar.m27747b(8);
                    }
                    for (int i7 = 0; i7 < (1 << a5); i7++) {
                        jVar.m27747b(8);
                    }
                }
                jVar.m27747b(2);
                int a6 = jVar.m27749a(4);
                int i8 = 0;
                int i9 = 0;
                for (int i10 = 0; i10 < a4; i10++) {
                    i8 += iArr2[iArr[i10]];
                    while (i9 < i8) {
                        jVar.m27747b(a6);
                        i9++;
                    }
                }
            } else {
                throw new ParserException("floor type greater than 1 not decodable: " + a2);
            }
        }
    }

    /* renamed from: c */
    public static C3135c[] m27727c(C3129j jVar) {
        int a = jVar.m27749a(6) + 1;
        C3135c[] cVarArr = new C3135c[a];
        for (int i = 0; i < a; i++) {
            cVarArr[i] = new C3135c(jVar.m27746c(), jVar.m27749a(16), jVar.m27749a(16), jVar.m27749a(8));
        }
        return cVarArr;
    }

    /* renamed from: d */
    public static void m27726d(C3129j jVar) throws ParserException {
        int a = jVar.m27749a(6);
        for (int i = 0; i < a + 1; i++) {
            if (jVar.m27749a(16) <= 2) {
                jVar.m27747b(24);
                jVar.m27747b(24);
                jVar.m27747b(24);
                int a2 = jVar.m27749a(6) + 1;
                jVar.m27747b(8);
                int[] iArr = new int[a2];
                for (int i2 = 0; i2 < a2; i2++) {
                    iArr[i2] = ((jVar.m27746c() ? jVar.m27749a(5) : 0) * 8) + jVar.m27749a(3);
                }
                for (int i3 = 0; i3 < a2; i3++) {
                    for (int i4 = 0; i4 < 8; i4++) {
                        if ((iArr[i3] & (1 << i4)) != 0) {
                            jVar.m27747b(8);
                        }
                    }
                }
            } else {
                throw new ParserException("residueType greater than 2 is not decodable");
            }
        }
    }
}
