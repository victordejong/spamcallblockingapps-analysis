package kotlin.p075c.p077b.p078a;

import java.io.Serializable;
import kotlin.C1768j;
import kotlin.C1771k;
import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.p076a.C1622b;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.c.b.a.a */
/* loaded from: classes-dex2jar.jar:kotlin/c/b/a/a.class */
public abstract class AbstractC1629a implements Serializable, AbstractC1633e, AbstractC1641c<Object> {

    /* renamed from: a */
    private final AbstractC1641c<Object> f4355a;

    public AbstractC1629a(AbstractC1641c<Object> abstractC1641c) {
        this.f4355a = abstractC1641c;
    }

    /* renamed from: a */
    public AbstractC1641c<C1775o> mo43a(Object obj, AbstractC1641c<?> abstractC1641c) {
        C1694h.m3117b(abstractC1641c, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.p075c.AbstractC1641c
    /* renamed from: a */
    public final void mo2553a(Object obj) {
        Object mo42b;
        AbstractC1641c abstractC1641c = this;
        while (true) {
            AbstractC1629a abstractC1629a = (AbstractC1629a) abstractC1641c;
            C1636h.m3153b(abstractC1629a);
            AbstractC1641c abstractC1641c2 = abstractC1629a.f4355a;
            if (abstractC1641c2 == null) {
                C1694h.m3124a();
            }
            try {
                mo42b = abstractC1629a.mo42b(obj);
            } catch (Throwable th) {
                C1768j.C1769a c1769a = C1768j.f4443a;
                obj = C1768j.m2981e(C1771k.m2978a(th));
            }
            if (mo42b == C1622b.m3174a()) {
                return;
            }
            C1768j.C1769a c1769a2 = C1768j.f4443a;
            obj = C1768j.m2981e(mo42b);
            abstractC1629a.mo3165b();
            if (!(abstractC1641c2 instanceof AbstractC1629a)) {
                abstractC1641c2.mo2553a(obj);
                return;
            }
            abstractC1641c = abstractC1641c2;
        }
    }

    /* renamed from: b */
    protected abstract Object mo42b(Object obj);

    /* renamed from: b */
    protected void mo3165b() {
    }

    @Override // kotlin.p075c.p077b.p078a.AbstractC1633e
    /* renamed from: c */
    public AbstractC1633e mo2542c() {
        AbstractC1641c<Object> abstractC1641c = this.f4355a;
        AbstractC1641c<Object> abstractC1641c2 = abstractC1641c;
        if (!(abstractC1641c instanceof AbstractC1633e)) {
            abstractC1641c2 = null;
        }
        return (AbstractC1633e) abstractC1641c2;
    }

    @Override // kotlin.p075c.p077b.p078a.AbstractC1633e
    /* renamed from: d */
    public StackTraceElement mo2541d() {
        return C1635g.m3157a(this);
    }

    /* renamed from: e */
    public final AbstractC1641c<Object> m3169e() {
        return this.f4355a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Continuation at ");
        Object mo2541d = mo2541d();
        if (mo2541d == null) {
            mo2541d = getClass().getName();
        }
        sb.append((Serializable) mo2541d);
        return sb.toString();
    }
}
