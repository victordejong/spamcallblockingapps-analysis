package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media2.exoplayer.external.Format;
import java.io.IOException;
import java.util.Arrays;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27185m;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27243h;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.v.c */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/v/c.class */
public class C27238c implements AbstractC27179g {

    /* renamed from: a */
    public AbstractC27180h f76413a;

    /* renamed from: b */
    public AbstractC27243h f76414b;

    /* renamed from: c */
    public boolean f76415c;

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: a */
    public void mo606a(long j, long j2) {
        AbstractC27243h abstractC27243h = this.f76414b;
        if (abstractC27243h != null) {
            C27239d c27239d = abstractC27243h.f76431a;
            c27239d.f76416a.m662b();
            c27239d.f76417b.m320u();
            c27239d.f76418c = -1;
            c27239d.f76420e = false;
            if (j == 0) {
                abstractC27243h.mo649f(!abstractC27243h.f76442l);
            } else if (abstractC27243h.f76438h == 0) {
            } else {
                long j3 = (abstractC27243h.f76439i * j2) / 1000000;
                abstractC27243h.f76435e = j3;
                abstractC27243h.f76434d.mo657d(j3);
                abstractC27243h.f76438h = 2;
            }
        }
    }

    /* renamed from: b */
    public final boolean m666b(C27176d c27176d) throws IOException, InterruptedException {
        boolean z;
        boolean z2;
        C27240e c27240e = new C27240e();
        if (!c27240e.m663a(c27176d, true) || (c27240e.f76422b & 2) != 2) {
            return false;
        }
        int min = Math.min(c27240e.f76426f, 8);
        C27434m c27434m = new C27434m(min);
        c27176d.m757d(c27434m.f77200a, 0, min, false);
        c27434m.m315z(0);
        if (c27434m.m340a() >= 5 && c27434m.m326o() == 127 && c27434m.m325p() == 1179402563) {
            this.f76414b = new C27236b();
            return true;
        }
        c27434m.m315z(0);
        try {
            z = MediaSessionCompat.m43287L1(1, c27434m, true);
        } catch (C27074c0 e) {
            z = false;
        }
        if (z) {
            this.f76414b = new C27248j();
            return true;
        }
        c27434m.m315z(0);
        int m340a = c27434m.m340a();
        byte[] bArr = C27242g.f76429o;
        if (m340a < bArr.length) {
            z2 = false;
        } else {
            byte[] bArr2 = new byte[bArr.length];
            int length = bArr.length;
            System.arraycopy(c27434m.f77200a, c27434m.f77201b, bArr2, 0, length);
            c27434m.f77201b += length;
            z2 = Arrays.equals(bArr2, bArr);
        }
        if (!z2) {
            return false;
        }
        this.f76414b = new C27242g();
        return true;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: d */
    public void mo605d(AbstractC27180h abstractC27180h) {
        this.f76413a = abstractC27180h;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: h */
    public boolean mo604h(C27176d c27176d) throws IOException, InterruptedException {
        try {
            return m666b(c27176d);
        } catch (C27074c0 e) {
            return false;
        }
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: i */
    public int mo603i(C27176d c27176d, C27185m c27185m) throws IOException, InterruptedException {
        int i = 0;
        if (this.f76414b == null) {
            if (!m666b(c27176d)) {
                throw new C27074c0("Failed to determine bitstream type");
            }
            c27176d.f76033f = 0;
        }
        if (!this.f76415c) {
            AbstractC27190p m750i = this.f76413a.m750i(0, 1);
            this.f76413a.m751g();
            AbstractC27243h abstractC27243h = this.f76414b;
            abstractC27243h.f76433c = this.f76413a;
            abstractC27243h.f76432b = m750i;
            abstractC27243h.mo649f(true);
            this.f76415c = true;
        }
        AbstractC27243h abstractC27243h2 = this.f76414b;
        int i2 = abstractC27243h2.f76438h;
        if (i2 != 0) {
            if (i2 == 1) {
                c27176d.m753h((int) abstractC27243h2.f76436f);
                abstractC27243h2.f76438h = 2;
            } else if (i2 != 2) {
                throw new IllegalStateException();
            } else {
                long mo656h = abstractC27243h2.f76434d.mo656h(c27176d);
                if (mo656h < 0) {
                    if (mo656h < -1) {
                        abstractC27243h2.mo652c(-(mo656h + 2));
                    }
                    if (!abstractC27243h2.f76442l) {
                        abstractC27243h2.f76433c.m749q(abstractC27243h2.f76434d.mo658a());
                        abstractC27243h2.f76442l = true;
                    }
                    if (abstractC27243h2.f76441k <= 0 && !abstractC27243h2.f76431a.m664b(c27176d)) {
                        abstractC27243h2.f76438h = 3;
                        i = -1;
                        break;
                    }
                    abstractC27243h2.f76441k = 0L;
                    C27434m c27434m = abstractC27243h2.f76431a.f76417b;
                    long mo651d = abstractC27243h2.mo651d(c27434m);
                    if (mo651d >= 0) {
                        long j = abstractC27243h2.f76437g;
                        if (j + mo651d >= abstractC27243h2.f76435e) {
                            long m660a = abstractC27243h2.m660a(j);
                            abstractC27243h2.f76432b.mo739d(c27434m, c27434m.f77202c);
                            abstractC27243h2.f76432b.mo741b(m660a, 1, c27434m.f77202c, 0, null);
                            abstractC27243h2.f76435e = -1L;
                        }
                    }
                    abstractC27243h2.f76437g += mo651d;
                } else {
                    c27185m.f76055a = mo656h;
                    i = 1;
                }
            }
            return i;
        }
        boolean z = true;
        while (z) {
            if (!abstractC27243h2.f76431a.m664b(c27176d)) {
                abstractC27243h2.f76438h = 3;
                i = -1;
                break;
            }
            long j2 = c27176d.f76031d;
            long j3 = abstractC27243h2.f76436f;
            abstractC27243h2.f76441k = j2 - j3;
            boolean mo650e = abstractC27243h2.mo650e(abstractC27243h2.f76431a.f76417b, j3, abstractC27243h2.f76440j);
            z = mo650e;
            if (mo650e) {
                abstractC27243h2.f76436f = c27176d.f76031d;
                z = mo650e;
            }
        }
        Format format = abstractC27243h2.f76440j.f76444a;
        abstractC27243h2.f76439i = format.f974w;
        if (!abstractC27243h2.f76443m) {
            abstractC27243h2.f76432b.mo740c(format);
            abstractC27243h2.f76443m = true;
        }
        AbstractC27241f abstractC27241f = abstractC27243h2.f76440j.f76445b;
        if (abstractC27241f != null) {
            abstractC27243h2.f76434d = abstractC27241f;
        } else {
            long j4 = c27176d.f76030c;
            if (j4 == -1) {
                abstractC27243h2.f76434d = new AbstractC27243h.C27246c(null);
            } else {
                C27240e c27240e = abstractC27243h2.f76431a.f76416a;
                abstractC27243h2.f76434d = new C27233a(abstractC27243h2, abstractC27243h2.f76436f, j4, c27240e.f76425e + c27240e.f76426f, c27240e.f76423c, (c27240e.f76422b & 4) != 0);
            }
        }
        abstractC27243h2.f76440j = null;
        abstractC27243h2.f76438h = 2;
        C27434m c27434m2 = abstractC27243h2.f76431a.f76417b;
        byte[] bArr = c27434m2.f77200a;
        if (bArr.length != 65025) {
            c27434m2.f77200a = Arrays.copyOf(bArr, Math.max(65025, c27434m2.f77202c));
        }
        return i;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    public void release() {
    }
}
