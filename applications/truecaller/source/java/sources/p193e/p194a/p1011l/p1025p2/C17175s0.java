package p193e.p194a.p1011l.p1025p2;

import com.truecaller.premium.data.PremiumScope;
import com.truecaller.premium.data.ProductKind;
import com.truecaller.premium.data.SubscriptionStatusReason;
import com.truecaller.premium.provider.Store;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1025p2.AbstractC17168r0;
import p193e.p194a.p1011l.p1025p2.p1026d2.AbstractC17057f;
import p193e.p194a.p1011l.p1025p2.p1027e2.C17080d;
import p193e.p194a.p1011l.p1029r2.AbstractC17221a;
import q3.a.i0;
import s1.f0.r;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
import w3.c.a.a.a.h;
/* renamed from: e.a.l.p2.s0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/s0.class */
public final class C17175s0 implements AbstractC17168r0 {

    /* renamed from: a */
    public final AbstractC17100i0 f48180a;

    /* renamed from: b */
    public final AbstractC17037b1 f48181b;

    /* renamed from: c */
    public final AbstractC17197v0 f48182c;

    /* renamed from: d */
    public final C17080d f48183d;

    /* renamed from: e */
    public final AbstractC17057f f48184e;

    /* renamed from: f */
    public final f f48185f;

    @e(c = "com.truecaller.premium.data.PremiumRepositoryImpl$fetchStatus$2", f = "PremiumRepositoryImpl.kt", l = {39}, m = "invokeSuspend")
    /* renamed from: e.a.l.p2.s0$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/s0$a.class */
    public static final class C17176a extends i implements p<i0, d<? super k<? extends Integer, ? extends C17203x>>, Object> {

        /* renamed from: e */
        public int f48186e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17176a(d dVar) {
            super(2, dVar);
            C17175s0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m16446i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C17176a(dVar);
        }

        /* renamed from: k */
        public final Object m16445k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C17176a(dVar).m16444s(s.a);
        }

        /* renamed from: s */
        public final Object m16444s(Object obj) {
            k kVar;
            a aVar = a.a;
            int i = this.f48186e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC17100i0 abstractC17100i0 = C17175s0.this.f48180a;
                this.f48186e = 1;
                Object m16522d = ((C17108j0) abstractC17100i0).m16522d(this);
                obj = m16522d;
                if (m16522d == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            AbstractC17221a abstractC17221a = (AbstractC17221a) obj;
            if (abstractC17221a instanceof AbstractC17221a.C17224c) {
                C17203x m16449f = C17175s0.this.m16449f((C17145o1) ((AbstractC17221a.C17224c) abstractC17221a).f48347a);
                C17175s0.this.m16447h(m16449f);
                kVar = new k(new Integer(0), m16449f);
            } else {
                kVar = abstractC17221a instanceof AbstractC17221a.C17222a ? new k(new Integer(-2), new C17203x(0L, 0L, 0L, 0, null, null, null, null, null, false, false, false, null, 8191)) : new k(new Integer(-1), new C17203x(0L, 0L, 0L, 0, null, null, null, null, null, false, false, false, null, 8191));
            }
            return kVar;
        }
    }

    @e(c = "com.truecaller.premium.data.PremiumRepositoryImpl$fetchStatusBlocking$1", f = "PremiumRepositoryImpl.kt", l = {35}, m = "invokeSuspend")
    /* renamed from: e.a.l.p2.s0$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/s0$b.class */
    public static final class C17177b extends i implements p<i0, d<? super k<? extends Integer, ? extends C17203x>>, Object> {

        /* renamed from: e */
        public int f48188e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17177b(d dVar) {
            super(2, dVar);
            C17175s0.this = r5;
        }

        /* renamed from: i */
        public final d<s> m16443i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C17177b(dVar);
        }

        /* renamed from: k */
        public final Object m16442k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C17177b(dVar).m16441s(s.a);
        }

        /* renamed from: s */
        public final Object m16441s(Object obj) {
            a aVar = a.a;
            int i = this.f48188e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C17175s0 c17175s0 = C17175s0.this;
                this.f48188e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(c17175s0.f48185f, new C17176a(null), this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @e(c = "com.truecaller.premium.data.PremiumRepositoryImpl$restorePremium$2", f = "PremiumRepositoryImpl.kt", l = {55}, m = "invokeSuspend")
    /* renamed from: e.a.l.p2.s0$c */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/s0$c.class */
    public static final class C17178c extends i implements p<i0, d<? super AbstractC17168r0.C17169a>, Object> {

        /* renamed from: e */
        public Object f48190e;

        /* renamed from: f */
        public int f48191f;

        /* renamed from: h */
        public final /* synthetic */ String f48193h;

        /* renamed from: i */
        public final /* synthetic */ String f48194i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17178c(String str, String str2, d dVar) {
            super(2, dVar);
            C17175s0.this = r5;
            this.f48193h = str;
            this.f48194i = str2;
        }

        /* renamed from: i */
        public final d<s> m16440i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C17178c(this.f48193h, this.f48194i, dVar);
        }

        /* renamed from: k */
        public final Object m16439k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C17178c(this.f48193h, this.f48194i, dVar).m16438s(s.a);
        }

        /* renamed from: s */
        public final Object m16438s(Object obj) {
            Object obj2;
            C17175s0 c17175s0;
            a aVar = a.a;
            int i = this.f48191f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C17175s0 c17175s02 = C17175s0.this;
                AbstractC17100i0 abstractC17100i0 = c17175s02.f48180a;
                String str = this.f48193h;
                String str2 = this.f48194i;
                this.f48190e = c17175s02;
                this.f48191f = 1;
                obj2 = ((C17108j0) abstractC17100i0).m16520f(str, str2, this);
                if (obj2 == aVar) {
                    return aVar;
                }
                c17175s0 = c17175s02;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c17175s0 = (C17175s0) this.f48190e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            return C17175s0.m16450e(c17175s0, (AbstractC17221a) obj2, this.f48193h);
        }
    }

    @e(c = "com.truecaller.premium.data.PremiumRepositoryImpl$verifyPurchase$2", f = "PremiumRepositoryImpl.kt", l = {51}, m = "invokeSuspend")
    /* renamed from: e.a.l.p2.s0$d */
    /* loaded from: classes12-dex2jar.jar:e/a/l/p2/s0$d.class */
    public static final class C17179d extends i implements p<i0, d<? super AbstractC17168r0.C17169a>, Object> {

        /* renamed from: e */
        public Object f48195e;

        /* renamed from: f */
        public int f48196f;

        /* renamed from: h */
        public final /* synthetic */ String f48198h;

        /* renamed from: i */
        public final /* synthetic */ String f48199i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C17179d(String str, String str2, d dVar) {
            super(2, dVar);
            C17175s0.this = r5;
            this.f48198h = str;
            this.f48199i = str2;
        }

        /* renamed from: i */
        public final d<s> m16437i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C17179d(this.f48198h, this.f48199i, dVar);
        }

        /* renamed from: k */
        public final Object m16436k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C17179d(this.f48198h, this.f48199i, dVar).m16435s(s.a);
        }

        /* renamed from: s */
        public final Object m16435s(Object obj) {
            Object obj2;
            C17175s0 c17175s0;
            a aVar = a.a;
            int i = this.f48196f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C17175s0 c17175s02 = C17175s0.this;
                AbstractC17100i0 abstractC17100i0 = c17175s02.f48180a;
                String str = this.f48198h;
                String str2 = this.f48199i;
                this.f48195e = c17175s02;
                this.f48196f = 1;
                obj2 = ((C17108j0) abstractC17100i0).m16518h(str, str2, this);
                if (obj2 == aVar) {
                    return aVar;
                }
                c17175s0 = c17175s02;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c17175s0 = (C17175s0) this.f48195e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            return C17175s0.m16450e(c17175s0, (AbstractC17221a) obj2, this.f48198h);
        }
    }

    @Inject
    public C17175s0(AbstractC17100i0 abstractC17100i0, AbstractC17037b1 abstractC17037b1, AbstractC17197v0 abstractC17197v0, C17080d c17080d, AbstractC17057f abstractC17057f, @Named("IO") f fVar) {
        l.e(abstractC17100i0, "premiumNetworkHelper");
        l.e(abstractC17037b1, "premiumSubscriptionStatusRepository");
        l.e(abstractC17197v0, "premiumStateSettings");
        l.e(c17080d, "statusUpdateNotifier");
        l.e(abstractC17057f, "premiumFeatureRepository");
        l.e(fVar, "asyncContext");
        this.f48180a = abstractC17100i0;
        this.f48181b = abstractC17037b1;
        this.f48182c = abstractC17197v0;
        this.f48183d = c17080d;
        this.f48184e = abstractC17057f;
        this.f48185f = fVar;
    }

    /* renamed from: e */
    public static final AbstractC17168r0.C17169a m16450e(C17175s0 c17175s0, AbstractC17221a abstractC17221a, String str) {
        AbstractC17168r0.C17169a c17169a;
        Objects.requireNonNull(c17175s0);
        if (abstractC17221a instanceof AbstractC17221a.C17224c) {
            AbstractC17221a.C17224c c17224c = (AbstractC17221a.C17224c) abstractC17221a;
            C17203x m16449f = c17175s0.m16449f((C17145o1) c17224c.f48347a);
            c17175s0.m16447h(m16449f);
            String m16479b = ((C17145o1) c17224c.f48347a).m16479b();
            c17169a = new AbstractC17168r0.C17169a(h.f(m16479b, "Successful") ? 0 : h.f(m16479b, "ExistsAnotherUser") ? 2 : h.f(m16479b, "ExistsSameUser") ? 3 : h.f(m16479b, "NotPremiumOwnerDevice") ? 4 : 1, str, m16449f);
        } else {
            c17169a = abstractC17221a instanceof AbstractC17221a.C17222a ? new AbstractC17168r0.C17169a(-2, str, new C17203x(0L, 0L, 0L, 0, null, null, null, null, null, false, false, false, null, 8191)) : new AbstractC17168r0.C17169a(-1, str, new C17203x(0L, 0L, 0L, 0, null, null, null, null, null, false, false, false, null, 8191));
        }
        return c17169a;
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17168r0
    /* renamed from: a */
    public Object mo16454a(String str, String str2, d<? super AbstractC17168r0.C17169a> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f48185f, new C17179d(str, str2, null), dVar);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17168r0
    /* renamed from: b */
    public Object mo16453b(d<? super k<Integer, C17203x>> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f48185f, new C17176a(null), dVar);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17168r0
    /* renamed from: c */
    public k<Integer, C17203x> mo16452c() {
        return (k) s1.a.a.a.v0.f.d.c3((f) null, new C17177b(null), 1, (Object) null);
    }

    @Override // p193e.p194a.p1011l.p1025p2.AbstractC17168r0
    /* renamed from: d */
    public Object mo16451d(String str, String str2, d<? super AbstractC17168r0.C17169a> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f48185f, new C17178c(str, str2, null), dVar);
    }

    /* renamed from: f */
    public final C17203x m16449f(C17145o1 c17145o1) {
        C17203x c17203x;
        C17204x0 m16480a;
        Store store;
        if (c17145o1 == null || (m16480a = c17145o1.m16480a()) == null) {
            c17203x = new C17203x(0L, 0L, 0L, 0, null, null, null, null, null, false, false, false, null, 8191);
        } else {
            SubscriptionStatusReason m34821a = SubscriptionStatusReason.Companion.m34821a(m16480a.m16377j());
            this.f48181b.mo16605c(m34821a);
            long m16448g = m16448g(m16480a.m16386a());
            long m16448g2 = m16448g(m16480a.m16378i());
            long m16448g3 = m16448g(m16480a.m16385b());
            String m16381f = m16480a.m16381f();
            int i = h.j(m16381f) ? 0 : s1.a.a.a.v0.f.d.I3(m16381f) ? 1 : 2;
            String m16379h = m16480a.m16379h();
            String m16383d = m16480a.m16383d();
            String str = "regular";
            if (!h.f(m16383d, "regular")) {
                str = h.f(m16383d, "gold") ? "gold" : "none";
            }
            Boolean m16375l = m16480a.m16375l();
            ProductKind m34822a = ProductKind.Companion.m34822a(m16480a.m16384c());
            PremiumScope fromRemote = PremiumScope.fromRemote(m16480a.m16380g());
            l.d(fromRemote, "PremiumScope.fromRemote(scope)");
            boolean m16376k = m16480a.m16376k();
            boolean z = m34821a == SubscriptionStatusReason.SUBSCRIPTION_IN_GRACE_PERIOD;
            boolean m16374m = m16480a.m16374m();
            Store.C4354a c4354a = Store.Companion;
            String m16382e = m16480a.m16382e();
            Objects.requireNonNull(c4354a);
            Store[] values = Store.values();
            int i2 = 0;
            while (true) {
                if (i2 >= 3) {
                    store = null;
                    break;
                }
                Store store2 = values[i2];
                if (r.n(store2.getProviderName(), m16382e, true)) {
                    store = store2;
                    break;
                }
                i2++;
            }
            if (store == null) {
                store = Store.NONE;
            }
            c17203x = new C17203x(m16448g, m16448g2, m16448g3, i, m16375l, m16379h, str, m34822a, fromRemote, m16376k, z, m16374m, store);
        }
        return c17203x;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    /* renamed from: g */
    public final long m16448g(String str) {
        char c;
        if (h.j(str)) {
            c = 0;
        } else {
            b b = w3.b.a.i0.i.e0.b(str);
            l.d(b, "ISODateTimeFormat.dateTi…ser().parseDateTime(date)");
            c = ((w3.b.a.e0.e) b).a;
        }
        return c;
    }

    /* renamed from: h */
    public final void m16447h(C17203x c17203x) {
        C17207y0 c17207y0 = new C17207y0(this.f48182c.mo16395n(), c17203x);
        this.f48182c.mo16394o(c17203x);
        this.f48184e.mo16593o(c17203x);
        this.f48183d.mo16370a(c17207y0);
    }
}
