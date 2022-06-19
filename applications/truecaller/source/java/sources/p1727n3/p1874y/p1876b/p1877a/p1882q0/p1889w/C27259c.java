package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import java.io.IOException;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27185m;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.w.c */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/c.class */
public final class C27259c implements AbstractC27179g {

    /* renamed from: a */
    public final C27265d f76514a = new C27265d(null);

    /* renamed from: b */
    public final C27434m f76515b = new C27434m(16384);

    /* renamed from: c */
    public boolean f76516c;

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: a */
    public void mo606a(long j, long j2) {
        this.f76516c = false;
        this.f76514a.mo629a();
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: d */
    public void mo605d(AbstractC27180h abstractC27180h) {
        this.f76514a.mo625e(abstractC27180h, new AbstractC27260c0.C27264d(Integer.MIN_VALUE, 0, 1));
        abstractC27180h.m751g();
        abstractC27180h.m749q(new AbstractC27186n.C27188b(-9223372036854775807L, 0L));
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: h */
    public boolean mo604h(C27176d c27176d) throws IOException, InterruptedException {
        int i;
        int i2;
        int i3;
        C27434m c27434m = new C27434m(10);
        int i4 = 0;
        while (true) {
            c27176d.m757d(c27434m.f77200a, 0, 10, false);
            c27434m.m315z(0);
            if (c27434m.m324q() != 4801587) {
                break;
            }
            c27434m.m341A(3);
            int m327n = c27434m.m327n();
            i4 += m327n + 10;
            c27176d.m760a(m327n, false);
        }
        c27176d.f76033f = 0;
        c27176d.m760a(i4, false);
        int i5 = 0;
        int i6 = i4;
        while (true) {
            c27176d.m757d(c27434m.f77200a, 0, 7, false);
            c27434m.m315z(0);
            int m321t = c27434m.m321t();
            if (m321t == 44096 || m321t == 44097) {
                int i7 = i5 + 1;
                if (i7 >= 4) {
                    return true;
                }
                byte[] bArr = c27434m.f77200a;
                if (bArr.length < 7) {
                    i = -1;
                } else {
                    int i8 = ((bArr[2] & 255) << 8) | (bArr[3] & 255);
                    if (i8 == 65535) {
                        i3 = 7;
                        i2 = ((bArr[4] & 255) << 16) | ((bArr[5] & 255) << 8) | (bArr[6] & 255);
                    } else {
                        i3 = 4;
                        i2 = i8;
                    }
                    int i9 = i3;
                    if (m321t == 44097) {
                        i9 = i3 + 2;
                    }
                    i = i2 + i9;
                }
                if (i == -1) {
                    return false;
                }
                c27176d.m760a(i - 7, false);
                i5 = i7;
            } else {
                c27176d.f76033f = 0;
                i6++;
                if (i6 - i4 >= 8192) {
                    return false;
                }
                c27176d.m760a(i6, false);
                i5 = 0;
            }
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: i */
    public int mo603i(C27176d c27176d, C27185m c27185m) throws IOException, InterruptedException {
        int m756e = c27176d.m756e(this.f76515b.f77200a, 0, 16384);
        if (m756e == -1) {
            return -1;
        }
        this.f76515b.m315z(0);
        this.f76515b.m316y(m756e);
        if (!this.f76516c) {
            this.f76514a.f76540m = 0L;
            this.f76516c = true;
        }
        this.f76514a.mo626d(this.f76515b);
        return 0;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    public void release() {
    }
}
