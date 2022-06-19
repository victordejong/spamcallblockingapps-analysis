package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import java.io.IOException;
import p1727n3.p1874y.p1876b.p1877a.p1879n0.C27107a;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27185m;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.w.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/a.class */
public final class C27253a implements AbstractC27179g {

    /* renamed from: a */
    public final C27255b f76466a = new C27255b(null);

    /* renamed from: b */
    public final C27434m f76467b = new C27434m(2786);

    /* renamed from: c */
    public boolean f76468c;

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: a */
    public void mo606a(long j, long j2) {
        this.f76468c = false;
        this.f76466a.mo629a();
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: d */
    public void mo605d(AbstractC27180h abstractC27180h) {
        this.f76466a.mo625e(abstractC27180h, new AbstractC27260c0.C27264d(Integer.MIN_VALUE, 0, 1));
        abstractC27180h.m751g();
        abstractC27180h.m749q(new AbstractC27186n.C27188b(-9223372036854775807L, 0L));
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: h */
    public boolean mo604h(C27176d c27176d) throws IOException, InterruptedException {
        int i;
        C27434m c27434m = new C27434m(10);
        int i2 = 0;
        while (true) {
            c27176d.m757d(c27434m.f77200a, 0, 10, false);
            c27434m.m315z(0);
            if (c27434m.m324q() != 4801587) {
                break;
            }
            c27434m.m341A(3);
            int m327n = c27434m.m327n();
            i2 += m327n + 10;
            c27176d.m760a(m327n, false);
        }
        c27176d.f76033f = 0;
        c27176d.m760a(i2, false);
        int i3 = 0;
        int i4 = i2;
        while (true) {
            c27176d.m757d(c27434m.f77200a, 0, 6, false);
            c27434m.m315z(0);
            if (c27434m.m321t() != 2935) {
                c27176d.f76033f = 0;
                i4++;
                if (i4 - i2 >= 8192) {
                    return false;
                }
                c27176d.m760a(i4, false);
                i3 = 0;
            } else {
                int i5 = i3 + 1;
                if (i5 >= 4) {
                    return true;
                }
                byte[] bArr = c27434m.f77200a;
                if (bArr.length < 6) {
                    i = -1;
                } else {
                    i = ((bArr[5] & 255) >> 3) == 16 ? ((((bArr[2] & 7) << 8) | (bArr[3] & 255)) + 1) * 2 : C27107a.m852a((bArr[4] & 192) >> 6, bArr[4] & 63);
                }
                if (i == -1) {
                    return false;
                }
                c27176d.m760a(i - 6, false);
                i3 = i5;
            }
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: i */
    public int mo603i(C27176d c27176d, C27185m c27185m) throws IOException, InterruptedException {
        int m756e = c27176d.m756e(this.f76467b.f77200a, 0, 2786);
        if (m756e == -1) {
            return -1;
        }
        this.f76467b.m315z(0);
        this.f76467b.m316y(m756e);
        if (!this.f76468c) {
            this.f76466a.f76488l = 0L;
            this.f76468c = true;
        }
        this.f76466a.mo626d(this.f76467b);
        return 0;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    public void release() {
    }
}
