package kotlinx.coroutines;

import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlin.p075c.p077b.p078a.AbstractC1633e;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.internal.C1923u;
import kotlinx.coroutines.internal.C1925w;
/* renamed from: kotlinx.coroutines.ao */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ao.class */
public final class C1806ao<T> extends AbstractC1809ar<T> implements AbstractC1633e, AbstractC1641c<T> {

    /* renamed from: a */
    public Object f4492a = C1808aq.m2936a();

    /* renamed from: b */
    public final Object f4493b;

    /* renamed from: c */
    public final AbstractC1950y f4494c;

    /* renamed from: d */
    public final AbstractC1641c<T> f4495d;

    /* renamed from: h */
    private final AbstractC1633e f4496h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C1806ao(AbstractC1950y abstractC1950y, AbstractC1641c<? super T> abstractC1641c) {
        super(0);
        C1923u c1923u;
        C1694h.m3117b(abstractC1950y, "dispatcher");
        C1694h.m3117b(abstractC1641c, "continuation");
        this.f4494c = abstractC1950y;
        this.f4495d = abstractC1641c;
        c1923u = C1808aq.f4498a;
        this.f4492a = c1923u;
        AbstractC1641c<T> abstractC1641c2 = this.f4495d;
        this.f4496h = (AbstractC1633e) (!(abstractC1641c2 instanceof AbstractC1633e) ? null : abstractC1641c2);
        this.f4493b = C1925w.m2582a(mo2555a());
    }

    @Override // kotlin.p075c.AbstractC1641c
    /* renamed from: a */
    public AbstractC1646f mo2555a() {
        return this.f4495d.mo2555a();
    }

    @Override // kotlin.p075c.AbstractC1641c
    /* renamed from: a */
    public void mo2553a(Object obj) {
        AbstractC1646f mo2555a = this.f4495d.mo2555a();
        Object m2519a = C1946u.m2519a(obj);
        if (this.f4494c.mo2513a(mo2555a)) {
            this.f4492a = m2519a;
            this.f4499e = 0;
            this.f4494c.mo2512a(mo2555a, this);
            return;
        }
        AbstractC1816ay m2713a = C1879cf.f4619a.m2713a();
        if (m2713a.m2916g()) {
            this.f4492a = m2519a;
            this.f4499e = 0;
            m2713a.m2924a((AbstractC1809ar<?>) this);
            return;
        }
        m2713a.m2922a(true);
        try {
            AbstractC1646f mo2555a2 = mo2555a();
            Object m2581a = C1925w.m2581a(mo2555a2, this.f4493b);
            this.f4495d.mo2553a(obj);
            C1775o c1775o = C1775o.f4450a;
            C1925w.m2580b(mo2555a2, m2581a);
            do {
            } while (m2713a.m2918e());
        } catch (Throwable th) {
            try {
                throw new DispatchException("Unexpected exception in unconfined event loop", th);
            } finally {
                m2713a.m2920b(true);
            }
        }
    }

    @Override // kotlin.p075c.p077b.p078a.AbstractC1633e
    /* renamed from: c */
    public AbstractC1633e mo2542c() {
        return this.f4496h;
    }

    @Override // kotlin.p075c.p077b.p078a.AbstractC1633e
    /* renamed from: d */
    public StackTraceElement mo2541d() {
        return null;
    }

    @Override // kotlinx.coroutines.AbstractC1809ar
    /* renamed from: f */
    public Object mo2538f() {
        C1923u c1923u;
        C1923u c1923u2;
        Object obj = this.f4492a;
        c1923u = C1808aq.f4498a;
        if (obj != c1923u) {
            c1923u2 = C1808aq.f4498a;
            this.f4492a = c1923u2;
            return obj;
        }
        throw new IllegalStateException("Check failed.".toString());
    }

    @Override // kotlinx.coroutines.AbstractC1809ar
    /* renamed from: i */
    public AbstractC1641c<T> mo2535i() {
        return this;
    }

    public String toString() {
        return "DispatchedContinuation[" + this.f4494c + ", " + C1789ag.m2955a((AbstractC1641c<?>) this.f4495d) + ']';
    }
}
