package p193e.p194a.p1011l.p1025p2;

import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17140o0;
import p193e.p194a.p1011l.p1029r2.AbstractC17221a;
import p193e.p194a.p1011l.p1032u2.AbstractC17246a;
import q3.a.i0;
import s1.f0.r;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.l.p2.p0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/p0.class */
public final class C17148p0 implements AbstractC17140o0 {

    /* renamed from: a */
    public final AbstractC17100i0 f48132a;

    /* renamed from: b */
    public final AbstractC17133m0 f48133b;

    /* renamed from: c */
    public final AbstractC17246a f48134c;

    /* renamed from: d */
    public final f f48135d;

    @e(c = "com.truecaller.premium.data.PremiumProductsRepositoryImpl$getProducts$2", f = "PremiumProductsRepository.kt", l = {52}, m = "invokeSuspend")
    /* renamed from: e.a.l.p2.p0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/p0$a.class */
    public static final class C17149a extends i implements p<i0, d<? super AbstractC17140o0.AbstractC17141a>, Object> {

        /* renamed from: e */
        public int f48136e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17149a(d dVar) {
            super(2, dVar);
            C17148p0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m16474i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C17149a(dVar);
        }

        /* renamed from: k */
        public final Object m16473k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C17149a(dVar).m16472s(s.a);
        }

        /* renamed from: s */
        public final Object m16472s(Object obj) {
            AbstractC17140o0.AbstractC17141a.C17143b c17143b;
            List<C17125k1> mo16486b;
            C17125k1 c17125k1;
            String m16507d;
            a aVar = a.a;
            int i = this.f48136e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C17148p0 c17148p0 = C17148p0.this;
                List<C17125k1> mo16486b2 = c17148p0.f48133b.mo16486b();
                if (((mo16486b2 == null || (c17125k1 = (C17125k1) s1.u.i.D(mo16486b2)) == null || (m16507d = c17125k1.m16507d()) == null) ? false : r.n(m16507d, c17148p0.f48134c.mo16331a().getProviderName(), true)) && (mo16486b = C17148p0.this.f48133b.mo16486b()) != null) {
                    return new AbstractC17140o0.AbstractC17141a.C17143b(mo16486b);
                }
                C17148p0 c17148p02 = C17148p0.this;
                AbstractC17100i0 abstractC17100i0 = c17148p02.f48132a;
                String providerName = c17148p02.f48134c.mo16331a().getProviderName();
                this.f48136e = 1;
                Object m16523c = ((C17108j0) abstractC17100i0).m16523c(providerName, this);
                obj = m16523c;
                if (m16523c == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC17221a abstractC17221a = (AbstractC17221a) obj;
            if (abstractC17221a instanceof AbstractC17221a.C17224c) {
                AbstractC17221a.C17224c c17224c = (AbstractC17221a.C17224c) abstractC17221a;
                C17148p0.this.f48133b.mo16487a((List) c17224c.f48347a);
                c17143b = new AbstractC17140o0.AbstractC17141a.C17143b((List) c17224c.f48347a);
            } else {
                c17143b = abstractC17221a instanceof AbstractC17221a.C17222a ? AbstractC17140o0.AbstractC17141a.C17144c.f48122a : AbstractC17140o0.AbstractC17141a.C17142a.f48120a;
            }
            return c17143b;
        }
    }

    @e(c = "com.truecaller.premium.data.PremiumProductsRepositoryImpl$verifyProduct$2", f = "PremiumProductsRepository.kt", l = {34}, m = "invokeSuspend")
    /* renamed from: e.a.l.p2.p0$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/p0$b.class */
    public static final class C17150b extends i implements p<i0, d<? super C17125k1>, Object> {

        /* renamed from: e */
        public int f48138e;

        /* renamed from: g */
        public final /* synthetic */ String f48140g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17150b(String str, d dVar) {
            super(2, dVar);
            C17148p0.this = r5;
            this.f48140g = str;
        }

        /* renamed from: i */
        public final d<s> m16471i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C17150b(this.f48140g, dVar);
        }

        /* renamed from: k */
        public final Object m16470k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C17150b(this.f48140g, dVar).m16469s(s.a);
        }

        /* renamed from: s */
        public final Object m16469s(Object obj) {
            a aVar = a.a;
            int i = this.f48138e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC17100i0 abstractC17100i0 = C17148p0.this.f48132a;
                String str = this.f48140g;
                this.f48138e = 1;
                Object m16519g = ((C17108j0) abstractC17100i0).m16519g(str, this);
                obj = m16519g;
                if (m16519g == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC17221a abstractC17221a = (AbstractC17221a) obj;
            C17125k1 c17125k1 = null;
            if (abstractC17221a instanceof AbstractC17221a.C17224c) {
                C17125k1 c17125k12 = (C17125k1) ((AbstractC17221a.C17224c) abstractC17221a).f48347a;
                c17125k1 = null;
                if (r.n(c17125k12.m16507d(), C17148p0.this.f48134c.mo16331a().getProviderName(), true)) {
                    c17125k1 = c17125k12;
                }
            }
            return c17125k1;
        }
    }

    @Inject
    public C17148p0(AbstractC17100i0 abstractC17100i0, AbstractC17133m0 abstractC17133m0, AbstractC17246a abstractC17246a, @Named("IO") f fVar) {
        l.e(abstractC17100i0, "premiumNetworkHelper");
        l.e(abstractC17133m0, "premiumProductsCache");
        l.e(abstractC17246a, "premiumProductStoreProvider");
        l.e(fVar, "asyncContext");
        this.f48132a = abstractC17100i0;
        this.f48133b = abstractC17133m0;
        this.f48134c = abstractC17246a;
        this.f48135d = fVar;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17140o0
    /* renamed from: a */
    public Object mo16477a(String str, d<? super C17125k1> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f48135d, new C17150b(str, null), dVar);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17140o0
    /* renamed from: b */
    public Object mo16476b(d<? super AbstractC17140o0.AbstractC17141a> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f48135d, new C17149a(null), dVar);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17140o0
    /* renamed from: c */
    public void mo16475c() {
        this.f48133b.clear();
    }
}
