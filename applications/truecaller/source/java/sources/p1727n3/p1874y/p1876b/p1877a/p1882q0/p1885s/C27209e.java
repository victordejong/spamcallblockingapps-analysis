package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1885s;

import java.io.IOException;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.s.e */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/s/e.class */
public final class C27209e {

    /* renamed from: a */
    public final C27434m f76238a = new C27434m(8);

    /* renamed from: b */
    public int f76239b;

    /* renamed from: a */
    public final long m711a(C27176d c27176d) throws IOException, InterruptedException {
        int i = 0;
        c27176d.m757d(this.f76238a.f77200a, 0, 1, false);
        int i2 = this.f76238a.f77200a[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (i3 ^ (-1));
        c27176d.m757d(this.f76238a.f77200a, 1, i4, false);
        while (i < i4) {
            i++;
            i5 = (this.f76238a.f77200a[i] & 255) + (i5 << 8);
        }
        this.f76239b = i4 + 1 + this.f76239b;
        return i5;
    }
}
