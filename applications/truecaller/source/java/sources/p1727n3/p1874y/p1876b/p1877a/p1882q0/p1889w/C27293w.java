package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w;

import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27443v;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.q0.w.w */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/w/w.class */
public final class C27293w implements AbstractC27260c0 {

    /* renamed from: a */
    public final AbstractC27292v f76778a;

    /* renamed from: b */
    public final C27434m f76779b = new C27434m(32);

    /* renamed from: c */
    public int f76780c;

    /* renamed from: d */
    public int f76781d;

    /* renamed from: e */
    public boolean f76782e;

    /* renamed from: f */
    public boolean f76783f;

    public C27293w(AbstractC27292v abstractC27292v) {
        this.f76778a = abstractC27292v;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0
    /* renamed from: a */
    public void mo614a() {
        this.f76783f = true;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0
    /* renamed from: b */
    public void mo613b(C27443v c27443v, AbstractC27180h abstractC27180h, AbstractC27260c0.C27264d c27264d) {
        this.f76778a.mo610b(c27443v, abstractC27180h, c27264d);
        this.f76783f = true;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1889w.AbstractC27260c0
    /* renamed from: c */
    public void mo612c(C27434m c27434m, int i) {
        boolean z = (i & 1) != 0;
        int m326o = z ? c27434m.f77201b + c27434m.m326o() : -1;
        if (this.f76783f) {
            if (!z) {
                return;
            }
            this.f76783f = false;
            c27434m.m315z(m326o);
            this.f76781d = 0;
        }
        while (c27434m.m340a() > 0) {
            int i2 = this.f76781d;
            if (i2 < 3) {
                if (i2 == 0) {
                    int m326o2 = c27434m.m326o();
                    c27434m.m315z(c27434m.f77201b - 1);
                    if (m326o2 == 255) {
                        this.f76783f = true;
                        return;
                    }
                }
                int min = Math.min(c27434m.m340a(), 3 - this.f76781d);
                c27434m.m338c(this.f76779b.f77200a, this.f76781d, min);
                int i3 = this.f76781d + min;
                this.f76781d = i3;
                if (i3 == 3) {
                    this.f76779b.m319v(3);
                    this.f76779b.m341A(1);
                    int m326o3 = this.f76779b.m326o();
                    int m326o4 = this.f76779b.m326o();
                    this.f76782e = (m326o3 & 128) != 0;
                    int i4 = (((m326o3 & 15) << 8) | m326o4) + 3;
                    this.f76780c = i4;
                    C27434m c27434m2 = this.f76779b;
                    byte[] bArr = c27434m2.f77200a;
                    if (bArr.length < i4) {
                        c27434m2.m319v(Math.min(4098, Math.max(i4, bArr.length * 2)));
                        System.arraycopy(bArr, 0, this.f76779b.f77200a, 0, 3);
                    }
                }
            } else {
                int min2 = Math.min(c27434m.m340a(), this.f76780c - this.f76781d);
                c27434m.m338c(this.f76779b.f77200a, this.f76781d, min2);
                int i5 = this.f76781d + min2;
                this.f76781d = i5;
                int i6 = this.f76780c;
                if (i5 != i6) {
                    continue;
                } else {
                    if (this.f76782e) {
                        byte[] bArr2 = this.f76779b.f77200a;
                        int i7 = C27445x.f77229a;
                        int i8 = -1;
                        for (int i9 = 0; i9 < i6; i9++) {
                            i8 = C27445x.f77238j[((i8 >>> 24) ^ (bArr2[i9] & 255)) & 255] ^ (i8 << 8);
                        }
                        if (i8 != 0) {
                            this.f76783f = true;
                            return;
                        }
                        this.f76779b.m319v(this.f76780c - 4);
                    } else {
                        this.f76779b.m319v(i6);
                    }
                    this.f76778a.mo609d(this.f76779b);
                    this.f76781d = 0;
                }
            }
        }
    }
}
