package kotlinx.coroutines;

import kotlin.C1775o;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.cd */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/cd.class */
class C1876cd extends AbstractC1778a<C1775o> {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1876cd(AbstractC1646f abstractC1646f, boolean z) {
        super(abstractC1646f, z);
        C1694h.m3117b(abstractC1646f, "parentContext");
    }

    @Override // kotlinx.coroutines.C1858bq
    /* renamed from: f */
    protected void mo2721f(Throwable th) {
        C1694h.m3117b(th, "exception");
        C1781aa.m2965a(this.f4457a, th);
    }

    @Override // kotlinx.coroutines.C1858bq
    /* renamed from: n_ */
    protected boolean mo2720n_() {
        return true;
    }
}
