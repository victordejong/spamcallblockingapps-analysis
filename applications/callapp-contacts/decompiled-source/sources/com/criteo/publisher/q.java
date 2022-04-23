package com.criteo.publisher;

import android.app.Application;
import android.content.SharedPreferences;
import android.os.Build;
import com.criteo.publisher.advancednative.ImageLoader;
import com.criteo.publisher.advancednative.RendererHelper;
import com.criteo.publisher.advancednative.o;
import com.criteo.publisher.context.a;
import com.criteo.publisher.context.b;
import com.criteo.publisher.f.aa;
import com.criteo.publisher.f.ab;
import com.criteo.publisher.f.ac;
import com.criteo.publisher.f.ae;
import com.criteo.publisher.f.d;
import com.criteo.publisher.f.p;
import com.criteo.publisher.f.v;
import com.criteo.publisher.f.w;
import com.criteo.publisher.f.x;
import com.criteo.publisher.f.z;
import com.criteo.publisher.h.e;
import com.criteo.publisher.logging.c;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.logging.i;
import com.criteo.publisher.logging.j;
import com.criteo.publisher.logging.k;
import com.criteo.publisher.logging.l;
import com.criteo.publisher.logging.m;
import com.criteo.publisher.logging.n;
import com.criteo.publisher.m0.s;
import com.criteo.publisher.model.t;
import com.criteo.publisher.model.u;
import com.criteo.publisher.q;
import com.google.gson.f;
import com.google.gson.g;
import com.squareup.picasso.Picasso;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.jvm.functions.Function0;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    protected static q f17654a;

    /* renamed from: b  reason: collision with root package name */
    Application f17655b;

    /* renamed from: c  reason: collision with root package name */
    String f17656c;

    /* renamed from: d  reason: collision with root package name */
    private final ConcurrentMap<Class<?>, Object> f17657d = new ConcurrentHashMap();

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/q$a.class */
    public interface a<T> {
        T a();
    }

    protected q() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.k.a F() {
        return new com.criteo.publisher.k.a(aI());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ n G() {
        return new n(aK(), e(), o(), f(), h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ j H() {
        return new j((k) a(k.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$JEIK42aJurin166DUFDy9ftWkwU
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                k I;
                I = q.this.I();
                return I;
            }
        }), aK(), j(), h(), aM());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ k I() {
        return new k(o(), aC().getApplicationContext(), f(), C(), u(), aF(), (i) a(i.class, _$$Lambda$Q_VUJqXHsqn1qg3FzjtcUe2BMSA.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ m J() {
        return new m(o());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ l K() {
        return new l.a(a((m) a(m.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$vrz3YKdDOa7tmGSwNlTT55uPLZU
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                m J;
                J = q.this.J();
                return J;
            }
        })));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ x L() {
        return new x(aF(), aH());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.context.a M() {
        return new com.criteo.publisher.context.a(aC().getApplicationContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ b N() {
        return new b(aC().getApplicationContext(), (com.criteo.publisher.context.a) a(com.criteo.publisher.context.a.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$JZ9F33iAoLWEI38KOTgwB91EDKg
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                a M;
                M = q.this.M();
                return M;
            }
        }), aE(), C());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ c O() {
        return new c(o());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ h P() {
        return new h(Arrays.asList(new com.criteo.publisher.g.a("ConsoleHandler", new Function0() { // from class: com.criteo.publisher._$$Lambda$H7RUEYnb8l1KxyRNLiEHuFF_I9Q
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return q.this.B();
            }
        }), new com.criteo.publisher.g.a("RemoteHandler", new Function0() { // from class: com.criteo.publisher._$$Lambda$ZLL9_oTNgmXvDi5HdqVdew1etHA
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return q.this.E();
            }
        })));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ f Q() {
        return new g().a(new com.criteo.publisher.m0.f()).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.m0.l R() {
        return new com.criteo.publisher.m0.l((f) a(f.class, _$$Lambda$q$lBBjbpi5K_3MlQ74o5rX_03N6ng.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ v S() {
        return new v(z());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ aa T() {
        return new aa(o());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ z U() {
        return new z.a(a((aa) a(aa.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$lDTUCEoC3PG3sA0_0go_ZZTHF5s
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                aa T;
                T = q.this.T();
                return T;
            }
        })));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ac V() {
        return new ac(aJ());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ab W() {
        return new ab(aJ(), e(), o(), j(), h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.m.b X() {
        return new com.criteo.publisher.m.b(aC().getApplicationContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.j.a Y() {
        return new com.criteo.publisher.j.a(aC().getApplicationContext(), y());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.h.c Z() {
        return new com.criteo.publisher.h.c(Arrays.asList(new e(), new com.criteo.publisher.h.b(aE(), g()), new com.criteo.publisher.h.f()), u());
    }

    private <T> p<T> a(com.criteo.publisher.f.b<T> bVar) {
        return new d(new ae(aC().getApplicationContext(), z(), bVar), bVar).a();
    }

    public static q a() {
        q qVar;
        synchronized (q.class) {
            try {
                if (f17654a == null) {
                    f17654a = new q();
                }
                qVar = f17654a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return qVar;
    }

    private <T> T a(Class<T> cls, final a<T> aVar) {
        ConcurrentMap<Class<?>, Object> concurrentMap = this.f17657d;
        aVar.getClass();
        return (T) com.criteo.publisher.m0.m.a(concurrentMap, cls, new Function0() { // from class: com.criteo.publisher._$$Lambda$qMGydouRSAniDUBTank4jzo0Mo0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return q.a.this.a();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.m0.b aA() {
        return new com.criteo.publisher.m0.b(aC().getApplicationContext(), h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.j0.g aB() {
        return new com.criteo.publisher.j0.g(o(), z());
    }

    private Application aC() {
        b();
        return this.f17655b;
    }

    private String aD() {
        c();
        return this.f17656c;
    }

    private com.criteo.publisher.m0.c aE() {
        return (com.criteo.publisher.m0.c) a(com.criteo.publisher.m0.c.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$T_SKiGDn5R2ZIFCeajg4mEcLqFY
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.m0.c az;
                az = q.this.az();
                return az;
            }
        });
    }

    private h aF() {
        return (h) a(h.class, _$$Lambda$ah1BcUxCEb_InrnMGodQitKgVm0.INSTANCE);
    }

    private com.criteo.publisher.model.p aG() {
        return (com.criteo.publisher.model.p) a(com.criteo.publisher.model.p.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$O_ZDm0WoDs5IHl34a_Zl5eyRItY
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.model.p aq;
                aq = q.this.aq();
                return aq;
            }
        });
    }

    private com.criteo.publisher.c.d aH() {
        return (com.criteo.publisher.c.d) a(com.criteo.publisher.c.d.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$wb9_YX4VKjk4TGdx3W5zLO1xgvk
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.c.d ap;
                ap = q.this.ap();
                return ap;
            }
        });
    }

    private SharedPreferences aI() {
        return (SharedPreferences) a(SharedPreferences.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$1SqNmBax6FHPAo_12asw1PRuxIs
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                SharedPreferences ac;
                ac = q.this.ac();
                return ac;
            }
        });
    }

    private z aJ() {
        return (z) a(z.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$m1_HlWNSNkIBZ1wC4ZxSpH6AFSY
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                z U;
                U = q.this.U();
                return U;
            }
        });
    }

    private l aK() {
        return (l) a(l.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$NiF_lUxEaCTHH4nNfn9ba_4wJLU
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                l K;
                K = q.this.K();
                return K;
            }
        });
    }

    private n aL() {
        return (n) a(n.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$WBwXaMvj89Q_eZ6WHvxiQnSU2vE
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                n G;
                G = q.this.G();
                return G;
            }
        });
    }

    private com.criteo.publisher.k.a aM() {
        return (com.criteo.publisher.k.a) a(com.criteo.publisher.k.a.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$K88u9HrzoNccyFRXix61LhmPCrQ
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.k.a F;
                F = q.this.F();
                return F;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ i aa() {
        return new i(l(), aF(), i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.i.c ab() {
        return new com.criteo.publisher.i.c(aI(), (com.criteo.publisher.i.b) a(com.criteo.publisher.i.b.class, _$$Lambda$5z3EoD29hHU6Bve1ddHAMWoLH88.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ SharedPreferences ac() {
        return aC().getApplicationContext().getSharedPreferences("com.criteo.publisher.sdkSharedPreferences", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ RendererHelper ad() {
        return new RendererHelper(t(), i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.advancednative.h ae() {
        return new com.criteo.publisher.advancednative.h((ImageLoader) a(ImageLoader.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$Dwh8Aii72eEwJFLoKGu_D551mwc
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                ImageLoader af;
                af = q.this.af();
                return af;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ ImageLoader af() {
        return new com.criteo.publisher.advancednative.g((Picasso) a(Picasso.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$eHcfcllqEIgF__plNCqdMNY4_OQ
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                Picasso ag;
                ag = q.this.ag();
                return ag;
            }
        }), (com.criteo.publisher.e.a) a(com.criteo.publisher.e.a.class, _$$Lambda$8K57bS6BVJYJ1ux2bwD6n6Tnhag.INSTANCE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Picasso ag() {
        return new Picasso.Builder(aC().getApplicationContext()).build();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.advancednative.b ah() {
        return new com.criteo.publisher.advancednative.b(o(), aE());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.b.b ai() {
        return new com.criteo.publisher.b.b(aC().getApplicationContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ com.criteo.publisher.advancednative.q aj() {
        return new com.criteo.publisher.advancednative.q(new o());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.advancednative.l ak() {
        return new com.criteo.publisher.advancednative.l((com.criteo.publisher.advancednative.q) a(com.criteo.publisher.advancednative.q.class, _$$Lambda$q$BpYjM9oQBbDIFRo50CwAFnYD0rQ.INSTANCE), new com.criteo.publisher.advancednative.i(e(), h(), i()), (com.criteo.publisher.advancednative.e) a(com.criteo.publisher.advancednative.e.class, _$$Lambda$xlEET1tGbgIEA28MSgFvkun4l2c.INSTANCE), new com.criteo.publisher.advancednative.f(r(), y(), i()), s(), (RendererHelper) a(RendererHelper.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$tDN_fuUEFotSuOi6R2Lld8mRwB0
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                RendererHelper ad;
                ad = q.this.ad();
                return ad;
            }
        }));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.c.a al() {
        com.criteo.publisher.c.b bVar = new com.criteo.publisher.c.b();
        bVar.a(new com.criteo.publisher.c.c(aL()));
        if (Build.VERSION.SDK_INT >= 17) {
            bVar.a(new com.criteo.publisher.f.q((w) a(w.class, new x(aC().getApplicationContext(), (v) a(v.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$NVA5S_aaddyUaYOppMpQl03DZMY
                @Override // com.criteo.publisher.q.a
                public final Object a() {
                    v S;
                    S = q.this.S();
                    return S;
                }
            }), o())), (ac) a(ac.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$mZ45yLv8LwKQiDQKF1__mXUU_Cc
                @Override // com.criteo.publisher.q.a
                public final Object a() {
                    ac V;
                    V = q.this.V();
                    return V;
                }
            }), aF(), j(), aM(), h()));
        }
        return bVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.j0.e am() {
        return new com.criteo.publisher.j0.e(e(), aG(), aF(), h(), (ScheduledExecutorService) a(ScheduledExecutorService.class, _$$Lambda$2CCxpHXvM5iil9DZq2w2_5fo6_g.INSTANCE), j());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.j0.b an() {
        return new com.criteo.publisher.j0.b(aG(), (com.criteo.publisher.model.x) a(com.criteo.publisher.model.x.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$Xdorx6b86oVV3NesXi7u9UgnXio
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.model.x ao;
                ao = q.this.ao();
                return ao;
            }
        }), aF(), e(), h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.model.x ao() {
        return new com.criteo.publisher.model.x(aC().getApplicationContext(), aD(), o(), u(), f());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.c.d ap() {
        return new com.criteo.publisher.c.d(aF());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.model.p aq() {
        return new com.criteo.publisher.model.p(aC().getApplicationContext(), aD(), m(), f(), k(), aH(), o(), u(), (b) a(b.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$ciTA8ZFNYnYruUvn19aRr_df5p8
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                b N;
                N = q.this.N();
                return N;
            }
        }), D());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.m0.e ar() {
        return new com.criteo.publisher.m0.e((com.criteo.publisher.a.a) a(com.criteo.publisher.a.a.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$9lHl81dT3wKaL0fr6HgbqwAHYfM
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.a.a as;
                as = q.this.as();
                return as;
            }
        }), l());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.a.a as() {
        return new com.criteo.publisher.a.a(aC().getApplicationContext(), f(), aF(), e(), k(), m(), h());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.model.g at() {
        return new com.criteo.publisher.model.g(g());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ u au() {
        return new u(aC().getApplicationContext(), i());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ e av() {
        return new e(new com.criteo.publisher.d.a(g()), j(), aF(), (com.criteo.publisher.model.g) a(com.criteo.publisher.model.g.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$Zz2g7Xi3nSXEGEQ5ihAf37vL_f8
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.model.g at;
                at = q.this.at();
                return at;
            }
        }), (com.criteo.publisher.j0.b) a(com.criteo.publisher.j0.b.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$uAjBf_nCR7WhTEPq4Lq168RHsQ8
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.j0.b an;
                an = q.this.an();
                return an;
            }
        }), (com.criteo.publisher.j0.e) a(com.criteo.publisher.j0.e.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$M_D0cISEAyGuJxTpoKkDu3_xCNA
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.j0.e am;
                am = q.this.am();
                return am;
            }
        }), p(), (ab) a(ab.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$aKmzRek9XnYP54IulMk3n1VN_kU
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                ab W;
                W = q.this.W();
                return W;
            }
        }), aL(), aM());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.k.c aw() {
        return new com.criteo.publisher.k.c(aC().getApplicationContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ t ax() {
        return new t(aI(), z());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.m0.k ay() {
        return new com.criteo.publisher.m0.k(aC().getApplicationContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ com.criteo.publisher.m0.c az() {
        return new com.criteo.publisher.m0.c(aC().getApplicationContext(), g());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d() {
        try {
            a().b();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    public final h A() {
        return (h) a(h.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$c8JdG9jJvuhQ2_0fjoN2YXrE8bE
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                h P;
                P = q.this.P();
                return P;
            }
        });
    }

    public final c B() {
        return (c) a(c.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$TYbIVVeJMGqy1eBtOzP5Q2pgEyo
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                c O;
                O = q.this.O();
                return O;
            }
        });
    }

    public final x C() {
        return (x) a(x.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$3k4Ivl7qMSTQU1ptjCOdyElKAJI
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                x L;
                L = q.this.L();
                return L;
            }
        });
    }

    public final com.criteo.publisher.context.d D() {
        return (com.criteo.publisher.context.d) a(com.criteo.publisher.context.d.class, _$$Lambda$q8YDARkVve_9Z_DWuaNKP_bSBZY.INSTANCE);
    }

    public final j E() {
        return (j) a(j.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$tVSB2r_QXlkqlWsFk5I97cV8v7E
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                j H;
                H = q.this.H();
                return H;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b() {
        if (this.f17655b == null) {
            throw new p("Application reference is required");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void c() {
        if (s.a((CharSequence) this.f17656c)) {
            throw new p("Criteo Publisher Id is required");
        }
    }

    public final com.criteo.publisher.j0.g e() {
        return (com.criteo.publisher.j0.g) a(com.criteo.publisher.j0.g.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$pUt_j7rvJXtIABN3ZTwT2bg6tWs
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.j0.g aB;
                aB = q.this.aB();
                return aB;
            }
        });
    }

    public final com.criteo.publisher.m0.b f() {
        return (com.criteo.publisher.m0.b) a(com.criteo.publisher.m0.b.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$G1lHhizzzlNeKLk_xodAiDmch94
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.m0.b aA;
                aA = q.this.aA();
                return aA;
            }
        });
    }

    public final com.criteo.publisher.m0.k g() {
        return (com.criteo.publisher.m0.k) a(com.criteo.publisher.m0.k.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$DivLmbohvFQ0O6frOgOm6q_PONA
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.m0.k ay;
                ay = q.this.ay();
                return ay;
            }
        });
    }

    public final Executor h() {
        return (Executor) a(ThreadPoolExecutor.class, new com.criteo.publisher.e.d());
    }

    public final com.criteo.publisher.e.c i() {
        return (com.criteo.publisher.e.c) a(com.criteo.publisher.e.c.class, _$$Lambda$xnw9oTeSMXyS_kkpsCmvcOQNoeg.INSTANCE);
    }

    public final t j() {
        return (t) a(t.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$PGiI0qH6Prr86aS7RzMZjqAb_mw
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                t ax;
                ax = q.this.ax();
                return ax;
            }
        });
    }

    public final com.criteo.publisher.k.c k() {
        return (com.criteo.publisher.k.c) a(com.criteo.publisher.k.c.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$gNX_6Ts_jlt3A6d_0_Z9UOVKV3k
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.k.c aw;
                aw = q.this.aw();
                return aw;
            }
        });
    }

    public final e l() {
        return (e) a(e.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$UqVHMvQdCV9s_k_Uk0dcwBBVGM4
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                e av;
                av = q.this.av();
                return av;
            }
        });
    }

    public final u m() {
        return (u) a(u.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$6CYu_PMpDctRtlT6zKb6mqN8THs
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                u au;
                au = q.this.au();
                return au;
            }
        });
    }

    public final com.criteo.publisher.m0.e n() {
        return (com.criteo.publisher.m0.e) a(com.criteo.publisher.m0.e.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$HjgIFX492MM7_3jZCg7tEr8AmME
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.m0.e ar;
                ar = q.this.ar();
                return ar;
            }
        });
    }

    public final com.criteo.publisher.m0.g o() {
        return (com.criteo.publisher.m0.g) a(com.criteo.publisher.m0.g.class, _$$Lambda$vkHxNkyHHDGveQEcnVsIVAyL0eU.INSTANCE);
    }

    public final com.criteo.publisher.c.a p() {
        return (com.criteo.publisher.c.a) a(com.criteo.publisher.c.a.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$t7MqcubEybl28QMP_Bl5fQad0bE
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.c.a al;
                al = q.this.al();
                return al;
            }
        });
    }

    public final com.criteo.publisher.advancednative.l q() {
        return (com.criteo.publisher.advancednative.l) a(com.criteo.publisher.advancednative.l.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$aSgZeT6fWGwoLpXXe_hNJs7cnQc
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.advancednative.l ak;
                ak = q.this.ak();
                return ak;
            }
        });
    }

    public final com.criteo.publisher.b.b r() {
        return (com.criteo.publisher.b.b) a(com.criteo.publisher.b.b.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$VFy2Jwc57E8HySDN4yAxVVawo8w
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.b.b ai;
                ai = q.this.ai();
                return ai;
            }
        });
    }

    public final com.criteo.publisher.advancednative.b s() {
        return (com.criteo.publisher.advancednative.b) a(com.criteo.publisher.advancednative.b.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$PqI8wAa_2HV9AZ7vTnBTchz3gJw
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.advancednative.b ah;
                ah = q.this.ah();
                return ah;
            }
        });
    }

    public final com.criteo.publisher.advancednative.h t() {
        return (com.criteo.publisher.advancednative.h) a(com.criteo.publisher.advancednative.h.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$4Alx2ugn84btv5IjvtC_tkda45s
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.advancednative.h ae;
                ae = q.this.ae();
                return ae;
            }
        });
    }

    public final com.criteo.publisher.i.c u() {
        return (com.criteo.publisher.i.c) a(com.criteo.publisher.i.c.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$2SMzjd3Y3lEwIyXkgKYbpg8mgXc
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.i.c ab;
                ab = q.this.ab();
                return ab;
            }
        });
    }

    public final i v() {
        return (i) a(i.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$7s2SS5sbxeMkg77IesHsP19rRi0
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                i aa;
                aa = q.this.aa();
                return aa;
            }
        });
    }

    public final com.criteo.publisher.h.c w() {
        return (com.criteo.publisher.h.c) a(com.criteo.publisher.h.c.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$HQsbB3otj_77aMoMWT2S5KUQo2s
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.h.c Z;
                Z = q.this.Z();
                return Z;
            }
        });
    }

    public final com.criteo.publisher.j.a x() {
        return (com.criteo.publisher.j.a) a(com.criteo.publisher.j.a.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$7WMksuEVaXjEQp_f4WmrDR9kZYU
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.j.a Y;
                Y = q.this.Y();
                return Y;
            }
        });
    }

    public final com.criteo.publisher.m.b y() {
        return (com.criteo.publisher.m.b) a(com.criteo.publisher.m.b.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$jxnYvEtcWRl3UpaeRMApzDJNU_M
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.m.b X;
                X = q.this.X();
                return X;
            }
        });
    }

    public final com.criteo.publisher.m0.l z() {
        return (com.criteo.publisher.m0.l) a(com.criteo.publisher.m0.l.class, new a() { // from class: com.criteo.publisher._$$Lambda$q$_GEknBpL5cQNb3iWlhv0UBxI02Y
            @Override // com.criteo.publisher.q.a
            public final Object a() {
                com.criteo.publisher.m0.l R;
                R = q.this.R();
                return R;
            }
        });
    }
}
