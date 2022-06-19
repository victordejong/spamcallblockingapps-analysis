package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media2.exoplayer.external.Format;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27243h;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.q0.v.j */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/v/j.class */
public final class C27248j extends AbstractC27243h {

    /* renamed from: n */
    public C27249a f76450n;

    /* renamed from: o */
    public int f76451o;

    /* renamed from: p */
    public boolean f76452p;

    /* renamed from: q */
    public C27252m f76453q;

    /* renamed from: r */
    public C27250k f76454r;

    /* renamed from: n3.y.b.a.q0.v.j$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/v/j$a.class */
    public static final class C27249a {

        /* renamed from: a */
        public final C27252m f76455a;

        /* renamed from: b */
        public final byte[] f76456b;

        /* renamed from: c */
        public final C27251l[] f76457c;

        /* renamed from: d */
        public final int f76458d;

        public C27249a(C27252m c27252m, C27250k c27250k, byte[] bArr, C27251l[] c27251lArr, int i) {
            this.f76455a = c27252m;
            this.f76456b = bArr;
            this.f76457c = c27251lArr;
            this.f76458d = i;
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27243h
    /* renamed from: c */
    public void mo652c(long j) {
        this.f76437g = j;
        int i = 0;
        this.f76452p = j != 0;
        C27252m c27252m = this.f76453q;
        if (c27252m != null) {
            i = c27252m.f76463d;
        }
        this.f76451o = i;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27243h
    /* renamed from: d */
    public long mo651d(C27434m c27434m) {
        byte[] bArr = c27434m.f77200a;
        int i = 0;
        if ((bArr[0] & 1) == 1) {
            return -1L;
        }
        byte b = bArr[0];
        C27249a c27249a = this.f76450n;
        int i2 = !c27249a.f76457c[(b >> 1) & (255 >>> (8 - c27249a.f76458d))].f76459a ? c27249a.f76455a.f76463d : c27249a.f76455a.f76464e;
        if (this.f76452p) {
            i = (this.f76451o + i2) / 4;
        }
        long j = i;
        c27434m.m316y(c27434m.f77202c + 4);
        byte[] bArr2 = c27434m.f77200a;
        int i3 = c27434m.f77202c;
        bArr2[i3 - 4] = (byte) (j & 255);
        bArr2[i3 - 3] = (byte) ((j >>> 8) & 255);
        bArr2[i3 - 2] = (byte) ((j >>> 16) & 255);
        bArr2[i3 - 1] = (byte) ((j >>> 24) & 255);
        this.f76452p = true;
        this.f76451o = i2;
        return j;
    }

    /* JADX WARN: Type inference failed for: r0v213, types: [long] */
    /* JADX WARN: Type inference failed for: r0v224, types: [long] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27243h
    /* renamed from: e */
    public boolean mo650e(C27434m c27434m, long j, AbstractC27243h.C27245b c27245b) throws IOException, InterruptedException {
        C27249a c27249a;
        int i;
        if (this.f76450n != null) {
            return false;
        }
        if (this.f76453q == null) {
            MediaSessionCompat.m43287L1(1, c27434m, false);
            long m334g = c27434m.m334g();
            int m326o = c27434m.m326o();
            long m334g2 = c27434m.m334g();
            int m335f = c27434m.m335f();
            int m335f2 = c27434m.m335f();
            int m335f3 = c27434m.m335f();
            int m326o2 = c27434m.m326o();
            this.f76453q = new C27252m(m334g, m326o, m334g2, m335f, m335f2, m335f3, (int) Math.pow(2.0d, m326o2 & 15), (int) Math.pow(2.0d, (m326o2 & 240) >> 4), (c27434m.m326o() & 1) > 0, Arrays.copyOf(c27434m.f77200a, c27434m.f77202c));
        } else if (this.f76454r == null) {
            MediaSessionCompat.m43287L1(3, c27434m, false);
            String m328m = c27434m.m328m((int) c27434m.m334g());
            int length = m328m.length();
            long m334g3 = c27434m.m334g();
            String[] strArr = new String[(int) m334g3];
            int i2 = length + 11 + 4;
            for (int i3 = 0; i3 < m334g3; i3++) {
                strArr[i3] = c27434m.m328m((int) c27434m.m334g());
                i2 = i2 + 4 + strArr[i3].length();
            }
            if ((c27434m.m326o() & 1) == 0) {
                throw new C27074c0("framing bit expected to be set");
            }
            this.f76454r = new C27250k(m328m, strArr, i2 + 1);
        } else {
            int i4 = c27434m.f77202c;
            byte[] bArr = new byte[i4];
            int i5 = 0;
            System.arraycopy(c27434m.f77200a, 0, bArr, 0, i4);
            int i6 = this.f76453q.f76460a;
            MediaSessionCompat.m43287L1(5, c27434m, false);
            int m326o3 = c27434m.m326o();
            C27247i c27247i = new C27247i(c27434m.f77200a);
            c27247i.m653c(c27434m.f77201b * 8);
            while (true) {
                if (i5 >= m326o3 + 1) {
                    int m654b = c27247i.m654b(6);
                    for (int i7 = 0; i7 < m654b + 1; i7++) {
                        if (c27247i.m654b(16) != 0) {
                            throw new C27074c0("placeholder of time domain transforms not zeroed out");
                        }
                    }
                    int m654b2 = c27247i.m654b(6);
                    for (int i8 = 0; i8 < m654b2 + 1; i8++) {
                        int m654b3 = c27247i.m654b(16);
                        if (m654b3 == 0) {
                            c27247i.m653c(8);
                            c27247i.m653c(16);
                            c27247i.m653c(16);
                            c27247i.m653c(6);
                            c27247i.m653c(8);
                            int m654b4 = c27247i.m654b(4);
                            for (int i9 = 0; i9 < m654b4 + 1; i9++) {
                                c27247i.m653c(8);
                            }
                        } else if (m654b3 != 1) {
                            throw new C27074c0(C22128a.m8690L1(52, "floor type greater than 1 not decodable: ", m654b3));
                        } else {
                            int m654b5 = c27247i.m654b(5);
                            int[] iArr = new int[m654b5];
                            int i10 = -1;
                            int i11 = 0;
                            while (i11 < m654b5) {
                                iArr[i11] = c27247i.m654b(4);
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
                                iArr2[i14] = c27247i.m654b(3) + 1;
                                int m654b6 = c27247i.m654b(2);
                                if (m654b6 > 0) {
                                    c27247i.m653c(8);
                                }
                                for (int i15 = 0; i15 < (1 << m654b6); i15++) {
                                    c27247i.m653c(8);
                                }
                            }
                            c27247i.m653c(2);
                            int m654b7 = c27247i.m654b(4);
                            int i16 = 0;
                            int i17 = 0;
                            for (int i18 = 0; i18 < m654b5; i18++) {
                                i16 += iArr2[iArr[i18]];
                                while (i17 < i16) {
                                    c27247i.m653c(m654b7);
                                    i17++;
                                }
                            }
                        }
                    }
                    int m654b8 = c27247i.m654b(6);
                    for (int i19 = 0; i19 < m654b8 + 1; i19++) {
                        if (c27247i.m654b(16) > 2) {
                            throw new C27074c0("residueType greater than 2 is not decodable");
                        }
                        c27247i.m653c(24);
                        c27247i.m653c(24);
                        c27247i.m653c(24);
                        int m654b9 = c27247i.m654b(6) + 1;
                        c27247i.m653c(8);
                        int[] iArr3 = new int[m654b9];
                        for (int i20 = 0; i20 < m654b9; i20++) {
                            iArr3[i20] = ((c27247i.m655a() ? c27247i.m654b(5) : 0) * 8) + c27247i.m654b(3);
                        }
                        for (int i21 = 0; i21 < m654b9; i21++) {
                            for (int i22 = 0; i22 < 8; i22++) {
                                if ((iArr3[i21] & (1 << i22)) != 0) {
                                    c27247i.m653c(8);
                                }
                            }
                        }
                    }
                    int m654b10 = c27247i.m654b(6);
                    int i23 = 0;
                    while (true) {
                        int i24 = 1;
                        if (i23 < m654b10 + 1) {
                            if (c27247i.m654b(16) == 0) {
                                if (c27247i.m655a()) {
                                    i24 = c27247i.m654b(4) + 1;
                                }
                                if (c27247i.m655a()) {
                                    int m654b11 = c27247i.m654b(8);
                                    for (int i25 = 0; i25 < m654b11 + 1; i25++) {
                                        int i26 = i6 - 1;
                                        c27247i.m653c(MediaSessionCompat.m43309E0(i26));
                                        c27247i.m653c(MediaSessionCompat.m43309E0(i26));
                                    }
                                }
                                if (c27247i.m654b(2) != 0) {
                                    throw new C27074c0("to reserved bits must be zero after mapping coupling steps");
                                }
                                if (i24 > 1) {
                                    for (int i27 = 0; i27 < i6; i27++) {
                                        c27247i.m653c(4);
                                    }
                                }
                                for (int i28 = 0; i28 < i24; i28++) {
                                    c27247i.m653c(8);
                                    c27247i.m653c(8);
                                    c27247i.m653c(8);
                                }
                            }
                            i23++;
                        } else {
                            int m654b12 = c27247i.m654b(6) + 1;
                            C27251l[] c27251lArr = new C27251l[m654b12];
                            for (int i29 = 0; i29 < m654b12; i29++) {
                                c27251lArr[i29] = new C27251l(c27247i.m655a(), c27247i.m654b(16), c27247i.m654b(16), c27247i.m654b(8));
                            }
                            if (!c27247i.m655a()) {
                                throw new C27074c0("framing bit after modes not set as expected");
                            }
                            c27249a = new C27249a(this.f76453q, this.f76454r, bArr, c27251lArr, MediaSessionCompat.m43309E0(m654b12 - 1));
                        }
                    }
                } else if (c27247i.m654b(24) != 5653314) {
                    throw new C27074c0(C22128a.m8690L1(66, "expected code book to start with [0x56, 0x43, 0x42] at ", (c27247i.f76448c * 8) + c27247i.f76449d));
                } else {
                    int m654b13 = c27247i.m654b(16);
                    int m654b14 = c27247i.m654b(24);
                    long[] jArr = new long[m654b14];
                    if (!c27247i.m655a()) {
                        boolean m655a = c27247i.m655a();
                        for (int i30 = 0; i30 < m654b14; i30++) {
                            if (!m655a) {
                                jArr[i30] = c27247i.m654b(5) + 1;
                            } else if (c27247i.m655a()) {
                                jArr[i30] = c27247i.m654b(5) + 1;
                            } else {
                                jArr[i30] = 0;
                            }
                        }
                        i = 4;
                    } else {
                        int m654b15 = c27247i.m654b(5) + 1;
                        int i31 = 0;
                        while (i31 < m654b14) {
                            int m654b16 = c27247i.m654b(MediaSessionCompat.m43309E0(m654b14 - i31));
                            for (int i32 = 0; i32 < m654b16 && i31 < m654b14; i32++) {
                                jArr[i31] = m654b15;
                                i31++;
                            }
                            m654b15++;
                        }
                        i = 4;
                    }
                    int m654b17 = c27247i.m654b(i);
                    if (m654b17 > 2) {
                        throw new C27074c0(C22128a.m8690L1(53, "lookup type greater than 2 not decodable: ", m654b17));
                    }
                    if (m654b17 == 1 || m654b17 == 2) {
                        c27247i.m653c(32);
                        c27247i.m653c(32);
                        int m654b18 = c27247i.m654b(4);
                        c27247i.m653c(1);
                        c27247i.m653c((int) ((m654b18 + 1) * (m654b17 == 1 ? m654b13 != 0 ? (long) Math.floor(Math.pow(m654b14, 1.0d / m654b13)) : (char) 0 : m654b14 * m654b13)));
                    }
                    i5++;
                }
            }
        }
        c27249a = null;
        this.f76450n = c27249a;
        if (c27249a == null) {
            return true;
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.f76450n.f76455a.f76465f);
        arrayList.add(this.f76450n.f76456b);
        C27252m c27252m = this.f76450n.f76455a;
        c27245b.f76444a = Format.m42842k(null, "audio/vorbis", null, c27252m.f76462c, -1, c27252m.f76460a, (int) c27252m.f76461b, arrayList, null, 0, null);
        return true;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27243h
    /* renamed from: f */
    public void mo649f(boolean z) {
        super.mo649f(z);
        if (z) {
            this.f76450n = null;
            this.f76453q = null;
            this.f76454r = null;
        }
        this.f76451o = 0;
        this.f76452p = false;
    }
}
