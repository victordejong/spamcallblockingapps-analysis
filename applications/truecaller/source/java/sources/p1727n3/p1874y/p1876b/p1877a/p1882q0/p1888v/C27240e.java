package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v;

import java.io.EOFException;
import java.io.IOException;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.v.e */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/v/e.class */
public final class C27240e {

    /* renamed from: a */
    public int f76421a;

    /* renamed from: b */
    public int f76422b;

    /* renamed from: c */
    public long f76423c;

    /* renamed from: d */
    public int f76424d;

    /* renamed from: e */
    public int f76425e;

    /* renamed from: f */
    public int f76426f;

    /* renamed from: g */
    public final int[] f76427g = new int[255];

    /* renamed from: h */
    public final C27434m f76428h = new C27434m(255);

    /* renamed from: a */
    public boolean m663a(C27176d c27176d, boolean z) throws IOException, InterruptedException {
        this.f76428h.m320u();
        m662b();
        long j = c27176d.f76030c;
        if (!(j == -1 || j - c27176d.m758c() >= 27) || !c27176d.m757d(this.f76428h.f77200a, 0, 27, true)) {
            if (!z) {
                throw new EOFException();
            }
            return false;
        } else if (this.f76428h.m325p() != 1332176723) {
            if (!z) {
                throw new C27074c0("expected OggS capture pattern at begin of page");
            }
            return false;
        } else {
            int m326o = this.f76428h.m326o();
            this.f76421a = m326o;
            if (m326o != 0) {
                if (!z) {
                    throw new C27074c0("unsupported bit stream revision");
                }
                return false;
            }
            this.f76422b = this.f76428h.m326o();
            C27434m c27434m = this.f76428h;
            byte[] bArr = c27434m.f77200a;
            int i = c27434m.f77201b;
            int i2 = i + 1;
            c27434m.f77201b = i2;
            long j2 = bArr[i];
            int i3 = i2 + 1;
            c27434m.f77201b = i3;
            long j3 = bArr[i2];
            int i4 = i3 + 1;
            c27434m.f77201b = i4;
            long j4 = bArr[i3];
            int i5 = i4 + 1;
            c27434m.f77201b = i5;
            long j5 = bArr[i4];
            int i6 = i5 + 1;
            c27434m.f77201b = i6;
            long j6 = bArr[i5];
            int i7 = i6 + 1;
            c27434m.f77201b = i7;
            long j7 = bArr[i6];
            int i8 = i7 + 1;
            c27434m.f77201b = i8;
            c27434m.f77201b = i8 + 1;
            this.f76423c = (j2 & 255) | ((j3 & 255) << 8) | ((j4 & 255) << 16) | ((j5 & 255) << 24) | ((j6 & 255) << 32) | ((j7 & 255) << 40) | ((bArr[i7] & 255) << 48) | ((bArr[i8] & 255) << 56);
            c27434m.m334g();
            this.f76428h.m334g();
            this.f76428h.m334g();
            int m326o2 = this.f76428h.m326o();
            this.f76424d = m326o2;
            this.f76425e = m326o2 + 27;
            this.f76428h.m320u();
            c27176d.m757d(this.f76428h.f77200a, 0, this.f76424d, false);
            for (int i9 = 0; i9 < this.f76424d; i9++) {
                this.f76427g[i9] = this.f76428h.m326o();
                this.f76426f += this.f76427g[i9];
            }
            return true;
        }
    }

    /* renamed from: b */
    public void m662b() {
        this.f76421a = 0;
        this.f76422b = 0;
        this.f76423c = 0L;
        this.f76424d = 0;
        this.f76425e = 0;
        this.f76426f = 0;
    }
}
