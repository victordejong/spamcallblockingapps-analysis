package kotlinx.coroutines.internal;

import kotlin.TypeCastException;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1877ce;
/* renamed from: kotlinx.coroutines.internal.w */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/w.class */
public final class C1925w {

    /* renamed from: a */
    private static final C1923u f4671a = new C1923u("ZERO");

    /* renamed from: b */
    private static final AbstractC1674m<Object, AbstractC1646f.AbstractC1649b, Object> f4672b = C1926a.f4676a;

    /* renamed from: c */
    private static final AbstractC1674m<AbstractC1877ce<?>, AbstractC1646f.AbstractC1649b, AbstractC1877ce<?>> f4673c = C1927b.f4677a;

    /* renamed from: d */
    private static final AbstractC1674m<C1932z, AbstractC1646f.AbstractC1649b, C1932z> f4674d = C1929d.f4679a;

    /* renamed from: e */
    private static final AbstractC1674m<C1932z, AbstractC1646f.AbstractC1649b, C1932z> f4675e = C1928c.f4678a;

    /* renamed from: kotlinx.coroutines.internal.w$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/w$a.class */
    static final class C1926a extends AbstractC1695i implements AbstractC1674m<Object, AbstractC1646f.AbstractC1649b, Object> {

        /* renamed from: a */
        public static final C1926a f4676a = new C1926a();

        C1926a() {
            super(2);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v14, types: [java.lang.Integer] */
        /* renamed from: a */
        public final Object mo44a(Object obj, AbstractC1646f.AbstractC1649b abstractC1649b) {
            C1694h.m3117b(abstractC1649b, "element");
            if (abstractC1649b instanceof AbstractC1877ce) {
                Object obj2 = obj;
                if (!(obj instanceof Integer)) {
                    obj2 = null;
                }
                Integer num = (Integer) obj2;
                int intValue = num != null ? num.intValue() : 1;
                if (intValue != 0) {
                    abstractC1649b = Integer.valueOf(intValue + 1);
                }
                return abstractC1649b;
            }
            return obj;
        }
    }

    /* renamed from: kotlinx.coroutines.internal.w$b */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/w$b.class */
    static final class C1927b extends AbstractC1695i implements AbstractC1674m<AbstractC1877ce<?>, AbstractC1646f.AbstractC1649b, AbstractC1877ce<?>> {

        /* renamed from: a */
        public static final C1927b f4677a = new C1927b();

        C1927b() {
            super(2);
        }

        /* renamed from: a */
        public final AbstractC1877ce<?> mo44a(AbstractC1877ce<?> abstractC1877ce, AbstractC1646f.AbstractC1649b abstractC1649b) {
            C1694h.m3117b(abstractC1649b, "element");
            if (abstractC1877ce != null) {
                return abstractC1877ce;
            }
            AbstractC1646f.AbstractC1649b abstractC1649b2 = abstractC1649b;
            if (!(abstractC1649b instanceof AbstractC1877ce)) {
                abstractC1649b2 = null;
            }
            return (AbstractC1877ce) abstractC1649b2;
        }
    }

    /* renamed from: kotlinx.coroutines.internal.w$c */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/w$c.class */
    static final class C1928c extends AbstractC1695i implements AbstractC1674m<C1932z, AbstractC1646f.AbstractC1649b, C1932z> {

        /* renamed from: a */
        public static final C1928c f4678a = new C1928c();

        C1928c() {
            super(2);
        }

        /* renamed from: a */
        public final C1932z mo44a(C1932z c1932z, AbstractC1646f.AbstractC1649b abstractC1649b) {
            C1694h.m3117b(c1932z, "state");
            C1694h.m3117b(abstractC1649b, "element");
            if (abstractC1649b instanceof AbstractC1877ce) {
                ((AbstractC1877ce) abstractC1649b).mo2719a(c1932z.m2557c(), c1932z.m2560a());
            }
            return c1932z;
        }
    }

    /* renamed from: kotlinx.coroutines.internal.w$d */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/w$d.class */
    static final class C1929d extends AbstractC1695i implements AbstractC1674m<C1932z, AbstractC1646f.AbstractC1649b, C1932z> {

        /* renamed from: a */
        public static final C1929d f4679a = new C1929d();

        C1929d() {
            super(2);
        }

        /* renamed from: a */
        public final C1932z mo44a(C1932z c1932z, AbstractC1646f.AbstractC1649b abstractC1649b) {
            C1694h.m3117b(c1932z, "state");
            C1694h.m3117b(abstractC1649b, "element");
            if (abstractC1649b instanceof AbstractC1877ce) {
                c1932z.m2559a(((AbstractC1877ce) abstractC1649b).mo2718b(c1932z.m2557c()));
            }
            return c1932z;
        }
    }

    /* renamed from: a */
    public static final Object m2582a(AbstractC1646f abstractC1646f) {
        C1694h.m3117b(abstractC1646f, "context");
        Object fold = abstractC1646f.fold(0, f4672b);
        if (fold == null) {
            C1694h.m3124a();
        }
        return fold;
    }

    /* renamed from: a */
    public static final Object m2581a(AbstractC1646f abstractC1646f, Object obj) {
        C1923u c1923u;
        C1694h.m3117b(abstractC1646f, "context");
        if (obj == null) {
            obj = m2582a(abstractC1646f);
        }
        if (obj == 0) {
            c1923u = f4671a;
        } else if (obj instanceof Integer) {
            c1923u = abstractC1646f.fold(new C1932z(abstractC1646f, ((Number) obj).intValue()), f4674d);
        } else if (obj == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        } else {
            c1923u = ((AbstractC1877ce) obj).mo2718b(abstractC1646f);
        }
        return c1923u;
    }

    /* renamed from: b */
    public static final void m2580b(AbstractC1646f abstractC1646f, Object obj) {
        C1694h.m3117b(abstractC1646f, "context");
        if (obj == f4671a) {
            return;
        }
        if (obj instanceof C1932z) {
            ((C1932z) obj).m2558b();
            abstractC1646f.fold(obj, f4675e);
            return;
        }
        Object fold = abstractC1646f.fold(null, f4673c);
        if (fold == null) {
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.ThreadContextElement<kotlin.Any?>");
        }
        ((AbstractC1877ce) fold).mo2719a(abstractC1646f, obj);
    }
}
