package kotlinx.coroutines;

import kotlin.C1775o;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.am */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/am.class */
public interface AbstractC1796am {

    /* renamed from: kotlinx.coroutines.am$a */
    /* loaded from: classes-dex2jar.jar:kotlinx/coroutines/am$a.class */
    public static final class C1797a {
        /* renamed from: a */
        public static AbstractC1812au m2946a(AbstractC1796am abstractC1796am, long j, Runnable runnable) {
            C1694h.m3117b(runnable, "block");
            return C1791ai.m2949a().mo2612a(j, runnable);
        }
    }

    /* renamed from: a */
    AbstractC1812au mo2612a(long j, Runnable runnable);

    /* renamed from: a */
    void mo2611a(long j, AbstractC1934k<? super C1775o> abstractC1934k);
}
