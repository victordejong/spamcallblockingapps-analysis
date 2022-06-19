package kotlinx.coroutines.internal;

import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlin.p075c.p077b.p078a.AbstractC1633e;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1778a;
import kotlinx.coroutines.C1874cb;
import kotlinx.coroutines.C1945t;
/* renamed from: kotlinx.coroutines.internal.r */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/internal/r.class */
public class C1920r<T> extends AbstractC1778a<T> implements AbstractC1633e {

    /* renamed from: c */
    public final AbstractC1641c<T> f4668c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C1920r(AbstractC1646f abstractC1646f, AbstractC1641c<? super T> abstractC1641c) {
        super(abstractC1646f, true);
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(abstractC1641c, "uCont");
        this.f4668c = abstractC1641c;
    }

    @Override // kotlinx.coroutines.AbstractC1778a, kotlinx.coroutines.C1858bq
    /* renamed from: a */
    public void mo2607a(Object obj, int i, boolean z) {
        if (!(obj instanceof C1945t)) {
            C1874cb.m2723b((AbstractC1641c<? super Object>) this.f4668c, obj, i);
            return;
        }
        Throwable th = ((C1945t) obj).f4697a;
        if (i != 4) {
            th = C1922t.m2598a(th, (AbstractC1641c<?>) this.f4668c);
        }
        C1874cb.m2722b((AbstractC1641c) this.f4668c, th, i);
    }

    @Override // kotlin.p075c.p077b.p078a.AbstractC1633e
    /* renamed from: c */
    public final AbstractC1633e mo2542c() {
        return (AbstractC1633e) this.f4668c;
    }

    @Override // kotlin.p075c.p077b.p078a.AbstractC1633e
    /* renamed from: d */
    public final StackTraceElement mo2541d() {
        return null;
    }

    @Override // kotlinx.coroutines.AbstractC1778a
    /* renamed from: i */
    public int mo2606i() {
        return 2;
    }
}
