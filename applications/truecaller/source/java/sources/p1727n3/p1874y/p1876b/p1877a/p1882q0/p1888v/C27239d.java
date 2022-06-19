package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v;

import android.support.p001v4.media.session.MediaSessionCompat;
import java.io.IOException;
import java.util.Arrays;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.v.d */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/v/d.class */
public final class C27239d {

    /* renamed from: a */
    public final C27240e f76416a = new C27240e();

    /* renamed from: b */
    public final C27434m f76417b = new C27434m(new byte[65025], 0);

    /* renamed from: c */
    public int f76418c = -1;

    /* renamed from: d */
    public int f76419d;

    /* renamed from: e */
    public boolean f76420e;

    /* renamed from: a */
    public final int m665a(int i) {
        int i2;
        int i3;
        int i4 = 0;
        this.f76419d = 0;
        do {
            int i5 = this.f76419d;
            C27240e c27240e = this.f76416a;
            i2 = i4;
            if (i + i5 >= c27240e.f76424d) {
                break;
            }
            int[] iArr = c27240e.f76427g;
            this.f76419d = i5 + 1;
            i3 = iArr[i5 + i];
            i2 = i4 + i3;
            i4 = i2;
        } while (i3 == 255);
        return i2;
    }

    /* renamed from: b */
    public boolean m664b(C27176d c27176d) throws IOException, InterruptedException {
        int i;
        MediaSessionCompat.m43184y(c27176d != null);
        if (this.f76420e) {
            this.f76420e = false;
            this.f76417b.m320u();
        }
        while (!this.f76420e) {
            if (this.f76418c < 0) {
                if (!this.f76416a.m663a(c27176d, true)) {
                    return false;
                }
                C27240e c27240e = this.f76416a;
                int i2 = c27240e.f76425e;
                if ((c27240e.f76422b & 1) == 1 && this.f76417b.f77202c == 0) {
                    i2 += m665a(0);
                    i = this.f76419d + 0;
                } else {
                    i = 0;
                }
                c27176d.m753h(i2);
                this.f76418c = i;
            }
            int m665a = m665a(this.f76418c);
            int i3 = this.f76418c + this.f76419d;
            if (m665a > 0) {
                C27434m c27434m = this.f76417b;
                byte[] bArr = c27434m.f77200a;
                int length = bArr.length;
                int i4 = c27434m.f77202c;
                if (length < i4 + m665a) {
                    c27434m.f77200a = Arrays.copyOf(bArr, i4 + m665a);
                }
                C27434m c27434m2 = this.f76417b;
                c27176d.m754g(c27434m2.f77200a, c27434m2.f77202c, m665a, false);
                C27434m c27434m3 = this.f76417b;
                c27434m3.m316y(c27434m3.f77202c + m665a);
                this.f76420e = this.f76416a.f76427g[i3 - 1] != 255;
            }
            int i5 = i3;
            if (i3 == this.f76416a.f76424d) {
                i5 = -1;
            }
            this.f76418c = i5;
        }
        return true;
    }
}
