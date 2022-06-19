package kotlin.p086h;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlin.h.a */
/* loaded from: classes-dex2jar.jar:kotlin/h/a.class */
public final class C1727a<T> implements AbstractC1728b<T> {

    /* renamed from: a */
    private final AtomicReference<AbstractC1728b<T>> f4405a;

    public C1727a(AbstractC1728b<? extends T> abstractC1728b) {
        C1694h.m3117b(abstractC1728b, "sequence");
        this.f4405a = new AtomicReference<>(abstractC1728b);
    }

    @Override // kotlin.p086h.AbstractC1728b
    /* renamed from: a */
    public Iterator<T> mo2994a() {
        AbstractC1728b<T> andSet = this.f4405a.getAndSet(null);
        if (andSet != null) {
            return andSet.mo2994a();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
