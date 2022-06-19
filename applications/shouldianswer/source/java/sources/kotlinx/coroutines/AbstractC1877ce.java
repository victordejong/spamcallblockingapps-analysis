package kotlinx.coroutines;

import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.ce */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ce.class */
public interface AbstractC1877ce<S> extends AbstractC1646f.AbstractC1649b {

    /* renamed from: kotlinx.coroutines.ce$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ce$a.class */
    public static final class C1878a {
        /* renamed from: a */
        public static <S, R> R m2717a(AbstractC1877ce<S> abstractC1877ce, R r, AbstractC1674m<? super R, ? super AbstractC1646f.AbstractC1649b, ? extends R> abstractC1674m) {
            C1694h.m3117b(abstractC1674m, "operation");
            return (R) AbstractC1646f.AbstractC1649b.C1650a.m3143a(abstractC1877ce, r, abstractC1674m);
        }

        /* renamed from: a */
        public static <S, E extends AbstractC1646f.AbstractC1649b> E m2716a(AbstractC1877ce<S> abstractC1877ce, AbstractC1646f.AbstractC1651c<E> abstractC1651c) {
            C1694h.m3117b(abstractC1651c, "key");
            return (E) AbstractC1646f.AbstractC1649b.C1650a.m3142a(abstractC1877ce, abstractC1651c);
        }

        /* renamed from: a */
        public static <S> AbstractC1646f m2715a(AbstractC1877ce<S> abstractC1877ce, AbstractC1646f abstractC1646f) {
            C1694h.m3117b(abstractC1646f, "context");
            return AbstractC1646f.AbstractC1649b.C1650a.m3141a(abstractC1877ce, abstractC1646f);
        }

        /* renamed from: b */
        public static <S> AbstractC1646f m2714b(AbstractC1877ce<S> abstractC1877ce, AbstractC1646f.AbstractC1651c<?> abstractC1651c) {
            C1694h.m3117b(abstractC1651c, "key");
            return AbstractC1646f.AbstractC1649b.C1650a.m3140b(abstractC1877ce, abstractC1651c);
        }
    }

    /* renamed from: a */
    void mo2719a(AbstractC1646f abstractC1646f, S s);

    /* renamed from: b */
    S mo2718b(AbstractC1646f abstractC1646f);
}
