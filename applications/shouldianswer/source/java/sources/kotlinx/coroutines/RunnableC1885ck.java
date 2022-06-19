package kotlinx.coroutines;

import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p077b.p078a.AbstractC1633e;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.ck */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ck.class */
public class RunnableC1885ck<U, T extends U> extends AbstractC1778a<T> implements Runnable, AbstractC1633e, AbstractC1641c<T> {

    /* renamed from: c */
    public final long f4627c;

    /* renamed from: d */
    public final AbstractC1641c<U> f4628d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public RunnableC1885ck(long j, AbstractC1641c<? super U> abstractC1641c) {
        super(abstractC1641c.mo2555a(), true);
        C1694h.m3117b(abstractC1641c, "uCont");
        this.f4627c = j;
        this.f4628d = abstractC1641c;
    }

    @Override // kotlinx.coroutines.AbstractC1778a, kotlinx.coroutines.C1858bq
    /* renamed from: a */
    public void mo2607a(Object obj, int i, boolean z) {
        if (obj instanceof C1945t) {
            C1874cb.m2722b((AbstractC1641c) this.f4628d, ((C1945t) obj).f4697a, i);
        } else {
            C1874cb.m2723b((AbstractC1641c<? super Object>) this.f4628d, obj, i);
        }
    }

    @Override // kotlin.p075c.p077b.p078a.AbstractC1633e
    /* renamed from: c */
    public AbstractC1633e mo2542c() {
        AbstractC1641c<U> abstractC1641c = this.f4628d;
        if (!(abstractC1641c instanceof AbstractC1633e)) {
            abstractC1641c = null;
        }
        AbstractC1633e abstractC1633e = (AbstractC1633e) abstractC1641c;
        AbstractC1633e abstractC1633e2 = null;
        if (abstractC1633e != null) {
            abstractC1633e2 = abstractC1633e.mo2542c();
        }
        return abstractC1633e2;
    }

    @Override // kotlin.p075c.p077b.p078a.AbstractC1633e
    /* renamed from: d */
    public StackTraceElement mo2541d() {
        AbstractC1641c<U> abstractC1641c = this.f4628d;
        if (!(abstractC1641c instanceof AbstractC1633e)) {
            abstractC1641c = null;
        }
        AbstractC1633e abstractC1633e = (AbstractC1633e) abstractC1641c;
        StackTraceElement stackTraceElement = null;
        if (abstractC1633e != null) {
            stackTraceElement = abstractC1633e.mo2541d();
        }
        return stackTraceElement;
    }

    @Override // kotlinx.coroutines.AbstractC1778a
    /* renamed from: i */
    public int mo2606i() {
        return 2;
    }

    @Override // kotlinx.coroutines.AbstractC1778a, kotlinx.coroutines.C1858bq
    /* renamed from: j */
    public String mo2694j() {
        return super.mo2694j() + "(timeMillis=" + this.f4627c + ')';
    }

    @Override // java.lang.Runnable
    public void run() {
        mo2763d((Throwable) C1886cl.m2692a(this.f4627c, this));
    }
}
