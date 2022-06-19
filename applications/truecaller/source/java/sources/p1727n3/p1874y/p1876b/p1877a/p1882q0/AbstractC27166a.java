package p1727n3.p1874y.p1876b.p1877a.p1882q0;

import java.io.IOException;
import java.util.Objects;
import p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n;
import p1727n3.p1874y.p1876b.p1877a.p1904x0.C27445x;
/* renamed from: n3.y.b.a.q0.a */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/a.class */
public abstract class AbstractC27166a {

    /* renamed from: a */
    public final C27167a f75993a;

    /* renamed from: b */
    public final AbstractC27173g f75994b;

    /* renamed from: c */
    public C27170d f75995c;

    /* renamed from: d */
    public final int f75996d;

    /* renamed from: n3.y.b.a.q0.a$a */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/a$a.class */
    public static class C27167a implements AbstractC27186n {

        /* renamed from: a */
        public final AbstractC27171e f75997a;

        /* renamed from: b */
        public final long f75998b;

        /* renamed from: c */
        public final long f75999c;

        /* renamed from: d */
        public final long f76000d;

        /* renamed from: e */
        public final long f76001e;

        /* renamed from: f */
        public final long f76002f;

        /* renamed from: g */
        public final long f76003g;

        public C27167a(AbstractC27171e abstractC27171e, long j, long j2, long j3, long j4, long j5, long j6) {
            this.f75997a = abstractC27171e;
            this.f75998b = j;
            this.f75999c = j2;
            this.f76000d = j3;
            this.f76001e = j4;
            this.f76002f = j5;
            this.f76003g = j6;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
        /* renamed from: b */
        public AbstractC27186n.C27187a mo602b(long j) {
            Objects.requireNonNull((C27168b) this.f75997a);
            return new AbstractC27186n.C27187a(new C27189o(j, C27170d.m764a(j, this.f75999c, this.f76000d, this.f76001e, this.f76002f, this.f76003g)));
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
        /* renamed from: c */
        public boolean mo601c() {
            return true;
        }

        @Override // p1727n3.p1874y.p1876b.p1877a.p1882q0.AbstractC27186n
        /* renamed from: g */
        public long mo599g() {
            return this.f75998b;
        }
    }

    /* renamed from: n3.y.b.a.q0.a$b */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/a$b.class */
    public static final class C27168b implements AbstractC27171e {
    }

    /* renamed from: n3.y.b.a.q0.a$c */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/a$c.class */
    public static final class C27169c {
    }

    /* renamed from: n3.y.b.a.q0.a$d */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/a$d.class */
    public static class C27170d {

        /* renamed from: a */
        public final long f76004a;

        /* renamed from: b */
        public final long f76005b;

        /* renamed from: c */
        public final long f76006c;

        /* renamed from: d */
        public long f76007d;

        /* renamed from: e */
        public long f76008e;

        /* renamed from: f */
        public long f76009f;

        /* renamed from: g */
        public long f76010g;

        /* renamed from: h */
        public long f76011h;

        public C27170d(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.f76004a = j;
            this.f76005b = j2;
            this.f76007d = j3;
            this.f76008e = j4;
            this.f76009f = j5;
            this.f76010g = j6;
            this.f76006c = j7;
            this.f76011h = m764a(j2, j3, j4, j5, j6, j7);
        }

        /* renamed from: a */
        public static long m764a(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
            return C27445x.m279h(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }
    }

    /* renamed from: n3.y.b.a.q0.a$e */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/a$e.class */
    public interface AbstractC27171e {
    }

    /* renamed from: n3.y.b.a.q0.a$f */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/a$f.class */
    public static final class C27172f {

        /* renamed from: d */
        public static final C27172f f76012d = new C27172f(-3, -9223372036854775807L, -1);

        /* renamed from: a */
        public final int f76013a;

        /* renamed from: b */
        public final long f76014b;

        /* renamed from: c */
        public final long f76015c;

        public C27172f(int i, long j, long j2) {
            this.f76013a = i;
            this.f76014b = j;
            this.f76015c = j2;
        }

        /* renamed from: a */
        public static C27172f m763a(long j) {
            return new C27172f(0, -9223372036854775807L, j);
        }
    }

    /* renamed from: n3.y.b.a.q0.a$g */
    /* loaded from: classes-dex2jar.jar:n3/y/b/a/q0/a$g.class */
    public interface AbstractC27173g {
        /* renamed from: a */
        void mo608a();

        /* renamed from: b */
        C27172f mo607b(C27176d c27176d, long j, C27169c c27169c) throws IOException, InterruptedException;
    }

    public AbstractC27166a(AbstractC27171e abstractC27171e, AbstractC27173g abstractC27173g, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.f75994b = abstractC27173g;
        this.f75996d = i;
        this.f75993a = new C27167a(abstractC27171e, j, j2, j3, j4, j5, j6);
    }

    /* renamed from: a */
    public int m769a(C27176d c27176d, C27185m c27185m, C27169c c27169c) throws InterruptedException, IOException {
        AbstractC27173g abstractC27173g = this.f75994b;
        Objects.requireNonNull(abstractC27173g);
        while (true) {
            C27170d c27170d = this.f75995c;
            Objects.requireNonNull(c27170d);
            long j = c27170d.f76009f;
            long j2 = c27170d.f76010g;
            long j3 = c27170d.f76011h;
            if (j2 - j <= this.f75996d) {
                m768b(false, j);
                return m767c(c27176d, j, c27185m);
            } else if (!m765e(c27176d, j3)) {
                return m767c(c27176d, j3, c27185m);
            } else {
                c27176d.f76033f = 0;
                C27172f mo607b = abstractC27173g.mo607b(c27176d, c27170d.f76005b, null);
                int i = mo607b.f76013a;
                if (i == -3) {
                    m768b(false, j3);
                    return m767c(c27176d, j3, c27185m);
                } else if (i == -2) {
                    long j4 = mo607b.f76014b;
                    long j5 = mo607b.f76015c;
                    c27170d.f76007d = j4;
                    c27170d.f76009f = j5;
                    c27170d.f76011h = C27170d.m764a(c27170d.f76005b, j4, c27170d.f76008e, j5, c27170d.f76010g, c27170d.f76006c);
                } else if (i != -1) {
                    if (i != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    m768b(true, mo607b.f76015c);
                    m765e(c27176d, mo607b.f76015c);
                    return m767c(c27176d, mo607b.f76015c, c27185m);
                } else {
                    long j6 = mo607b.f76014b;
                    long j7 = mo607b.f76015c;
                    c27170d.f76008e = j6;
                    c27170d.f76010g = j7;
                    c27170d.f76011h = C27170d.m764a(c27170d.f76005b, c27170d.f76007d, j6, c27170d.f76009f, j7, c27170d.f76006c);
                }
            }
        }
    }

    /* renamed from: b */
    public final void m768b(boolean z, long j) {
        this.f75995c = null;
        this.f75994b.mo608a();
    }

    /* renamed from: c */
    public final int m767c(C27176d c27176d, long j, C27185m c27185m) {
        if (j == c27176d.f76031d) {
            return 0;
        }
        c27185m.f76055a = j;
        return 1;
    }

    /* renamed from: d */
    public final void m766d(long j) {
        C27170d c27170d = this.f75995c;
        if (c27170d == null || c27170d.f76004a != j) {
            Objects.requireNonNull((C27168b) this.f75993a.f75997a);
            C27167a c27167a = this.f75993a;
            this.f75995c = new C27170d(j, j, c27167a.f75999c, c27167a.f76000d, c27167a.f76001e, c27167a.f76002f, c27167a.f76003g);
        }
    }

    /* renamed from: e */
    public final boolean m765e(C27176d c27176d, long j) throws IOException, InterruptedException {
        long j2 = j - c27176d.f76031d;
        if (j2 < 0 || j2 > 262144) {
            return false;
        }
        c27176d.m753h((int) j2);
        return true;
    }
}
