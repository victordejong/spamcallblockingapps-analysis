package p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v;

import androidx.media2.exoplayer.external.Format;
import java.io.IOException;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27180h;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27190p;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.C27176d;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27434m;
/* renamed from: n3.y.b.a.q0.v.h */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/v/h.class */
public abstract class AbstractC27243h {

    /* renamed from: a */
    public final C27239d f76431a = new C27239d();

    /* renamed from: b */
    public AbstractC27190p f76432b;

    /* renamed from: c */
    public AbstractC27180h f76433c;

    /* renamed from: d */
    public AbstractC27241f f76434d;

    /* renamed from: e */
    public long f76435e;

    /* renamed from: f */
    public long f76436f;

    /* renamed from: g */
    public long f76437g;

    /* renamed from: h */
    public int f76438h;

    /* renamed from: i */
    public int f76439i;

    /* renamed from: j */
    public C27245b f76440j;

    /* renamed from: k */
    public long f76441k;

    /* renamed from: l */
    public boolean f76442l;

    /* renamed from: m */
    public boolean f76443m;

    /* renamed from: n3.y.b.a.q0.v.h$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/v/h$b.class */
    public static class C27245b {

        /* renamed from: a */
        public Format f76444a;

        /* renamed from: b */
        public AbstractC27241f f76445b;
    }

    /* renamed from: n3.y.b.a.q0.v.h$c */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/v/h$c.class */
    public static final class C27246c implements AbstractC27241f {
        public C27246c(C27244a c27244a) {
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27241f
        /* renamed from: a */
        public AbstractC27186n mo658a() {
            return new AbstractC27186n.C27188b(-9223372036854775807L, 0L);
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27241f
        /* renamed from: d */
        public void mo657d(long j) {
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.p1888v.AbstractC27241f
        /* renamed from: h */
        public long mo656h(C27176d c27176d) {
            return -1L;
        }
    }

    /* renamed from: a */
    public long m660a(long j) {
        return (j * 1000000) / this.f76439i;
    }

    /* renamed from: b */
    public long m659b(long j) {
        return (this.f76439i * j) / 1000000;
    }

    /* renamed from: c */
    public void mo652c(long j) {
        this.f76437g = j;
    }

    /* renamed from: d */
    public abstract long mo651d(C27434m c27434m);

    /* renamed from: e */
    public abstract boolean mo650e(C27434m c27434m, long j, C27245b c27245b) throws IOException, InterruptedException;

    /* renamed from: f */
    public void mo649f(boolean z) {
        if (z) {
            this.f76440j = new C27245b();
            this.f76436f = 0L;
            this.f76438h = 0;
        } else {
            this.f76438h = 1;
        }
        this.f76435e = -1L;
        this.f76437g = 0L;
    }
}
