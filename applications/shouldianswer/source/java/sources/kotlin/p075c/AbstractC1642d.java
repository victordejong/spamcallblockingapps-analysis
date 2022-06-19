package kotlin.p075c;

import kotlin.TypeCastException;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.c.d */
/* loaded from: classes-dex2jar.jar:kotlin/c/d.class */
public interface AbstractC1642d extends AbstractC1646f.AbstractC1649b {

    /* renamed from: a */
    public static final C1644b f4366a = C1644b.f4367a;

    /* renamed from: kotlin.c.d$a */
    /* loaded from: classes-dex2jar.jar:kotlin/c/d$a.class */
    public static final class C1643a {
        /* renamed from: a */
        public static <E extends AbstractC1646f.AbstractC1649b> E m3148a(AbstractC1642d abstractC1642d, AbstractC1646f.AbstractC1651c<E> abstractC1651c) {
            AbstractC1642d abstractC1642d2;
            C1694h.m3117b(abstractC1651c, "key");
            if (abstractC1651c != AbstractC1642d.f4366a) {
                abstractC1642d2 = null;
            } else if (abstractC1642d == null) {
                throw new TypeCastException("null cannot be cast to non-null type E");
            } else {
                abstractC1642d2 = abstractC1642d;
            }
            return abstractC1642d2;
        }

        /* renamed from: a */
        public static void m3149a(AbstractC1642d abstractC1642d, AbstractC1641c<?> abstractC1641c) {
            C1694h.m3117b(abstractC1641c, "continuation");
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v4, types: [kotlin.c.g] */
        /* renamed from: b */
        public static AbstractC1646f m3147b(AbstractC1642d abstractC1642d, AbstractC1646f.AbstractC1651c<?> abstractC1651c) {
            C1694h.m3117b(abstractC1651c, "key");
            if (abstractC1651c == AbstractC1642d.f4366a) {
                abstractC1642d = C1652g.f4369a;
            }
            return abstractC1642d;
        }
    }

    /* renamed from: kotlin.c.d$b */
    /* loaded from: classes-dex2jar.jar:kotlin/c/d$b.class */
    public static final class C1644b implements AbstractC1646f.AbstractC1651c<AbstractC1642d> {

        /* renamed from: a */
        static final /* synthetic */ C1644b f4367a = new C1644b();

        private C1644b() {
        }
    }

    /* renamed from: a */
    <T> AbstractC1641c<T> mo2514a(AbstractC1641c<? super T> abstractC1641c);

    /* renamed from: b */
    void mo2511b(AbstractC1641c<?> abstractC1641c);
}
