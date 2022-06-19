package kotlin.p075c.p077b.p078a;

import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlin.p075c.C1652g;
/* renamed from: kotlin.c.b.a.j */
/* loaded from: classes-dex2jar.jar:kotlin/c/b/a/j.class */
public abstract class AbstractC1639j extends AbstractC1629a {
    public AbstractC1639j(AbstractC1641c<Object> abstractC1641c) {
        super(abstractC1641c);
        if (abstractC1641c != null) {
            if (!(abstractC1641c.mo2555a() == C1652g.f4369a)) {
                throw new IllegalArgumentException("Coroutines with restricted suspension must have EmptyCoroutineContext".toString());
            }
        }
    }

    @Override // kotlin.p075c.AbstractC1641c
    /* renamed from: a */
    public AbstractC1646f mo2555a() {
        return C1652g.f4369a;
    }
}
