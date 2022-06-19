package com.criteo.publisher;

import android.app.Application;
import android.content.SharedPreferences;
import android.os.Build;
import com.criteo.publisher.C8520q;
import com.criteo.publisher.advancednative.C8227b;
import com.criteo.publisher.advancednative.C8231e;
import com.criteo.publisher.advancednative.C8233f;
import com.criteo.publisher.advancednative.C8237g;
import com.criteo.publisher.advancednative.C8240h;
import com.criteo.publisher.advancednative.C8241i;
import com.criteo.publisher.advancednative.C8246l;
import com.criteo.publisher.advancednative.C8249o;
import com.criteo.publisher.advancednative.C8251q;
import com.criteo.publisher.advancednative.ImageLoader;
import com.criteo.publisher.advancednative.RendererHelper;
import com.criteo.publisher.context.C8264a;
import com.criteo.publisher.context.C8266b;
import com.criteo.publisher.context.C8269d;
import com.criteo.publisher.logging.AbstractC8413l;
import com.criteo.publisher.logging.C8397c;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.logging.C8405i;
import com.criteo.publisher.logging.C8410j;
import com.criteo.publisher.logging.C8412k;
import com.criteo.publisher.logging.C8415m;
import com.criteo.publisher.logging.C8416n;
import com.criteo.publisher.model.C8484g;
import com.criteo.publisher.model.C8500p;
import com.criteo.publisher.model.C8507t;
import com.criteo.publisher.model.C8509u;
import com.criteo.publisher.model.C8514x;
import com.criteo.publisher.p241a.C8221a;
import com.criteo.publisher.p242b.C8255b;
import com.criteo.publisher.p243c.AbstractC8259a;
import com.criteo.publisher.p243c.C8260b;
import com.criteo.publisher.p243c.C8261c;
import com.criteo.publisher.p243c.C8262d;
import com.criteo.publisher.p244d.C8271a;
import com.criteo.publisher.p245e.AbstractC8274a;
import com.criteo.publisher.p245e.C8278d;
import com.criteo.publisher.p245e.ExecutorC8277c;
import com.criteo.publisher.p246f.AbstractC8292b;
import com.criteo.publisher.p246f.AbstractC8310p;
import com.criteo.publisher.p246f.AbstractC8326w;
import com.criteo.publisher.p246f.AbstractC8332z;
import com.criteo.publisher.p246f.C8285aa;
import com.criteo.publisher.p246f.C8286ab;
import com.criteo.publisher.p246f.C8287ac;
import com.criteo.publisher.p246f.C8290ae;
import com.criteo.publisher.p246f.C8294d;
import com.criteo.publisher.p246f.C8311q;
import com.criteo.publisher.p246f.C8325v;
import com.criteo.publisher.p246f.C8328x;
import com.criteo.publisher.p247g.C8335a;
import com.criteo.publisher.p248h.C8338b;
import com.criteo.publisher.p248h.C8341c;
import com.criteo.publisher.p248h.C8343e;
import com.criteo.publisher.p248h.C8344f;
import com.criteo.publisher.p249i.C8348b;
import com.criteo.publisher.p249i.C8350c;
import com.criteo.publisher.p250j.C8353a;
import com.criteo.publisher.p251j0.C8356b;
import com.criteo.publisher.p251j0.C8361e;
import com.criteo.publisher.p251j0.C8364g;
import com.criteo.publisher.p252k.C8368a;
import com.criteo.publisher.p252k.C8380c;
import com.criteo.publisher.p255m.C8421b;
import com.criteo.publisher.p256m0.C8424b;
import com.criteo.publisher.p256m0.C8429c;
import com.criteo.publisher.p256m0.C8431e;
import com.criteo.publisher.p256m0.C8432f;
import com.criteo.publisher.p256m0.C8433g;
import com.criteo.publisher.p256m0.C8440k;
import com.criteo.publisher.p256m0.C8441l;
import com.criteo.publisher.p256m0.C8442m;
import com.criteo.publisher.p256m0.C8448s;
import com.google.gson.C15965f;
import com.google.gson.C15972g;
import com.squareup.picasso.Picasso;
import java.util.Arrays;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadPoolExecutor;
import kotlin.jvm.functions.Function0;
/* renamed from: com.criteo.publisher.q */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/q.class */
public final class C8520q {

    /* renamed from: a */
    protected static C8520q f30382a;

    /* renamed from: b */
    Application f30383b;

    /* renamed from: c */
    String f30384c;

    /* renamed from: d */
    private final ConcurrentMap<Class<?>, Object> f30385d = new ConcurrentHashMap();

    /* renamed from: com.criteo.publisher.q$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/q$a.class */
    public interface AbstractC8521a<T> {
        /* renamed from: a */
        T mo25382a();
    }

    protected C8520q() {
    }

    /* renamed from: F */
    public /* synthetic */ C8368a m25470F() {
        return new C8368a(m25438aI());
    }

    /* renamed from: G */
    public /* synthetic */ C8416n m25469G() {
        return new C8416n(m25436aK(), m25404e(), m25394o(), m25403f(), m25401h());
    }

    /* renamed from: H */
    public /* synthetic */ C8410j m25468H() {
        return new C8410j((C8412k) m25447a(C8412k.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$JEIK42aJurin166DUFDy9ftWkwU
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8412k m25467I;
                m25467I = C8520q.this.m25467I();
                return m25467I;
            }
        }), m25436aK(), m25399j(), m25401h(), m25434aM());
    }

    /* renamed from: I */
    public /* synthetic */ C8412k m25467I() {
        return new C8412k(m25394o(), m25444aC().getApplicationContext(), m25403f(), m25473C(), m25388u(), m25441aF(), (C8405i) m25447a(C8405i.class, _$$Lambda$Q_VUJqXHsqn1qg3FzjtcUe2BMSA.INSTANCE));
    }

    /* renamed from: J */
    public /* synthetic */ C8415m m25466J() {
        return new C8415m(m25394o());
    }

    /* renamed from: K */
    public /* synthetic */ AbstractC8413l m25465K() {
        return new AbstractC8413l.C8414a(m25448a((C8415m) m25447a(C8415m.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$vrz3YKdDOa7tmGSwNlTT55uPLZU
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8415m m25466J;
                m25466J = C8520q.this.m25466J();
                return m25466J;
            }
        })));
    }

    /* renamed from: L */
    public /* synthetic */ C8532x m25464L() {
        return new C8532x(m25441aF(), m25439aH());
    }

    /* renamed from: M */
    public /* synthetic */ C8264a m25463M() {
        return new C8264a(m25444aC().getApplicationContext());
    }

    /* renamed from: N */
    public /* synthetic */ C8266b m25462N() {
        return new C8266b(m25444aC().getApplicationContext(), (C8264a) m25447a(C8264a.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$JZ9F33iAoLWEI38KOTgwB91EDKg
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8264a m25463M;
                m25463M = C8520q.this.m25463M();
                return m25463M;
            }
        }), m25442aE(), m25473C());
    }

    /* renamed from: O */
    public /* synthetic */ C8397c m25461O() {
        return new C8397c(m25394o());
    }

    /* renamed from: P */
    public /* synthetic */ C8404h m25460P() {
        return new C8404h(Arrays.asList(new C8335a("ConsoleHandler", new Function0() { // from class: com.criteo.publisher._$$Lambda$H7RUEYnb8l1KxyRNLiEHuFF_I9Q
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C8520q.this.m25474B();
            }
        }), new C8335a("RemoteHandler", new Function0() { // from class: com.criteo.publisher._$$Lambda$ZLL9_oTNgmXvDi5HdqVdew1etHA
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C8520q.this.m25471E();
            }
        })));
    }

    /* renamed from: Q */
    public static /* synthetic */ C15965f m25459Q() {
        return new C15972g().m7959a(new C8432f()).m7960a();
    }

    /* renamed from: R */
    public /* synthetic */ C8441l m25458R() {
        return new C8441l((C15965f) m25447a(C15965f.class, _$$Lambda$q$lBBjbpi5K_3MlQ74o5rX_03N6ng.INSTANCE));
    }

    /* renamed from: S */
    public /* synthetic */ C8325v m25457S() {
        return new C8325v(m25383z());
    }

    /* renamed from: T */
    public /* synthetic */ C8285aa m25456T() {
        return new C8285aa(m25394o());
    }

    /* renamed from: U */
    public /* synthetic */ AbstractC8332z m25455U() {
        return new AbstractC8332z.C8333a(m25448a((C8285aa) m25447a(C8285aa.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$lDTUCEoC3PG3sA0_0go_ZZTHF5s
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8285aa m25456T;
                m25456T = C8520q.this.m25456T();
                return m25456T;
            }
        })));
    }

    /* renamed from: V */
    public /* synthetic */ C8287ac m25454V() {
        return new C8287ac(m25437aJ());
    }

    /* renamed from: W */
    public /* synthetic */ C8286ab m25453W() {
        return new C8286ab(m25437aJ(), m25404e(), m25394o(), m25399j(), m25401h());
    }

    /* renamed from: X */
    public /* synthetic */ C8421b m25452X() {
        return new C8421b(m25444aC().getApplicationContext());
    }

    /* renamed from: Y */
    public /* synthetic */ C8353a m25451Y() {
        return new C8353a(m25444aC().getApplicationContext(), m25384y());
    }

    /* renamed from: Z */
    public /* synthetic */ C8341c m25450Z() {
        return new C8341c(Arrays.asList(new C8343e(), new C8338b(m25442aE(), m25402g()), new C8344f()), m25388u());
    }

    /* renamed from: a */
    private <T> AbstractC8310p<T> m25448a(AbstractC8292b<T> abstractC8292b) {
        return new C8294d(new C8290ae(m25444aC().getApplicationContext(), m25383z(), abstractC8292b), abstractC8292b).mo25382a();
    }

    /* renamed from: a */
    public static C8520q m25449a() {
        C8520q c8520q;
        synchronized (C8520q.class) {
            try {
                if (f30382a == null) {
                    f30382a = new C8520q();
                }
                c8520q = f30382a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c8520q;
    }

    /* renamed from: a */
    private <T> T m25447a(Class<T> cls, final AbstractC8521a<T> abstractC8521a) {
        ConcurrentMap<Class<?>, Object> concurrentMap = this.f30385d;
        abstractC8521a.getClass();
        return (T) C8442m.m25678a(concurrentMap, cls, new Function0() { // from class: com.criteo.publisher._$$Lambda$qMGydouRSAniDUBTank4jzo0Mo0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return C8520q.AbstractC8521a.this.mo25382a();
            }
        });
    }

    /* renamed from: aA */
    public /* synthetic */ C8424b m25446aA() {
        return new C8424b(m25444aC().getApplicationContext(), m25401h());
    }

    /* renamed from: aB */
    public /* synthetic */ C8364g m25445aB() {
        return new C8364g(m25394o(), m25383z());
    }

    /* renamed from: aC */
    private Application m25444aC() {
        m25407b();
        return this.f30383b;
    }

    /* renamed from: aD */
    private String m25443aD() {
        m25406c();
        return this.f30384c;
    }

    /* renamed from: aE */
    private C8429c m25442aE() {
        return (C8429c) m25447a(C8429c.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$T_SKiGDn5R2ZIFCeajg4mEcLqFY
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8429c m25408az;
                m25408az = C8520q.this.m25408az();
                return m25408az;
            }
        });
    }

    /* renamed from: aF */
    private AbstractC8336h m25441aF() {
        return (AbstractC8336h) m25447a(AbstractC8336h.class, _$$Lambda$ah1BcUxCEb_InrnMGodQitKgVm0.INSTANCE);
    }

    /* renamed from: aG */
    private C8500p m25440aG() {
        return (C8500p) m25447a(C8500p.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$O_ZDm0WoDs5IHl34a_Zl5eyRItY
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8500p m25417aq;
                m25417aq = C8520q.this.m25417aq();
                return m25417aq;
            }
        });
    }

    /* renamed from: aH */
    private C8262d m25439aH() {
        return (C8262d) m25447a(C8262d.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$wb9_YX4VKjk4TGdx3W5zLO1xgvk
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8262d m25418ap;
                m25418ap = C8520q.this.m25418ap();
                return m25418ap;
            }
        });
    }

    /* renamed from: aI */
    private SharedPreferences m25438aI() {
        return (SharedPreferences) m25447a(SharedPreferences.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$1SqNmBax6FHPAo_12asw1PRuxIs
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                SharedPreferences m25431ac;
                m25431ac = C8520q.this.m25431ac();
                return m25431ac;
            }
        });
    }

    /* renamed from: aJ */
    private AbstractC8332z m25437aJ() {
        return (AbstractC8332z) m25447a(AbstractC8332z.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$m1_HlWNSNkIBZ1wC4ZxSpH6AFSY
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                AbstractC8332z m25455U;
                m25455U = C8520q.this.m25455U();
                return m25455U;
            }
        });
    }

    /* renamed from: aK */
    private AbstractC8413l m25436aK() {
        return (AbstractC8413l) m25447a(AbstractC8413l.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$NiF_lUxEaCTHH4nNfn9ba_4wJLU
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                AbstractC8413l m25465K;
                m25465K = C8520q.this.m25465K();
                return m25465K;
            }
        });
    }

    /* renamed from: aL */
    private C8416n m25435aL() {
        return (C8416n) m25447a(C8416n.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$WBwXaMvj89Q_eZ6WHvxiQnSU2vE
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8416n m25469G;
                m25469G = C8520q.this.m25469G();
                return m25469G;
            }
        });
    }

    /* renamed from: aM */
    private C8368a m25434aM() {
        return (C8368a) m25447a(C8368a.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$K88u9HrzoNccyFRXix61LhmPCrQ
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8368a m25470F;
                m25470F = C8520q.this.m25470F();
                return m25470F;
            }
        });
    }

    /* renamed from: aa */
    public /* synthetic */ C8345i m25433aa() {
        return new C8345i(m25397l(), m25441aF(), m25400i());
    }

    /* renamed from: ab */
    public /* synthetic */ C8350c m25432ab() {
        return new C8350c(m25438aI(), (C8348b) m25447a(C8348b.class, _$$Lambda$5z3EoD29hHU6Bve1ddHAMWoLH88.INSTANCE));
    }

    /* renamed from: ac */
    public /* synthetic */ SharedPreferences m25431ac() {
        return m25444aC().getApplicationContext().getSharedPreferences("com.criteo.publisher.sdkSharedPreferences", 0);
    }

    /* renamed from: ad */
    public /* synthetic */ RendererHelper m25430ad() {
        return new RendererHelper(m25389t(), m25400i());
    }

    /* renamed from: ae */
    public /* synthetic */ C8240h m25429ae() {
        return new C8240h((ImageLoader) m25447a(ImageLoader.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$Dwh8Aii72eEwJFLoKGu_D551mwc
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                ImageLoader m25428af;
                m25428af = C8520q.this.m25428af();
                return m25428af;
            }
        }));
    }

    /* renamed from: af */
    public /* synthetic */ ImageLoader m25428af() {
        return new C8237g((Picasso) m25447a(Picasso.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$eHcfcllqEIgF__plNCqdMNY4_OQ
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                Picasso m25427ag;
                m25427ag = C8520q.this.m25427ag();
                return m25427ag;
            }
        }), (AbstractC8274a) m25447a(AbstractC8274a.class, _$$Lambda$8K57bS6BVJYJ1ux2bwD6n6Tnhag.INSTANCE));
    }

    /* renamed from: ag */
    public /* synthetic */ Picasso m25427ag() {
        return new Picasso.Builder(m25444aC().getApplicationContext()).build();
    }

    /* renamed from: ah */
    public /* synthetic */ C8227b m25426ah() {
        return new C8227b(m25394o(), m25442aE());
    }

    /* renamed from: ai */
    public /* synthetic */ C8255b m25425ai() {
        return new C8255b(m25444aC().getApplicationContext());
    }

    /* renamed from: aj */
    public static /* synthetic */ C8251q m25424aj() {
        return new C8251q(new C8249o());
    }

    /* renamed from: ak */
    public /* synthetic */ C8246l m25423ak() {
        return new C8246l((C8251q) m25447a(C8251q.class, _$$Lambda$q$BpYjM9oQBbDIFRo50CwAFnYD0rQ.INSTANCE), new C8241i(m25404e(), m25401h(), m25400i()), (C8231e) m25447a(C8231e.class, _$$Lambda$xlEET1tGbgIEA28MSgFvkun4l2c.INSTANCE), new C8233f(m25391r(), m25384y(), m25400i()), m25390s(), (RendererHelper) m25447a(RendererHelper.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$tDN_fuUEFotSuOi6R2Lld8mRwB0
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                RendererHelper m25430ad;
                m25430ad = C8520q.this.m25430ad();
                return m25430ad;
            }
        }));
    }

    /* renamed from: al */
    public /* synthetic */ AbstractC8259a m25422al() {
        C8260b c8260b = new C8260b();
        c8260b.m25958a(new C8261c(m25435aL()));
        if (Build.VERSION.SDK_INT >= 17) {
            c8260b.m25958a(new C8311q((AbstractC8326w) m25447a(AbstractC8326w.class, new C8328x(m25444aC().getApplicationContext(), (C8325v) m25447a(C8325v.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$NVA5S_aaddyUaYOppMpQl03DZMY
                @Override // com.criteo.publisher.C8520q.AbstractC8521a
                /* renamed from: a */
                public final Object mo25382a() {
                    C8325v m25457S;
                    m25457S = C8520q.this.m25457S();
                    return m25457S;
                }
            }), m25394o())), (C8287ac) m25447a(C8287ac.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$mZ45yLv8LwKQiDQKF1__mXUU_Cc
                @Override // com.criteo.publisher.C8520q.AbstractC8521a
                /* renamed from: a */
                public final Object mo25382a() {
                    C8287ac m25454V;
                    m25454V = C8520q.this.m25454V();
                    return m25454V;
                }
            }), m25441aF(), m25399j(), m25434aM(), m25401h()));
        }
        return c8260b;
    }

    /* renamed from: am */
    public /* synthetic */ C8361e m25421am() {
        return new C8361e(m25404e(), m25440aG(), m25441aF(), m25401h(), (ScheduledExecutorService) m25447a(ScheduledExecutorService.class, _$$Lambda$2CCxpHXvM5iil9DZq2w2_5fo6_g.INSTANCE), m25399j());
    }

    /* renamed from: an */
    public /* synthetic */ C8356b m25420an() {
        return new C8356b(m25440aG(), (C8514x) m25447a(C8514x.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$Xdorx6b86oVV3NesXi7u9UgnXio
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8514x m25419ao;
                m25419ao = C8520q.this.m25419ao();
                return m25419ao;
            }
        }), m25441aF(), m25404e(), m25401h());
    }

    /* renamed from: ao */
    public /* synthetic */ C8514x m25419ao() {
        return new C8514x(m25444aC().getApplicationContext(), m25443aD(), m25394o(), m25388u(), m25403f());
    }

    /* renamed from: ap */
    public /* synthetic */ C8262d m25418ap() {
        return new C8262d(m25441aF());
    }

    /* renamed from: aq */
    public /* synthetic */ C8500p m25417aq() {
        return new C8500p(m25444aC().getApplicationContext(), m25443aD(), m25396m(), m25403f(), m25398k(), m25439aH(), m25394o(), m25388u(), (C8266b) m25447a(C8266b.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$ciTA8ZFNYnYruUvn19aRr_df5p8
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8266b m25462N;
                m25462N = C8520q.this.m25462N();
                return m25462N;
            }
        }), m25472D());
    }

    /* renamed from: ar */
    public /* synthetic */ C8431e m25416ar() {
        return new C8431e((C8221a) m25447a(C8221a.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$9lHl81dT3wKaL0fr6HgbqwAHYfM
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8221a m25415as;
                m25415as = C8520q.this.m25415as();
                return m25415as;
            }
        }), m25397l());
    }

    /* renamed from: as */
    public /* synthetic */ C8221a m25415as() {
        return new C8221a(m25444aC().getApplicationContext(), m25403f(), m25441aF(), m25404e(), m25398k(), m25396m(), m25401h());
    }

    /* renamed from: at */
    public /* synthetic */ C8484g m25414at() {
        return new C8484g(m25402g());
    }

    /* renamed from: au */
    public /* synthetic */ C8509u m25413au() {
        return new C8509u(m25444aC().getApplicationContext(), m25400i());
    }

    /* renamed from: av */
    public /* synthetic */ C8272e m25412av() {
        return new C8272e(new C8271a(m25402g()), m25399j(), m25441aF(), (C8484g) m25447a(C8484g.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$Zz2g7Xi3nSXEGEQ5ihAf37vL_f8
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8484g m25414at;
                m25414at = C8520q.this.m25414at();
                return m25414at;
            }
        }), (C8356b) m25447a(C8356b.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$uAjBf_nCR7WhTEPq4Lq168RHsQ8
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8356b m25420an;
                m25420an = C8520q.this.m25420an();
                return m25420an;
            }
        }), (C8361e) m25447a(C8361e.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$M_D0cISEAyGuJxTpoKkDu3_xCNA
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8361e m25421am;
                m25421am = C8520q.this.m25421am();
                return m25421am;
            }
        }), m25393p(), (C8286ab) m25447a(C8286ab.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$aKmzRek9XnYP54IulMk3n1VN_kU
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8286ab m25453W;
                m25453W = C8520q.this.m25453W();
                return m25453W;
            }
        }), m25435aL(), m25434aM());
    }

    /* renamed from: aw */
    public /* synthetic */ C8380c m25411aw() {
        return new C8380c(m25444aC().getApplicationContext());
    }

    /* renamed from: ax */
    public /* synthetic */ C8507t m25410ax() {
        return new C8507t(m25438aI(), m25383z());
    }

    /* renamed from: ay */
    public /* synthetic */ C8440k m25409ay() {
        return new C8440k(m25444aC().getApplicationContext());
    }

    /* renamed from: az */
    public /* synthetic */ C8429c m25408az() {
        return new C8429c(m25444aC().getApplicationContext(), m25402g());
    }

    /* renamed from: d */
    public static boolean m25405d() {
        try {
            m25449a().m25407b();
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: A */
    public final C8404h m25475A() {
        return (C8404h) m25447a(C8404h.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$c8JdG9jJvuhQ2_0fjoN2YXrE8bE
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8404h m25460P;
                m25460P = C8520q.this.m25460P();
                return m25460P;
            }
        });
    }

    /* renamed from: B */
    public final C8397c m25474B() {
        return (C8397c) m25447a(C8397c.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$TYbIVVeJMGqy1eBtOzP5Q2pgEyo
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8397c m25461O;
                m25461O = C8520q.this.m25461O();
                return m25461O;
            }
        });
    }

    /* renamed from: C */
    public final C8532x m25473C() {
        return (C8532x) m25447a(C8532x.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$3k4Ivl7qMSTQU1ptjCOdyElKAJI
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8532x m25464L;
                m25464L = C8520q.this.m25464L();
                return m25464L;
            }
        });
    }

    /* renamed from: D */
    public final C8269d m25472D() {
        return (C8269d) m25447a(C8269d.class, _$$Lambda$q8YDARkVve_9Z_DWuaNKP_bSBZY.INSTANCE);
    }

    /* renamed from: E */
    public final C8410j m25471E() {
        return (C8410j) m25447a(C8410j.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$tVSB2r_QXlkqlWsFk5I97cV8v7E
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8410j m25468H;
                m25468H = C8520q.this.m25468H();
                return m25468H;
            }
        });
    }

    /* renamed from: b */
    public final void m25407b() {
        if (this.f30383b != null) {
            return;
        }
        throw new C8519p("Application reference is required");
    }

    /* renamed from: c */
    public final void m25406c() {
        if (!C8448s.m25669a((CharSequence) this.f30384c)) {
            return;
        }
        throw new C8519p("Criteo Publisher Id is required");
    }

    /* renamed from: e */
    public final C8364g m25404e() {
        return (C8364g) m25447a(C8364g.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$pUt_j7rvJXtIABN3ZTwT2bg6tWs
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8364g m25445aB;
                m25445aB = C8520q.this.m25445aB();
                return m25445aB;
            }
        });
    }

    /* renamed from: f */
    public final C8424b m25403f() {
        return (C8424b) m25447a(C8424b.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$G1lHhizzzlNeKLk_xodAiDmch94
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8424b m25446aA;
                m25446aA = C8520q.this.m25446aA();
                return m25446aA;
            }
        });
    }

    /* renamed from: g */
    public final C8440k m25402g() {
        return (C8440k) m25447a(C8440k.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$DivLmbohvFQ0O6frOgOm6q_PONA
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8440k m25409ay;
                m25409ay = C8520q.this.m25409ay();
                return m25409ay;
            }
        });
    }

    /* renamed from: h */
    public final Executor m25401h() {
        return (Executor) m25447a(ThreadPoolExecutor.class, new C8278d());
    }

    /* renamed from: i */
    public final ExecutorC8277c m25400i() {
        return (ExecutorC8277c) m25447a(ExecutorC8277c.class, _$$Lambda$xnw9oTeSMXyS_kkpsCmvcOQNoeg.INSTANCE);
    }

    /* renamed from: j */
    public final C8507t m25399j() {
        return (C8507t) m25447a(C8507t.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$PGiI0qH6Prr86aS7RzMZjqAb_mw
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8507t m25410ax;
                m25410ax = C8520q.this.m25410ax();
                return m25410ax;
            }
        });
    }

    /* renamed from: k */
    public final C8380c m25398k() {
        return (C8380c) m25447a(C8380c.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$gNX_6Ts_jlt3A6d_0_Z9UOVKV3k
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8380c m25411aw;
                m25411aw = C8520q.this.m25411aw();
                return m25411aw;
            }
        });
    }

    /* renamed from: l */
    public final C8272e m25397l() {
        return (C8272e) m25447a(C8272e.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$UqVHMvQdCV9s_k_Uk0dcwBBVGM4
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8272e m25412av;
                m25412av = C8520q.this.m25412av();
                return m25412av;
            }
        });
    }

    /* renamed from: m */
    public final C8509u m25396m() {
        return (C8509u) m25447a(C8509u.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$6CYu_PMpDctRtlT6zKb6mqN8THs
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8509u m25413au;
                m25413au = C8520q.this.m25413au();
                return m25413au;
            }
        });
    }

    /* renamed from: n */
    public final C8431e m25395n() {
        return (C8431e) m25447a(C8431e.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$HjgIFX492MM7_3jZCg7tEr8AmME
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8431e m25416ar;
                m25416ar = C8520q.this.m25416ar();
                return m25416ar;
            }
        });
    }

    /* renamed from: o */
    public final C8433g m25394o() {
        return (C8433g) m25447a(C8433g.class, _$$Lambda$vkHxNkyHHDGveQEcnVsIVAyL0eU.INSTANCE);
    }

    /* renamed from: p */
    public final AbstractC8259a m25393p() {
        return (AbstractC8259a) m25447a(AbstractC8259a.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$t7MqcubEybl28QMP_Bl5fQad0bE
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                AbstractC8259a m25422al;
                m25422al = C8520q.this.m25422al();
                return m25422al;
            }
        });
    }

    /* renamed from: q */
    public final C8246l m25392q() {
        return (C8246l) m25447a(C8246l.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$aSgZeT6fWGwoLpXXe_hNJs7cnQc
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8246l m25423ak;
                m25423ak = C8520q.this.m25423ak();
                return m25423ak;
            }
        });
    }

    /* renamed from: r */
    public final C8255b m25391r() {
        return (C8255b) m25447a(C8255b.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$VFy2Jwc57E8HySDN4yAxVVawo8w
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8255b m25425ai;
                m25425ai = C8520q.this.m25425ai();
                return m25425ai;
            }
        });
    }

    /* renamed from: s */
    public final C8227b m25390s() {
        return (C8227b) m25447a(C8227b.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$PqI8wAa_2HV9AZ7vTnBTchz3gJw
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8227b m25426ah;
                m25426ah = C8520q.this.m25426ah();
                return m25426ah;
            }
        });
    }

    /* renamed from: t */
    public final C8240h m25389t() {
        return (C8240h) m25447a(C8240h.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$4Alx2ugn84btv5IjvtC_tkda45s
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8240h m25429ae;
                m25429ae = C8520q.this.m25429ae();
                return m25429ae;
            }
        });
    }

    /* renamed from: u */
    public final C8350c m25388u() {
        return (C8350c) m25447a(C8350c.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$2SMzjd3Y3lEwIyXkgKYbpg8mgXc
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8350c m25432ab;
                m25432ab = C8520q.this.m25432ab();
                return m25432ab;
            }
        });
    }

    /* renamed from: v */
    public final C8345i m25387v() {
        return (C8345i) m25447a(C8345i.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$7s2SS5sbxeMkg77IesHsP19rRi0
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8345i m25433aa;
                m25433aa = C8520q.this.m25433aa();
                return m25433aa;
            }
        });
    }

    /* renamed from: w */
    public final C8341c m25386w() {
        return (C8341c) m25447a(C8341c.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$HQsbB3otj_77aMoMWT2S5KUQo2s
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8341c m25450Z;
                m25450Z = C8520q.this.m25450Z();
                return m25450Z;
            }
        });
    }

    /* renamed from: x */
    public final C8353a m25385x() {
        return (C8353a) m25447a(C8353a.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$7WMksuEVaXjEQp_f4WmrDR9kZYU
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8353a m25451Y;
                m25451Y = C8520q.this.m25451Y();
                return m25451Y;
            }
        });
    }

    /* renamed from: y */
    public final C8421b m25384y() {
        return (C8421b) m25447a(C8421b.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$jxnYvEtcWRl3UpaeRMApzDJNU_M
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8421b m25452X;
                m25452X = C8520q.this.m25452X();
                return m25452X;
            }
        });
    }

    /* renamed from: z */
    public final C8441l m25383z() {
        return (C8441l) m25447a(C8441l.class, new AbstractC8521a() { // from class: com.criteo.publisher._$$Lambda$q$_GEknBpL5cQNb3iWlhv0UBxI02Y
            @Override // com.criteo.publisher.C8520q.AbstractC8521a
            /* renamed from: a */
            public final Object mo25382a() {
                C8441l m25458R;
                m25458R = C8520q.this.m25458R();
                return m25458R;
            }
        });
    }
}
