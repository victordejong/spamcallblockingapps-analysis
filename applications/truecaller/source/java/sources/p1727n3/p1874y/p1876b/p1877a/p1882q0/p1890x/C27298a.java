package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1890x;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.media2.exoplayer.external.Format;
import java.io.IOException;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.C27074c0;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27185m;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.y.b.a.q0.x.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/x/a.class */
public final class C27298a implements AbstractC27179g {

    /* renamed from: a */
    public AbstractC27180h f76792a;

    /* renamed from: b */
    public AbstractC27190p f76793b;

    /* renamed from: c */
    public C27299b f76794c;

    /* renamed from: d */
    public int f76795d;

    /* renamed from: e */
    public int f76796e;

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: a */
    public void mo606a(long j, long j2) {
        this.f76796e = 0;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: d */
    public void mo605d(AbstractC27180h abstractC27180h) {
        this.f76792a = abstractC27180h;
        this.f76793b = abstractC27180h.m750i(0, 1);
        this.f76794c = null;
        abstractC27180h.m751g();
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: h */
    public boolean mo604h(C27176d c27176d) throws IOException, InterruptedException {
        return MediaSessionCompat.m43236g1(c27176d) != null;
    }

    /* JADX WARN: Type inference failed for: r0v74, types: [long] */
    /* JADX WARN: Type inference failed for: r0v76, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    /* renamed from: i */
    public int mo603i(C27176d c27176d, C27185m c27185m) throws IOException, InterruptedException {
        if (this.f76794c == null) {
            C27299b m43236g1 = MediaSessionCompat.m43236g1(c27176d);
            this.f76794c = m43236g1;
            if (m43236g1 == null) {
                throw new C27074c0("Unsupported or unrecognized wav header.");
            }
            int i = m43236g1.f76798b;
            int i2 = m43236g1.f76801e;
            int i3 = m43236g1.f76797a;
            this.f76793b.mo740c(Format.m42843i(null, "audio/raw", null, i2 * i * i3, 32768, i3, i, m43236g1.f76802f, null, null, 0, null));
            this.f76795d = this.f76794c.f76800d;
        }
        C27299b c27299b = this.f76794c;
        int i4 = c27299b.f76803g;
        if (!(i4 != -1)) {
            Objects.requireNonNull(c27176d);
            Objects.requireNonNull(c27299b);
            c27176d.f76033f = 0;
            C27434m c27434m = new C27434m(8);
            C27300c m598a = C27300c.m598a(c27176d, c27434m);
            while (true) {
                C27300c c27300c = m598a;
                int i5 = c27300c.f76805a;
                if (i5 != 1684108385) {
                    char c = c27300c.f76806b + 8;
                    if (i5 == 1380533830) {
                        c = '\f';
                    }
                    if (c > 2147483647L) {
                        throw new C27074c0(C22128a.m8690L1(51, "Chunk is too large (~2GB+) to skip; id: ", c27300c.f76805a));
                    }
                    c27176d.m753h(c);
                    m598a = C27300c.m598a(c27176d, c27434m);
                } else {
                    c27176d.m753h(8);
                    int i6 = (int) c27176d.f76031d;
                    ?? r0 = i6 + c27300c.f76806b;
                    ?? r02 = c27176d.f76030c;
                    char c2 = r0;
                    if (r02 != -1) {
                        c2 = r0;
                        if (r0 > r02) {
                            c2 = r02;
                        }
                    }
                    c27299b.f76803g = i6;
                    c27299b.f76804h = c2;
                    this.f76792a.m749q(this.f76794c);
                }
            }
        } else if (c27176d.f76031d == 0) {
            c27176d.m753h(i4);
        }
        long j = this.f76794c.f76804h;
        MediaSessionCompat.m43184y(j != -1);
        long j2 = j - c27176d.f76031d;
        if (j2 <= 0) {
            return -1;
        }
        int mo742a = this.f76793b.mo742a(c27176d, (int) Math.min(32768 - this.f76796e, j2), true);
        if (mo742a != -1) {
            this.f76796e += mo742a;
        }
        int i7 = this.f76796e;
        int i8 = i7 / this.f76795d;
        if (i8 > 0) {
            long m600f = this.f76794c.m600f(c27176d.f76031d - i7);
            int i9 = i8 * this.f76795d;
            int i10 = this.f76796e - i9;
            this.f76796e = i10;
            this.f76793b.mo741b(m600f, 1, i9, i10, null);
        }
        return mo742a == -1 ? -1 : 0;
    }

    @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27179g
    public void release() {
    }
}
