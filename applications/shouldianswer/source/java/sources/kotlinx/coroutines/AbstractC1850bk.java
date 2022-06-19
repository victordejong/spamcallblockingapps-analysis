package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p082a.AbstractC1663b;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.CoroutineExceptionHandler;
/* renamed from: kotlinx.coroutines.bk */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bk.class */
public interface AbstractC1850bk extends AbstractC1646f.AbstractC1649b {

    /* renamed from: b */
    public static final C1852b f4594b = C1852b.f4595a;

    /* renamed from: kotlinx.coroutines.bk$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bk$a.class */
    public static final class C1851a {
        /* renamed from: a */
        public static <R> R m2808a(AbstractC1850bk abstractC1850bk, R r, AbstractC1674m<? super R, ? super AbstractC1646f.AbstractC1649b, ? extends R> abstractC1674m) {
            C1694h.m3117b(abstractC1674m, "operation");
            return (R) AbstractC1646f.AbstractC1649b.C1650a.m3143a(abstractC1850bk, r, abstractC1674m);
        }

        /* renamed from: a */
        public static <E extends AbstractC1646f.AbstractC1649b> E m2807a(AbstractC1850bk abstractC1850bk, AbstractC1646f.AbstractC1651c<E> abstractC1651c) {
            C1694h.m3117b(abstractC1651c, "key");
            return (E) AbstractC1646f.AbstractC1649b.C1650a.m3142a(abstractC1850bk, abstractC1651c);
        }

        /* renamed from: a */
        public static AbstractC1646f m2806a(AbstractC1850bk abstractC1850bk, AbstractC1646f abstractC1646f) {
            C1694h.m3117b(abstractC1646f, "context");
            return AbstractC1646f.AbstractC1649b.C1650a.m3141a(abstractC1850bk, abstractC1646f);
        }

        /* renamed from: a */
        public static /* synthetic */ AbstractC1812au m2805a(AbstractC1850bk abstractC1850bk, boolean z, boolean z2, AbstractC1663b abstractC1663b, int i, Object obj) {
            if (obj == null) {
                if ((i & 1) != 0) {
                    z = false;
                }
                if ((i & 2) != 0) {
                    z2 = true;
                }
                return abstractC1850bk.mo2777a(z, z2, abstractC1663b);
            }
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: invokeOnCompletion");
        }

        /* renamed from: b */
        public static AbstractC1646f m2804b(AbstractC1850bk abstractC1850bk, AbstractC1646f.AbstractC1651c<?> abstractC1651c) {
            C1694h.m3117b(abstractC1651c, "key");
            return AbstractC1646f.AbstractC1649b.C1650a.m3140b(abstractC1850bk, abstractC1651c);
        }
    }

    /* renamed from: kotlinx.coroutines.bk$b */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bk$b.class */
    public static final class C1852b implements AbstractC1646f.AbstractC1651c<AbstractC1850bk> {

        /* renamed from: a */
        static final /* synthetic */ C1852b f4595a = new C1852b();

        static {
            CoroutineExceptionHandler.C1777a c1777a = CoroutineExceptionHandler.f4453a;
        }

        private C1852b() {
        }
    }

    /* renamed from: a */
    AbstractC1812au mo2793a(AbstractC1663b<? super Throwable, C1775o> abstractC1663b);

    /* renamed from: a */
    AbstractC1812au mo2777a(boolean z, boolean z2, AbstractC1663b<? super Throwable, C1775o> abstractC1663b);

    /* renamed from: a */
    AbstractC1939p mo2778a(AbstractC1941r abstractC1941r);

    /* renamed from: d */
    boolean mo2763d(Throwable th);

    /* renamed from: e */
    boolean mo2762e();

    /* renamed from: l */
    boolean mo2755l();

    /* renamed from: m */
    CancellationException mo2754m();

    /* renamed from: n */
    boolean mo2753n();

    /* renamed from: o */
    void mo2752o();
}
