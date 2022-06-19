package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27443v;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.q0.w.t */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/t.class */
public final class C27289t {

    /* renamed from: c */
    public boolean f76753c;

    /* renamed from: d */
    public boolean f76754d;

    /* renamed from: e */
    public boolean f76755e;

    /* renamed from: a */
    public final C27443v f76751a = new C27443v(0);

    /* renamed from: f */
    public long f76756f = -9223372036854775807L;

    /* renamed from: g */
    public long f76757g = -9223372036854775807L;

    /* renamed from: h */
    public long f76758h = -9223372036854775807L;

    /* renamed from: b */
    public final C27434m f76752b = new C27434m();

    /* renamed from: c */
    public static long m615c(C27434m c27434m) {
        int i = c27434m.f77201b;
        if (c27434m.m340a() < 9) {
            return -9223372036854775807L;
        }
        byte[] bArr = new byte[9];
        System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr, 0, 9);
        c27434m.f77201b += 9;
        c27434m.m315z(i);
        if ((bArr[0] & 196) == 68 && (bArr[2] & 4) == 4 && (bArr[4] & 4) == 4 && (bArr[5] & 1) == 1 && (bArr[8] & 3) == 3) {
            return (((bArr[0] & 56) >> 3) << 30) | ((bArr[0] & 3) << 28) | ((bArr[1] & 255) << 20) | (((bArr[2] & 248) >> 3) << 15) | ((bArr[2] & 3) << 13) | ((bArr[3] & 255) << 5) | ((bArr[4] & 248) >> 3);
        }
        return -9223372036854775807L;
    }

    /* renamed from: a */
    public final int m617a(C27176d c27176d) {
        this.f76752b.m318w(C27445x.f77234f);
        this.f76753c = true;
        c27176d.f76033f = 0;
        return 0;
    }

    /* renamed from: b */
    public final int m616b(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }
}
