package p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0;

import com.google.android.exoplayer2.Format;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.C24560m0;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24424t;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24425u;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24426v;
import p193e.p1577m.p1578a.p1596c.p1602g1.C24427w;
import p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24347h;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24798t;
/* renamed from: e.m.a.c.g1.d0.i */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/d0/i.class */
public final class C24351i extends AbstractC24347h {

    /* renamed from: n */
    public C24352a f67714n;

    /* renamed from: o */
    public int f67715o;

    /* renamed from: p */
    public boolean f67716p;

    /* renamed from: q */
    public C24427w f67717q;

    /* renamed from: r */
    public C24425u f67718r;

    /* renamed from: e.m.a.c.g1.d0.i$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/d0/i$a.class */
    public static final class C24352a {

        /* renamed from: a */
        public final C24427w f67719a;

        /* renamed from: b */
        public final byte[] f67720b;

        /* renamed from: c */
        public final C24426v[] f67721c;

        /* renamed from: d */
        public final int f67722d;

        public C24352a(C24427w c24427w, C24425u c24425u, byte[] bArr, C24426v[] c24426vArr, int i) {
            this.f67719a = c24427w;
            this.f67720b = bArr;
            this.f67721c = c24426vArr;
            this.f67722d = i;
        }
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24347h
    /* renamed from: b */
    public void mo5218b(long j) {
        this.f67705g = j;
        int i = 0;
        this.f67716p = j != 0;
        C24427w c24427w = this.f67717q;
        if (c24427w != null) {
            i = c24427w.f68137d;
        }
        this.f67715o = i;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24347h
    /* renamed from: c */
    public long mo5217c(C24798t c24798t) {
        byte[] bArr = c24798t.f69504a;
        int i = 0;
        if ((bArr[0] & 1) == 1) {
            return -1L;
        }
        byte b = bArr[0];
        C24352a c24352a = this.f67714n;
        int i2 = !c24352a.f67721c[(b >> 1) & (255 >>> (8 - c24352a.f67722d))].f68133a ? c24352a.f67719a.f68137d : c24352a.f67719a.f68138e;
        if (this.f67716p) {
            i = (this.f67715o + i2) / 4;
        }
        long j = i;
        c24798t.m4548B(c24798t.f69506c + 4);
        byte[] bArr2 = c24798t.f69504a;
        int i3 = c24798t.f69506c;
        bArr2[i3 - 4] = (byte) (j & 255);
        bArr2[i3 - 3] = (byte) ((j >>> 8) & 255);
        bArr2[i3 - 2] = (byte) ((j >>> 16) & 255);
        bArr2[i3 - 1] = (byte) ((j >>> 24) & 255);
        this.f67716p = true;
        this.f67715o = i2;
        return j;
    }

    /* JADX WARN: Type inference failed for: r0v220, types: [long] */
    /* JADX WARN: Type inference failed for: r0v231, types: [long] */
    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24347h
    /* renamed from: d */
    public boolean mo5216d(C24798t c24798t, long j, AbstractC24347h.C24349b c24349b) throws IOException, InterruptedException {
        C24352a c24352a;
        int i;
        if (this.f67714n != null) {
            return false;
        }
        if (this.f67717q == null) {
            C26232y.m2356f2(1, c24798t, false);
            long m4538h = c24798t.m4538h();
            int m4529q = c24798t.m4529q();
            long m4538h2 = c24798t.m4538h();
            int m4539g = c24798t.m4539g();
            int m4539g2 = c24798t.m4539g();
            int m4539g3 = c24798t.m4539g();
            int m4529q2 = c24798t.m4529q();
            this.f67717q = new C24427w(m4538h, m4529q, m4538h2, m4539g, m4539g2, m4539g3, (int) Math.pow(2.0d, m4529q2 & 15), (int) Math.pow(2.0d, (m4529q2 & 240) >> 4), (c24798t.m4529q() & 1) > 0, Arrays.copyOf(c24798t.f69504a, c24798t.f69506c));
        } else if (this.f67718r == null) {
            this.f67718r = C26232y.m2446K1(c24798t, true, true);
        } else {
            int i2 = c24798t.f69506c;
            byte[] bArr = new byte[i2];
            int i3 = 0;
            System.arraycopy(c24798t.f69504a, 0, bArr, 0, i2);
            int i4 = this.f67717q.f68134a;
            int i5 = 5;
            C26232y.m2356f2(5, c24798t, false);
            int m4529q3 = c24798t.m4529q();
            C24424t c24424t = new C24424t(c24798t.f69504a);
            c24424t.m5139c(c24798t.f69505b * 8);
            while (true) {
                int i6 = 0;
                if (i3 >= m4529q3 + 1) {
                    int m5140b = c24424t.m5140b(6);
                    for (int i7 = 0; i7 < m5140b + 1; i7++) {
                        if (c24424t.m5140b(16) != 0) {
                            throw new C24560m0("placeholder of time domain transforms not zeroed out");
                        }
                    }
                    int m5140b2 = c24424t.m5140b(6);
                    int i8 = 0;
                    while (i8 < m5140b2 + 1) {
                        int m5140b3 = c24424t.m5140b(16);
                        if (m5140b3 == 0) {
                            c24424t.m5139c(8);
                            c24424t.m5139c(16);
                            c24424t.m5139c(16);
                            c24424t.m5139c(6);
                            c24424t.m5139c(8);
                            int m5140b4 = c24424t.m5140b(4);
                            for (int i9 = 0; i9 < m5140b4 + 1; i9++) {
                                c24424t.m5139c(8);
                            }
                        } else if (m5140b3 != 1) {
                            throw new C24560m0(C22128a.m8611i2("floor type greater than 1 not decodable: ", m5140b3));
                        } else {
                            int m5140b5 = c24424t.m5140b(i5);
                            int[] iArr = new int[m5140b5];
                            int i10 = -1;
                            int i11 = 0;
                            while (i11 < m5140b5) {
                                iArr[i11] = c24424t.m5140b(4);
                                int i12 = i10;
                                if (iArr[i11] > i10) {
                                    i12 = iArr[i11];
                                }
                                i11++;
                                i10 = i12;
                            }
                            int i13 = i10 + 1;
                            int[] iArr2 = new int[i13];
                            for (int i14 = 0; i14 < i13; i14++) {
                                iArr2[i14] = c24424t.m5140b(3) + 1;
                                int m5140b6 = c24424t.m5140b(2);
                                if (m5140b6 > 0) {
                                    c24424t.m5139c(8);
                                }
                                for (int i15 = 0; i15 < (1 << m5140b6); i15++) {
                                    c24424t.m5139c(8);
                                }
                            }
                            c24424t.m5139c(2);
                            int m5140b7 = c24424t.m5140b(4);
                            int i16 = 0;
                            int i17 = 0;
                            for (int i18 = 0; i18 < m5140b5; i18++) {
                                i16 += iArr2[iArr[i18]];
                                while (i17 < i16) {
                                    c24424t.m5139c(m5140b7);
                                    i17++;
                                }
                            }
                        }
                        i8++;
                        i5 = 5;
                    }
                    int m5140b8 = c24424t.m5140b(6);
                    for (int i19 = 0; i19 < m5140b8 + 1; i19++) {
                        if (c24424t.m5140b(16) > 2) {
                            throw new C24560m0("residueType greater than 2 is not decodable");
                        }
                        c24424t.m5139c(24);
                        c24424t.m5139c(24);
                        c24424t.m5139c(24);
                        int m5140b9 = c24424t.m5140b(6) + 1;
                        c24424t.m5139c(8);
                        int[] iArr3 = new int[m5140b9];
                        for (int i20 = 0; i20 < m5140b9; i20++) {
                            iArr3[i20] = ((c24424t.m5141a() ? c24424t.m5140b(5) : 0) * 8) + c24424t.m5140b(3);
                        }
                        for (int i21 = 0; i21 < m5140b9; i21++) {
                            for (int i22 = 0; i22 < 8; i22++) {
                                if ((iArr3[i21] & (1 << i22)) != 0) {
                                    c24424t.m5139c(8);
                                }
                            }
                        }
                    }
                    int m5140b10 = c24424t.m5140b(6);
                    int i23 = 0;
                    while (true) {
                        int i24 = 1;
                        if (i23 < m5140b10 + 1) {
                            if (c24424t.m5140b(16) == 0) {
                                if (c24424t.m5141a()) {
                                    i24 = c24424t.m5140b(4) + 1;
                                }
                                if (c24424t.m5141a()) {
                                    int m5140b11 = c24424t.m5140b(8);
                                    for (int i25 = 0; i25 < m5140b11 + 1; i25++) {
                                        int i26 = i4 - 1;
                                        c24424t.m5139c(C26232y.m2439M0(i26));
                                        c24424t.m5139c(C26232y.m2439M0(i26));
                                    }
                                }
                                if (c24424t.m5140b(2) != 0) {
                                    throw new C24560m0("to reserved bits must be zero after mapping coupling steps");
                                }
                                if (i24 > 1) {
                                    for (int i27 = 0; i27 < i4; i27++) {
                                        c24424t.m5139c(4);
                                    }
                                }
                                for (int i28 = 0; i28 < i24; i28++) {
                                    c24424t.m5139c(8);
                                    c24424t.m5139c(8);
                                    c24424t.m5139c(8);
                                }
                            }
                            i23++;
                        } else {
                            int m5140b12 = c24424t.m5140b(6) + 1;
                            C24426v[] c24426vArr = new C24426v[m5140b12];
                            for (int i29 = 0; i29 < m5140b12; i29++) {
                                c24426vArr[i29] = new C24426v(c24424t.m5141a(), c24424t.m5140b(16), c24424t.m5140b(16), c24424t.m5140b(8));
                            }
                            if (!c24424t.m5141a()) {
                                throw new C24560m0("framing bit after modes not set as expected");
                            }
                            c24352a = new C24352a(this.f67717q, this.f67718r, bArr, c24426vArr, C26232y.m2439M0(m5140b12 - 1));
                        }
                    }
                } else if (c24424t.m5140b(24) != 5653314) {
                    StringBuilder m8728C = C22128a.m8728C("expected code book to start with [0x56, 0x43, 0x42] at ");
                    m8728C.append((c24424t.f68130c * 8) + c24424t.f68131d);
                    throw new C24560m0(m8728C.toString());
                } else {
                    int m5140b13 = c24424t.m5140b(16);
                    int m5140b14 = c24424t.m5140b(24);
                    long[] jArr = new long[m5140b14];
                    if (!c24424t.m5141a()) {
                        boolean m5141a = c24424t.m5141a();
                        while (true) {
                            i = i5;
                            if (i6 >= m5140b14) {
                                break;
                            }
                            if (m5141a) {
                                if (c24424t.m5141a()) {
                                    jArr[i6] = c24424t.m5140b(i5) + 1;
                                } else {
                                    jArr[i6] = 0;
                                }
                                i5 = 5;
                            } else {
                                jArr[i6] = c24424t.m5140b(i5) + 1;
                            }
                            i6++;
                        }
                    } else {
                        int m5140b15 = c24424t.m5140b(i5) + 1;
                        int i30 = 0;
                        while (i30 < m5140b14) {
                            int m5140b16 = c24424t.m5140b(C26232y.m2439M0(m5140b14 - i30));
                            for (int i31 = 0; i31 < m5140b16 && i30 < m5140b14; i31++) {
                                jArr[i30] = m5140b15;
                                i30++;
                            }
                            m5140b15++;
                        }
                        i = i5;
                    }
                    int m5140b17 = c24424t.m5140b(4);
                    if (m5140b17 > 2) {
                        throw new C24560m0(C22128a.m8611i2("lookup type greater than 2 not decodable: ", m5140b17));
                    }
                    if (m5140b17 == 1 || m5140b17 == 2) {
                        c24424t.m5139c(32);
                        c24424t.m5139c(32);
                        int m5140b18 = c24424t.m5140b(4);
                        c24424t.m5139c(1);
                        c24424t.m5139c((int) ((m5140b18 + 1) * (m5140b17 == 1 ? m5140b13 != 0 ? (long) Math.floor(Math.pow(m5140b14, 1.0d / m5140b13)) : (char) 0 : m5140b14 * m5140b13)));
                    }
                    i3++;
                    i5 = i;
                }
            }
        }
        c24352a = null;
        this.f67714n = c24352a;
        if (c24352a == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f67714n.f67719a.f68139f);
        arrayList.add(this.f67714n.f67720b);
        C24427w c24427w = this.f67714n.f67719a;
        c24349b.f67712a = Format.m39253g(null, "audio/vorbis", null, c24427w.f68136c, -1, c24427w.f68134a, (int) c24427w.f68135b, arrayList, null, 0, null);
        return true;
    }

    @Override // p193e.p1577m.p1578a.p1596c.p1602g1.p1606d0.AbstractC24347h
    /* renamed from: e */
    public void mo5215e(boolean z) {
        super.mo5215e(z);
        if (z) {
            this.f67714n = null;
            this.f67717q = null;
            this.f67718r = null;
        }
        this.f67715o = 0;
        this.f67716p = false;
    }
}
