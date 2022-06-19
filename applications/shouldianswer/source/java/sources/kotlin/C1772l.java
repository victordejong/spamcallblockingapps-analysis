package kotlin;

import java.io.Serializable;
import kotlin.p081e.p082a.AbstractC1662a;
import kotlin.p081e.p083b.C1691e;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.l */
/* loaded from: classes-dex2jar.jar:kotlin/l.class */
public final class C1772l<T> implements Serializable, AbstractC1660e<T> {

    /* renamed from: a */
    private AbstractC1662a<? extends T> f4446a;

    /* renamed from: b */
    private volatile Object f4447b;

    /* renamed from: c */
    private final Object f4448c;

    public C1772l(AbstractC1662a<? extends T> abstractC1662a, Object obj) {
        C1694h.m3117b(abstractC1662a, "initializer");
        this.f4446a = abstractC1662a;
        this.f4447b = C1774n.f4449a;
        this.f4448c = obj != null ? obj : this;
    }

    public /* synthetic */ C1772l(AbstractC1662a abstractC1662a, Object obj, int i, C1691e c1691e) {
        this(abstractC1662a, (i & 2) != 0 ? null : obj);
    }

    @Override // kotlin.AbstractC1660e
    /* renamed from: a */
    public T mo2977a() {
        T t;
        T t2 = (T) this.f4447b;
        if (t2 != C1774n.f4449a) {
            return t2;
        }
        synchronized (this.f4448c) {
            t = this.f4447b;
            if (t == C1774n.f4449a) {
                AbstractC1662a<? extends T> abstractC1662a = this.f4446a;
                if (abstractC1662a == null) {
                    C1694h.m3124a();
                }
                t = abstractC1662a.mo3a();
                this.f4447b = t;
                this.f4446a = null;
            }
        }
        return (T) t;
    }

    /* renamed from: b */
    public boolean m2976b() {
        return this.f4447b != C1774n.f4449a;
    }

    public String toString() {
        return m2976b() ? String.valueOf(mo2977a()) : "Lazy value not initialized yet.";
    }
}
