package p012b.p076s.p078b.p079a.p086s0;

import java.io.IOException;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p086s0.AbstractC1358o;
/* renamed from: b.s.b.a.s0.a */
/* loaded from: classes-dex2jar.jar:b/s/b/a/s0/a.class */
public abstract class AbstractC1337a {

    /* renamed from: a */
    public final C1338a f5285a;

    /* renamed from: b */
    public final AbstractC1344g f5286b;

    /* renamed from: c */
    public C1341d f5287c;

    /* renamed from: d */
    public final int f5288d;

    /* renamed from: b.s.b.a.s0.a$a */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/a$a.class */
    public static class C1338a implements AbstractC1358o {

        /* renamed from: a */
        public final AbstractC1342e f5289a;

        /* renamed from: b */
        public final long f5290b;

        /* renamed from: c */
        public final long f5291c;

        /* renamed from: d */
        public final long f5292d;

        /* renamed from: e */
        public final long f5293e;

        /* renamed from: f */
        public final long f5294f;

        /* renamed from: g */
        public final long f5295g;

        public C1338a(AbstractC1342e eVar, long j, long j2, long j3, long j4, long j5, long j6) {
            this.f5289a = eVar;
            this.f5290b = j;
            this.f5291c = j2;
            this.f5292d = j3;
            this.f5293e = j4;
            this.f5294f = j5;
            this.f5295g = j6;
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
        /* renamed from: b */
        public AbstractC1358o.C1359a mo33118b(long j) {
            this.f5289a.mo33641a(j);
            return new AbstractC1358o.C1359a(new C1361p(j, C1341d.m33655a(j, this.f5291c, this.f5292d, this.f5293e, this.f5294f, this.f5295g)));
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
        /* renamed from: b */
        public boolean mo33119b() {
            return true;
        }

        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1358o
        /* renamed from: c */
        public long mo33117c() {
            return this.f5290b;
        }

        /* renamed from: c */
        public long m33661c(long j) {
            this.f5289a.mo33641a(j);
            return j;
        }
    }

    /* renamed from: b.s.b.a.s0.a$b */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/a$b.class */
    public static final class C1339b implements AbstractC1342e {
        @Override // p012b.p076s.p078b.p079a.p086s0.AbstractC1337a.AbstractC1342e
        /* renamed from: a */
        public long mo33641a(long j) {
            return j;
        }
    }

    /* renamed from: b.s.b.a.s0.a$c */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/a$c.class */
    public static final class C1340c {
    }

    /* renamed from: b.s.b.a.s0.a$d */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/a$d.class */
    public static class C1341d {

        /* renamed from: a */
        public final long f5296a;

        /* renamed from: b */
        public final long f5297b;

        /* renamed from: c */
        public final long f5298c;

        /* renamed from: d */
        public long f5299d;

        /* renamed from: e */
        public long f5300e;

        /* renamed from: f */
        public long f5301f;

        /* renamed from: g */
        public long f5302g;

        /* renamed from: h */
        public long f5303h;

        public C1341d(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.f5296a = j;
            this.f5297b = j2;
            this.f5299d = j3;
            this.f5300e = j4;
            this.f5301f = j5;
            this.f5302g = j6;
            this.f5298c = j7;
            this.f5303h = m33655a(j2, j3, j4, j5, j6, j7);
        }

        /* renamed from: a */
        public static long m33655a(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
            return C1167d0.m34455b(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }

        /* renamed from: a */
        public final long m33657a() {
            return this.f5302g;
        }

        /* renamed from: a */
        public final void m33656a(long j, long j2) {
            this.f5300e = j;
            this.f5302g = j2;
            m33642f();
        }

        /* renamed from: b */
        public final long m33652b() {
            return this.f5301f;
        }

        /* renamed from: b */
        public final void m33651b(long j, long j2) {
            this.f5299d = j;
            this.f5301f = j2;
            m33642f();
        }

        /* renamed from: c */
        public final long m33648c() {
            return this.f5303h;
        }

        /* renamed from: d */
        public final long m33646d() {
            return this.f5296a;
        }

        /* renamed from: e */
        public final long m33644e() {
            return this.f5297b;
        }

        /* renamed from: f */
        public final void m33642f() {
            this.f5303h = m33655a(this.f5297b, this.f5299d, this.f5300e, this.f5301f, this.f5302g, this.f5298c);
        }
    }

    /* renamed from: b.s.b.a.s0.a$e */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/a$e.class */
    public interface AbstractC1342e {
        /* renamed from: a */
        long mo33641a(long j);
    }

    /* renamed from: b.s.b.a.s0.a$f */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/a$f.class */
    public static final class C1343f {

        /* renamed from: d */
        public static final C1343f f5304d = new C1343f(-3, -9223372036854775807L, -1);

        /* renamed from: a */
        public final int f5305a;

        /* renamed from: b */
        public final long f5306b;

        /* renamed from: c */
        public final long f5307c;

        public C1343f(int i, long j, long j2) {
            this.f5305a = i;
            this.f5306b = j;
            this.f5307c = j2;
        }

        /* renamed from: a */
        public static C1343f m33640a(long j) {
            return new C1343f(0, -9223372036854775807L, j);
        }

        /* renamed from: a */
        public static C1343f m33639a(long j, long j2) {
            return new C1343f(-1, j, j2);
        }

        /* renamed from: b */
        public static C1343f m33637b(long j, long j2) {
            return new C1343f(-2, j, j2);
        }
    }

    /* renamed from: b.s.b.a.s0.a$g */
    /* loaded from: classes-dex2jar.jar:b/s/b/a/s0/a$g.class */
    public interface AbstractC1344g {
        /* renamed from: a */
        C1343f mo33145a(AbstractC1351h hVar, long j, C1340c cVar) throws IOException, InterruptedException;

        /* renamed from: a */
        void mo33148a();
    }

    public AbstractC1337a(AbstractC1342e eVar, AbstractC1344g gVar, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.f5286b = gVar;
        this.f5288d = i;
        this.f5285a = new C1338a(eVar, j, j2, j3, j4, j5, j6);
    }

    /* renamed from: a */
    public final int m33669a(AbstractC1351h hVar, long j, C1357n nVar) {
        if (j == hVar.getPosition()) {
            return 0;
        }
        nVar.f5355a = j;
        return 1;
    }

    /* renamed from: a */
    public int m33668a(AbstractC1351h hVar, C1357n nVar, C1340c cVar) throws InterruptedException, IOException {
        AbstractC1344g gVar = this.f5286b;
        C1160a.m34522a(gVar);
        AbstractC1344g gVar2 = gVar;
        while (true) {
            C1341d dVar = this.f5287c;
            C1160a.m34522a(dVar);
            C1341d dVar2 = dVar;
            long b = dVar2.m33652b();
            long a = dVar2.m33657a();
            long c = dVar2.m33648c();
            if (a - b <= this.f5288d) {
                m33667a(false, b);
                return m33669a(hVar, b, nVar);
            } else if (!m33670a(hVar, c)) {
                return m33669a(hVar, c, nVar);
            } else {
                hVar.mo33614c();
                C1343f a2 = gVar2.mo33145a(hVar, dVar2.m33644e(), cVar);
                int i = a2.f5305a;
                if (i == -3) {
                    m33667a(false, c);
                    return m33669a(hVar, c, nVar);
                } else if (i == -2) {
                    dVar2.m33651b(a2.f5306b, a2.f5307c);
                } else if (i == -1) {
                    dVar2.m33656a(a2.f5306b, a2.f5307c);
                } else if (i == 0) {
                    m33667a(true, a2.f5307c);
                    m33670a(hVar, a2.f5307c);
                    return m33669a(hVar, a2.f5307c, nVar);
                } else {
                    throw new IllegalStateException("Invalid case");
                }
            }
        }
    }

    /* renamed from: a */
    public C1341d m33671a(long j) {
        this.f5285a.m33661c(j);
        return new C1341d(j, j, this.f5285a.f5291c, this.f5285a.f5292d, this.f5285a.f5293e, this.f5285a.f5294f, this.f5285a.f5295g);
    }

    /* renamed from: a */
    public final AbstractC1358o m33672a() {
        return this.f5285a;
    }

    /* renamed from: a */
    public final void m33667a(boolean z, long j) {
        this.f5287c = null;
        this.f5286b.mo33148a();
        m33664b(z, j);
    }

    /* renamed from: a */
    public final boolean m33670a(AbstractC1351h hVar, long j) throws IOException, InterruptedException {
        long position = j - hVar.getPosition();
        if (position < 0 || position > 262144) {
            return false;
        }
        hVar.mo33613c((int) position);
        return true;
    }

    /* renamed from: b */
    public final void m33665b(long j) {
        C1341d dVar = this.f5287c;
        if (dVar == null || dVar.m33646d() != j) {
            this.f5287c = m33671a(j);
        }
    }

    /* renamed from: b */
    public void m33664b(boolean z, long j) {
    }

    /* renamed from: b */
    public final boolean m33666b() {
        return this.f5287c != null;
    }
}
