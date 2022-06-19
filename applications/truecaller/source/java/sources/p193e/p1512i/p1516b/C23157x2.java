package p193e.p1512i.p1516b;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import e.m.e.k;
import java.util.Objects;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import p1727n3.p1789g0.C26232y;
import p193e.p1512i.p1516b.C23157x2;
import p193e.p1512i.p1516b.p1519d2.C22934b;
import p193e.p1512i.p1516b.p1519d2.C22935c;
import p193e.p1512i.p1516b.p1520f3.C22947c;
import p193e.p1512i.p1516b.p1522i2.C22961c;
import p193e.p1512i.p1516b.p1522i2.C22965f;
import p193e.p1512i.p1516b.p1522i2.C22967g;
import p193e.p1512i.p1516b.p1523l2.C22977a;
import p193e.p1512i.p1516b.p1523l2.C22978b;
import p193e.p1512i.p1516b.p1528q2.C23033o;
import p193e.p1512i.p1516b.p1529r1.C23042e;
import p193e.p1512i.p1516b.p1530s1.AbstractC23068a;
import p193e.p1512i.p1516b.p1530s1.C23071d;
import p193e.p1512i.p1516b.p1531s2.C23073b;
import p193e.p1512i.p1516b.p1531s2.C23078c;
import p193e.p1512i.p1516b.p1531s2.C23080f;
import p193e.p1512i.p1516b.p1531s2.C23086i;
import p193e.p1512i.p1516b.p1531s2.C23087j;
import p193e.p1512i.p1516b.p1532u1.C23099a;
import p193e.p1512i.p1516b.p1533u2.C23116c0;
import p193e.p1512i.p1516b.p1533u2.C23124i;
import p193e.p1512i.p1516b.p1533u2.C23128r;
import p193e.p1512i.p1516b.p1533u2.C23132x;
import p193e.p1512i.p1516b.p1533u2.C23134y;
import p193e.p1512i.p1516b.p1536w1.C23150d;
import p193e.p1512i.p1516b.p1536w1.ExecutorC23149c;
import p193e.p1512i.p1516b.p1537z1.AbstractC23181e0;
import p193e.p1512i.p1516b.p1537z1.AbstractC23188h;
import p193e.p1512i.p1516b.p1537z1.AbstractC23202u;
import p193e.p1512i.p1516b.p1537z1.C23187g0;
import p193e.p1512i.p1516b.p1537z1.C23194j0;
import p193e.p1512i.p1516b.p1537z1.C23199o;
import p193e.p1512i.p1516b.p1537z1.C23201t;
/* renamed from: e.i.b.x2 */
/* loaded from: classes-dex2jar.jar:e/i/b/x2.class */
public class C23157x2 {

    /* renamed from: d */
    public static C23157x2 f64123d;

    /* renamed from: a */
    public final ConcurrentMap<Class<?>, Object> f64124a = new ConcurrentHashMap();

    /* renamed from: b */
    public Application f64125b;

    /* renamed from: c */
    public String f64126c;

    /* renamed from: e.i.b.x2$a */
    /* loaded from: classes-dex2jar.jar:e/i/b/x2$a.class */
    public interface AbstractC23158a<T> {
        /* renamed from: a */
        T mo7423a();
    }

    /* renamed from: h */
    public static C23157x2 m7454h() {
        C23157x2 c23157x2;
        synchronized (C23157x2.class) {
            try {
                if (f64123d == null) {
                    f64123d = new C23157x2();
                }
                c23157x2 = f64123d;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c23157x2;
    }

    /* renamed from: a */
    public C23086i m7461a() {
        return (C23086i) C26232y.m2364e(this.f64124a, C23086i.class, new k1(new AbstractC23158a() { // from class: e.i.b.e0
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                return new C23086i(C23157x2.this.m7439w());
            }
        }));
    }

    /* renamed from: b */
    public C22935c m7460b() {
        return (C22935c) C26232y.m2364e(this.f64124a, C22935c.class, new k1(new AbstractC23158a() { // from class: e.i.b.q0
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                C23157x2 c23157x2 = C23157x2.this;
                return new C22935c(c23157x2.m7448n(), (C22934b) C26232y.m2364e(c23157x2.f64124a, C22934b.class, new k1(C22968j.f63691a)));
            }
        }));
    }

    /* renamed from: c */
    public C23087j m7459c() {
        return (C23087j) C26232y.m2364e(this.f64124a, C23087j.class, new k1(new AbstractC23158a() { // from class: e.i.b.p0
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                return new C23087j((k) C26232y.m2364e(C23157x2.this.f64124a, k.class, new k1(C23008q.f63774a)));
            }
        }));
    }

    /* renamed from: d */
    public C22967g m7458d() {
        return (C22967g) C26232y.m2364e(this.f64124a, C22967g.class, new k1(new AbstractC23158a() { // from class: e.i.b.w0
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                C23157x2 c23157x2 = C23157x2.this;
                return new C22967g(c23157x2.m7443s(), c23157x2.m7459c());
            }
        }));
    }

    /* renamed from: e */
    public final <T> AbstractC23202u<T> m7457e(AbstractC23188h<T> abstractC23188h) {
        return new C23201t(new C23199o(new C23194j0(m7439w(), m7459c(), abstractC23188h), abstractC23188h), abstractC23188h);
    }

    /* renamed from: f */
    public final void m7456f() {
        if (this.f64125b != null) {
            return;
        }
        throw new C23153w2("Application reference is required");
    }

    /* renamed from: g */
    public C23042e m7455g() {
        return (C23042e) C26232y.m2364e(this.f64124a, C23042e.class, new k1(new AbstractC23158a() { // from class: e.i.b.n
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                C23157x2 c23157x2 = C23157x2.this;
                return new C23042e(c23157x2.m7443s(), c23157x2.m7450l());
            }
        }));
    }

    /* renamed from: i */
    public ExecutorC23149c m7453i() {
        return (ExecutorC23149c) C26232y.m2364e(this.f64124a, ExecutorC23149c.class, new k1(C22941f.f63632a));
    }

    /* renamed from: j */
    public boolean m7452j() {
        try {
            m7454h().m7456f();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: k */
    public C23073b m7451k() {
        return (C23073b) C26232y.m2364e(this.f64124a, C23073b.class, new k1(new AbstractC23158a() { // from class: e.i.b.f1
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                C23157x2 c23157x2 = C23157x2.this;
                return new C23073b(c23157x2.m7439w(), c23157x2.m7447o());
            }
        }));
    }

    /* renamed from: l */
    public C23078c m7450l() {
        return (C23078c) C26232y.m2364e(this.f64124a, C23078c.class, new k1(new AbstractC23158a() { // from class: e.i.b.s
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                C23157x2 c23157x2 = C23157x2.this;
                return new C23078c(c23157x2.m7439w(), c23157x2.m7461a());
            }
        }));
    }

    /* renamed from: m */
    public C22940e3 m7449m() {
        return (C22940e3) C26232y.m2364e(this.f64124a, C22940e3.class, new k1(new AbstractC23158a() { // from class: e.i.b.i0
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                C23157x2 c23157x2 = C23157x2.this;
                return new C22940e3(c23157x2.m7442t(), (C23071d) C26232y.m2364e(c23157x2.f64124a, C23071d.class, new k1(new C23035r(c23157x2))));
            }
        }));
    }

    /* renamed from: n */
    public SharedPreferences m7448n() {
        return (SharedPreferences) C26232y.m2364e(this.f64124a, SharedPreferences.class, new k1(new AbstractC23158a() { // from class: e.i.b.u0
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                return C23157x2.this.m7439w().getSharedPreferences("com.criteo.publisher.sdkSharedPreferences", 0);
            }
        }));
    }

    /* renamed from: o */
    public Executor m7447o() {
        return (Executor) C26232y.m2364e(this.f64124a, ThreadPoolExecutor.class, new k1(new C23150d()));
    }

    /* renamed from: p */
    public C22947c m7446p() {
        return (C22947c) C26232y.m2364e(this.f64124a, C22947c.class, new k1(new AbstractC23158a() { // from class: e.i.b.c1
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                return new C22947c(C23157x2.this.m7439w());
            }
        }));
    }

    /* renamed from: q */
    public C23161y1 m7445q() {
        return (C23161y1) C26232y.m2364e(this.f64124a, C23161y1.class, new k1(new AbstractC23158a() { // from class: e.i.b.d0
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                final C23157x2 c23157x2 = C23157x2.this;
                return new C23161y1(new C23099a(c23157x2.m7461a()), c23157x2.m7441u(), c23157x2.m7442t(), (C23124i) C26232y.m2364e(c23157x2.f64124a, C23124i.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.g0
                    @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
                    /* renamed from: a */
                    public final Object mo7423a() {
                        C23157x2 c23157x22 = C23157x2.this;
                        Objects.requireNonNull(c23157x22);
                        return new C23124i(c23157x22.m7461a());
                    }
                })), (C22961c) C26232y.m2364e(c23157x2.f64124a, C22961c.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.e1
                    @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
                    /* renamed from: a */
                    public final Object mo7423a() {
                        final C23157x2 c23157x22 = C23157x2.this;
                        return new C22961c((C23128r) C26232y.m2364e(c23157x22.f64124a, C23128r.class, new k1(new C22953h0(c23157x22))), (C23116c0) C26232y.m2364e(c23157x22.f64124a, C23116c0.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.c0
                            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
                            /* renamed from: a */
                            public final Object mo7423a() {
                                C23157x2 c23157x23 = C23157x2.this;
                                Context m7439w = c23157x23.m7439w();
                                if (!C26232y.m2338k(c23157x23.f64126c)) {
                                    return new C23116c0(m7439w, c23157x23.f64126c, c23157x23.m7443s(), c23157x23.m7460b(), c23157x23.m7451k());
                                }
                                throw new C23153w2("Criteo Publisher Id is required");
                            }
                        })), c23157x22.m7442t(), c23157x22.m7458d(), c23157x22.m7447o());
                    }
                })), (C22965f) C26232y.m2364e(c23157x2.f64124a, C22965f.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.s0
                    @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
                    /* renamed from: a */
                    public final Object mo7423a() {
                        C23157x2 c23157x22 = C23157x2.this;
                        return new C22965f(c23157x22.m7458d(), (C23128r) C26232y.m2364e(c23157x22.f64124a, C23128r.class, new k1(new C22953h0(c23157x22))), c23157x22.m7442t(), c23157x22.m7447o(), (ScheduledExecutorService) C26232y.m2364e(c23157x22.f64124a, ScheduledExecutorService.class, new k1(C22908a.f63575a)), c23157x22.m7441u());
                    }
                })), (AbstractC23068a) C26232y.m2364e(c23157x2.f64124a, AbstractC23068a.class, new k1(new C22909a0(c23157x2))), (C23187g0) C26232y.m2364e(c23157x2.f64124a, C23187g0.class, new k1(new C23157x2.AbstractC23158a() { // from class: e.i.b.l0
                    @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
                    /* renamed from: a */
                    public final Object mo7423a() {
                        C23157x2 c23157x22 = C23157x2.this;
                        return new C23187g0((AbstractC23181e0) C26232y.m2364e(c23157x22.f64124a, AbstractC23181e0.class, new k1(new C23155x0(c23157x22))), c23157x22.m7458d(), c23157x22.m7443s(), c23157x22.m7441u(), c23157x22.m7447o());
                    }
                })), (C23033o) C26232y.m2364e(c23157x2.f64124a, C23033o.class, new k1(new C23137v(c23157x2))), c23157x2.m7440v());
            }
        }));
    }

    /* renamed from: r */
    public C22978b m7444r() {
        return (C22978b) C26232y.m2364e(this.f64124a, C22978b.class, new k1(new AbstractC23158a() { // from class: e.i.b.f0
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                C23157x2 c23157x2 = C23157x2.this;
                Objects.requireNonNull(c23157x2);
                return new C22978b(c23157x2.m7439w());
            }
        }));
    }

    /* renamed from: s */
    public C23080f m7443s() {
        return (C23080f) C26232y.m2364e(this.f64124a, C23080f.class, new k1(C22976l1.f63700a));
    }

    /* renamed from: t */
    public AbstractC22939e2 m7442t() {
        return (AbstractC22939e2) C26232y.m2364e(this.f64124a, AbstractC22939e2.class, new k1(C22930d.f63610a));
    }

    /* renamed from: u */
    public C23132x m7441u() {
        return (C23132x) C26232y.m2364e(this.f64124a, C23132x.class, new k1(new AbstractC23158a() { // from class: e.i.b.i1
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                C23157x2 c23157x2 = C23157x2.this;
                return new C23132x(c23157x2.m7448n(), c23157x2.m7459c());
            }
        }));
    }

    /* renamed from: v */
    public C22977a m7440v() {
        return (C22977a) C26232y.m2364e(this.f64124a, C22977a.class, new k1(new AbstractC23158a() { // from class: e.i.b.v0
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                return new C22977a(C23157x2.this.m7448n());
            }
        }));
    }

    /* renamed from: w */
    public Context m7439w() {
        m7456f();
        return this.f64125b.getApplicationContext();
    }

    /* renamed from: x */
    public C23134y m7438x() {
        return (C23134y) C26232y.m2364e(this.f64124a, C23134y.class, new k1(new AbstractC23158a() { // from class: e.i.b.m
            @Override // p193e.p1512i.p1516b.C23157x2.AbstractC23158a
            /* renamed from: a */
            public final Object mo7423a() {
                C23157x2 c23157x2 = C23157x2.this;
                return new C23134y(c23157x2.m7439w(), c23157x2.m7453i());
            }
        }));
    }
}
