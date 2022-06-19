package p193e.p1577m.p1578a.p1596c.p1602g1;

import java.io.IOException;
import java.util.Objects;
import p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
/* renamed from: e.m.a.c.g1.a */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/a.class */
public abstract class AbstractC24287a {

    /* renamed from: a */
    public final C24288a f67335a;

    /* renamed from: b */
    public final AbstractC24293f f67336b;

    /* renamed from: c */
    public C24290c f67337c;

    /* renamed from: d */
    public final int f67338d;

    /* renamed from: e.m.a.c.g1.a$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/a$a.class */
    public static class C24288a implements AbstractC24418q {

        /* renamed from: a */
        public final AbstractC24291d f67339a;

        /* renamed from: b */
        public final long f67340b;

        /* renamed from: c */
        public final long f67341c;

        /* renamed from: d */
        public final long f67342d;

        /* renamed from: e */
        public final long f67343e;

        /* renamed from: f */
        public final long f67344f;

        /* renamed from: g */
        public final long f67345g;

        public C24288a(AbstractC24291d abstractC24291d, long j, long j2, long j3, long j4, long j5, long j6) {
            this.f67339a = abstractC24291d;
            this.f67340b = j;
            this.f67341c = j2;
            this.f67342d = j3;
            this.f67343e = j4;
            this.f67344f = j5;
            this.f67345g = j6;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
        /* renamed from: b */
        public AbstractC24418q.C24419a mo5144b(long j) {
            return new AbstractC24418q.C24419a(new C24421r(j, C24290c.m5303a(this.f67339a.mo5136a(j), this.f67341c, this.f67342d, this.f67343e, this.f67344f, this.f67345g)));
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
        /* renamed from: c */
        public boolean mo5143c() {
            return true;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24418q
        /* renamed from: g */
        public long mo5142g() {
            return this.f67340b;
        }
    }

    /* renamed from: e.m.a.c.g1.a$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/a$b.class */
    public static final class C24289b implements AbstractC24291d {
        @Override // p193e.p1577m.p1578a.p1596c.p1602g1.AbstractC24287a.AbstractC24291d
        /* renamed from: a */
        public long mo5136a(long j) {
            return j;
        }
    }

    /* renamed from: e.m.a.c.g1.a$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/a$c.class */
    public static class C24290c {

        /* renamed from: a */
        public final long f67346a;

        /* renamed from: b */
        public final long f67347b;

        /* renamed from: c */
        public final long f67348c;

        /* renamed from: d */
        public long f67349d;

        /* renamed from: e */
        public long f67350e;

        /* renamed from: f */
        public long f67351f;

        /* renamed from: g */
        public long f67352g;

        /* renamed from: h */
        public long f67353h;

        public C24290c(long j, long j2, long j3, long j4, long j5, long j6, long j7) {
            this.f67346a = j;
            this.f67347b = j2;
            this.f67349d = j3;
            this.f67350e = j4;
            this.f67351f = j5;
            this.f67352g = j6;
            this.f67348c = j7;
            this.f67353h = m5303a(j2, j3, j4, j5, j6, j7);
        }

        /* renamed from: a */
        public static long m5303a(long j, long j2, long j3, long j4, long j5, long j6) {
            if (j4 + 1 >= j5 || j2 + 1 >= j3) {
                return j4;
            }
            long j7 = ((float) (j - j2)) * (((float) (j5 - j4)) / ((float) (j3 - j2)));
            return C24773d0.m4617g(((j7 + j4) - j6) - (j7 / 20), j4, j5 - 1);
        }
    }

    /* renamed from: e.m.a.c.g1.a$d */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/a$d.class */
    public interface AbstractC24291d {
        /* renamed from: a */
        long mo5136a(long j);
    }

    /* renamed from: e.m.a.c.g1.a$e */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/a$e.class */
    public static final class C24292e {

        /* renamed from: d */
        public static final C24292e f67354d = new C24292e(-3, -9223372036854775807L, -1);

        /* renamed from: a */
        public final int f67355a;

        /* renamed from: b */
        public final long f67356b;

        /* renamed from: c */
        public final long f67357c;

        public C24292e(int i, long j, long j2) {
            this.f67355a = i;
            this.f67356b = j;
            this.f67357c = j2;
        }

        /* renamed from: a */
        public static C24292e m5302a(long j, long j2) {
            return new C24292e(-1, j, j2);
        }

        /* renamed from: b */
        public static C24292e m5301b(long j) {
            return new C24292e(0, -9223372036854775807L, j);
        }

        /* renamed from: c */
        public static C24292e m5300c(long j, long j2) {
            return new C24292e(-2, j, j2);
        }
    }

    /* renamed from: e.m.a.c.g1.a$f */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/g1/a$f.class */
    public interface AbstractC24293f {
        /* renamed from: a */
        void mo5135a();

        /* renamed from: b */
        C24292e mo5134b(C24353e c24353e, long j) throws IOException, InterruptedException;
    }

    public AbstractC24287a(AbstractC24291d abstractC24291d, AbstractC24293f abstractC24293f, long j, long j2, long j3, long j4, long j5, long j6, int i) {
        this.f67336b = abstractC24293f;
        this.f67338d = i;
        this.f67335a = new C24288a(abstractC24291d, j, j2, j3, j4, j5, j6);
    }

    /* renamed from: a */
    public int m5309a(C24353e c24353e, C24417p c24417p) throws InterruptedException, IOException {
        AbstractC24293f abstractC24293f = this.f67336b;
        Objects.requireNonNull(abstractC24293f);
        while (true) {
            C24290c c24290c = this.f67337c;
            Objects.requireNonNull(c24290c);
            long j = c24290c.f67351f;
            long j2 = c24290c.f67352g;
            long j3 = c24290c.f67353h;
            if (j2 - j <= this.f67338d) {
                m5307c(false, j);
                return m5306d(c24353e, j, c24417p);
            } else if (!m5304f(c24353e, j3)) {
                return m5306d(c24353e, j3, c24417p);
            } else {
                c24353e.f67728f = 0;
                C24292e mo5134b = abstractC24293f.mo5134b(c24353e, c24290c.f67347b);
                int i = mo5134b.f67355a;
                if (i == -3) {
                    m5307c(false, j3);
                    return m5306d(c24353e, j3, c24417p);
                } else if (i == -2) {
                    long j4 = mo5134b.f67356b;
                    long j5 = mo5134b.f67357c;
                    c24290c.f67349d = j4;
                    c24290c.f67351f = j5;
                    c24290c.f67353h = C24290c.m5303a(c24290c.f67347b, j4, c24290c.f67350e, j5, c24290c.f67352g, c24290c.f67348c);
                } else if (i != -1) {
                    if (i != 0) {
                        throw new IllegalStateException("Invalid case");
                    }
                    m5307c(true, mo5134b.f67357c);
                    m5304f(c24353e, mo5134b.f67357c);
                    return m5306d(c24353e, mo5134b.f67357c, c24417p);
                } else {
                    long j6 = mo5134b.f67356b;
                    long j7 = mo5134b.f67357c;
                    c24290c.f67350e = j6;
                    c24290c.f67352g = j7;
                    c24290c.f67353h = C24290c.m5303a(c24290c.f67347b, c24290c.f67349d, j6, c24290c.f67351f, j7, c24290c.f67348c);
                }
            }
        }
    }

    /* renamed from: b */
    public final boolean m5308b() {
        return this.f67337c != null;
    }

    /* renamed from: c */
    public final void m5307c(boolean z, long j) {
        this.f67337c = null;
        this.f67336b.mo5135a();
    }

    /* renamed from: d */
    public final int m5306d(C24353e c24353e, long j, C24417p c24417p) {
        if (j == c24353e.f67726d) {
            return 0;
        }
        c24417p.f68116a = j;
        return 1;
    }

    /* renamed from: e */
    public final void m5305e(long j) {
        C24290c c24290c = this.f67337c;
        if (c24290c == null || c24290c.f67346a != j) {
            long mo5136a = this.f67335a.f67339a.mo5136a(j);
            C24288a c24288a = this.f67335a;
            this.f67337c = new C24290c(j, mo5136a, c24288a.f67341c, c24288a.f67342d, c24288a.f67343e, c24288a.f67344f, c24288a.f67345g);
        }
    }

    /* renamed from: f */
    public final boolean m5304f(C24353e c24353e, long j) throws IOException, InterruptedException {
        long j2 = j - c24353e.f67726d;
        if (j2 < 0 || j2 > 262144) {
            return false;
        }
        c24353e.m5206i((int) j2);
        return true;
    }
}
