package kotlin.p075c;

import kotlin.TypeCastException;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.AbstractC1695i;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.c.f */
/* loaded from: classes-dex2jar.jar:kotlin/c/f.class */
public interface AbstractC1646f {

    /* renamed from: kotlin.c.f$a */
    /* loaded from: classes-dex2jar.jar:kotlin/c/f$a.class */
    public static final class C1647a {

        /* renamed from: kotlin.c.f$a$a */
        /* loaded from: classes-dex2jar.jar:kotlin/c/f$a$a.class */
        public static final class C1648a extends AbstractC1695i implements AbstractC1674m<AbstractC1646f, AbstractC1649b, AbstractC1646f> {

            /* renamed from: a */
            public static final C1648a f4368a = new C1648a();

            C1648a() {
                super(2);
            }

            /* renamed from: a */
            public final AbstractC1646f mo44a(AbstractC1646f abstractC1646f, AbstractC1649b abstractC1649b) {
                AbstractC1649b abstractC1649b2;
                C1627b c1627b;
                C1694h.m3117b(abstractC1646f, "acc");
                C1694h.m3117b(abstractC1649b, "element");
                AbstractC1646f minusKey = abstractC1646f.minusKey(abstractC1649b.getKey());
                if (minusKey == C1652g.f4369a) {
                    abstractC1649b2 = abstractC1649b;
                } else {
                    AbstractC1642d abstractC1642d = (AbstractC1642d) minusKey.get(AbstractC1642d.f4366a);
                    if (abstractC1642d == null) {
                        c1627b = new C1627b(minusKey, abstractC1649b);
                    } else {
                        AbstractC1646f minusKey2 = minusKey.minusKey(AbstractC1642d.f4366a);
                        c1627b = minusKey2 == C1652g.f4369a ? new C1627b(abstractC1649b, abstractC1642d) : new C1627b(new C1627b(minusKey2, abstractC1649b), abstractC1642d);
                    }
                    abstractC1649b2 = c1627b;
                }
                return abstractC1649b2;
            }
        }

        /* renamed from: a */
        public static AbstractC1646f m3145a(AbstractC1646f abstractC1646f, AbstractC1646f abstractC1646f2) {
            C1694h.m3117b(abstractC1646f2, "context");
            if (abstractC1646f2 != C1652g.f4369a) {
                abstractC1646f = (AbstractC1646f) abstractC1646f2.fold(abstractC1646f, C1648a.f4368a);
            }
            return abstractC1646f;
        }
    }

    /* renamed from: kotlin.c.f$b */
    /* loaded from: classes-dex2jar.jar:kotlin/c/f$b.class */
    public interface AbstractC1649b extends AbstractC1646f {

        /* renamed from: kotlin.c.f$b$a */
        /* loaded from: classes-dex2jar.jar:kotlin/c/f$b$a.class */
        public static final class C1650a {
            /* renamed from: a */
            public static <R> R m3143a(AbstractC1649b abstractC1649b, R r, AbstractC1674m<? super R, ? super AbstractC1649b, ? extends R> abstractC1674m) {
                C1694h.m3117b(abstractC1674m, "operation");
                return abstractC1674m.mo44a(r, abstractC1649b);
            }

            /* renamed from: a */
            public static <E extends AbstractC1649b> E m3142a(AbstractC1649b abstractC1649b, AbstractC1651c<E> abstractC1651c) {
                C1694h.m3117b(abstractC1651c, "key");
                if (!C1694h.m3123a(abstractC1649b.getKey(), abstractC1651c)) {
                    abstractC1649b = null;
                } else if (abstractC1649b == null) {
                    throw new TypeCastException("null cannot be cast to non-null type E");
                }
                return (E) abstractC1649b;
            }

            /* renamed from: a */
            public static AbstractC1646f m3141a(AbstractC1649b abstractC1649b, AbstractC1646f abstractC1646f) {
                C1694h.m3117b(abstractC1646f, "context");
                return C1647a.m3145a(abstractC1649b, abstractC1646f);
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v7, types: [kotlin.c.g] */
            /* renamed from: b */
            public static AbstractC1646f m3140b(AbstractC1649b abstractC1649b, AbstractC1651c<?> abstractC1651c) {
                C1694h.m3117b(abstractC1651c, "key");
                AbstractC1649b abstractC1649b2 = abstractC1649b;
                if (C1694h.m3123a(abstractC1649b.getKey(), abstractC1651c)) {
                    abstractC1649b2 = C1652g.f4369a;
                }
                return abstractC1649b2;
            }
        }

        @Override // kotlin.p075c.AbstractC1646f
        <E extends AbstractC1649b> E get(AbstractC1651c<E> abstractC1651c);

        AbstractC1651c<?> getKey();
    }

    /* renamed from: kotlin.c.f$c */
    /* loaded from: classes-dex2jar.jar:kotlin/c/f$c.class */
    public interface AbstractC1651c<E extends AbstractC1649b> {
    }

    <R> R fold(R r, AbstractC1674m<? super R, ? super AbstractC1649b, ? extends R> abstractC1674m);

    <E extends AbstractC1649b> E get(AbstractC1651c<E> abstractC1651c);

    AbstractC1646f minusKey(AbstractC1651c<?> abstractC1651c);

    AbstractC1646f plus(AbstractC1646f abstractC1646f);
}
