package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1884r;

import androidx.media2.exoplayer.external.Format;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1884r.AbstractC27196d;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27430k;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1905y0.C27447a;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.q0.r.e */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/r/e.class */
public final class C27198e extends AbstractC27196d {

    /* renamed from: b */
    public final C27434m f76108b = new C27434m(C27430k.f77176a);

    /* renamed from: c */
    public final C27434m f76109c = new C27434m(4);

    /* renamed from: d */
    public int f76110d;

    /* renamed from: e */
    public boolean f76111e;

    /* renamed from: f */
    public boolean f76112f;

    /* renamed from: g */
    public int f76113g;

    public C27198e(AbstractC27190p abstractC27190p) {
        super(abstractC27190p);
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1884r.AbstractC27196d
    /* renamed from: b */
    public boolean mo730b(C27434m c27434m) throws AbstractC27196d.C27197a {
        int m326o = c27434m.m326o();
        int i = (m326o >> 4) & 15;
        int i2 = m326o & 15;
        if (i2 == 7) {
            this.f76113g = i;
            return i != 5;
        }
        throw new AbstractC27196d.C27197a(C22128a.m8690L1(39, "Video format not supported: ", i2));
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1884r.AbstractC27196d
    /* renamed from: c */
    public boolean mo729c(C27434m c27434m, long j) throws C27074c0 {
        int m326o = c27434m.m326o();
        byte[] bArr = c27434m.f77200a;
        int i = c27434m.f77201b;
        int i2 = i + 1;
        c27434m.f77201b = i2;
        byte b = bArr[i];
        int i3 = i2 + 1;
        c27434m.f77201b = i3;
        byte b2 = bArr[i2];
        c27434m.f77201b = i3 + 1;
        long j2 = (bArr[i3] & 255) | (((b & 255) << 24) >> 8) | ((b2 & 255) << 8);
        if (m326o == 0 && !this.f76111e) {
            C27434m c27434m2 = new C27434m(new byte[c27434m.m340a()]);
            c27434m.m338c(c27434m2.f77200a, 0, c27434m.m340a());
            C27447a m259b = C27447a.m259b(c27434m2);
            this.f76110d = m259b.f77240b;
            this.f76107a.mo740c(Format.m42834t(null, "video/avc", null, -1, -1, m259b.f77241c, m259b.f77242d, -1.0f, m259b.f77239a, -1, m259b.f77243e, null));
            this.f76111e = true;
            return false;
        } else if (m326o != 1 || !this.f76111e) {
            return false;
        } else {
            int i4 = this.f76113g == 1 ? 1 : 0;
            if (!this.f76112f && i4 == 0) {
                return false;
            }
            byte[] bArr2 = this.f76109c.f77200a;
            bArr2[0] = (byte) 0;
            bArr2[1] = (byte) 0;
            bArr2[2] = (byte) 0;
            int i5 = this.f76110d;
            int i6 = 0;
            while (true) {
                int i7 = i6;
                if (c27434m.m340a() <= 0) {
                    this.f76107a.mo741b((j2 * 1000) + j, i4, i7, 0, null);
                    this.f76112f = true;
                    return true;
                }
                c27434m.m338c(this.f76109c.f77200a, 4 - i5, this.f76110d);
                this.f76109c.m315z(0);
                int m323r = this.f76109c.m323r();
                this.f76108b.m315z(0);
                this.f76107a.mo739d(this.f76108b, 4);
                this.f76107a.mo739d(c27434m, m323r);
                i6 = i7 + 4 + m323r;
            }
        }
    }
}
