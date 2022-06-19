package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.c */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/c.class */
public final class C1872c<T> extends AbstractC1778a<T> {

    /* renamed from: c */
    private final Thread f4614c;

    /* renamed from: d */
    private final AbstractC1816ay f4615d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1872c(AbstractC1646f abstractC1646f, Thread thread, AbstractC1816ay abstractC1816ay) {
        super(abstractC1646f, true);
        C1694h.m3117b(abstractC1646f, "parentContext");
        C1694h.m3117b(thread, "blockedThread");
        this.f4614c = thread;
        this.f4615d = abstractC1816ay;
    }

    @Override // kotlinx.coroutines.AbstractC1778a, kotlinx.coroutines.C1858bq
    /* renamed from: a */
    public void mo2607a(Object obj, int i, boolean z) {
        if (!C1694h.m3123a(Thread.currentThread(), this.f4614c)) {
            LockSupport.unpark(this.f4614c);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v40, types: [long] */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* renamed from: l_ */
    public final T m2728l_() {
        C1884cj.m2695a().mo2697d();
        try {
            AbstractC1816ay abstractC1816ay = this.f4615d;
            T t = null;
            if (abstractC1816ay != null) {
                AbstractC1816ay.m2923a(abstractC1816ay, false, 1, null);
            }
            while (!Thread.interrupted()) {
                AbstractC1816ay abstractC1816ay2 = this.f4615d;
                ?? mo2911b = abstractC1816ay2 != null ? abstractC1816ay2.mo2911b() : true;
                if (m2750q()) {
                    AbstractC1816ay abstractC1816ay3 = this.f4615d;
                    if (abstractC1816ay3 != null) {
                        AbstractC1816ay.m2921b(abstractC1816ay3, false, 1, null);
                    }
                    C1884cj.m2695a().mo2696e();
                    T t2 = (T) C1863br.m2739a(m2751p());
                    if (t2 instanceof C1945t) {
                        t = t2;
                    }
                    C1945t c1945t = t;
                    if (c1945t != null) {
                        throw c1945t.f4697a;
                    }
                    return t2;
                }
                C1884cj.m2695a().mo2702a(this, mo2911b == true ? 1L : 0L);
            }
            InterruptedException interruptedException = new InterruptedException();
            mo2763d((Throwable) interruptedException);
            throw interruptedException;
        } catch (Throwable th) {
            C1884cj.m2695a().mo2696e();
            throw th;
        }
    }
}
