package kotlinx.coroutines;

import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.AbstractC1850bk;
/* renamed from: kotlinx.coroutines.bp */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bp.class */
public abstract class AbstractC1857bp<J extends AbstractC1850bk> extends AbstractC1948w implements AbstractC1812au, AbstractC1845bf {

    /* renamed from: b */
    public final J f4596b;

    public AbstractC1857bp(J j) {
        C1694h.m3117b(j, "job");
        this.f4596b = j;
    }

    @Override // kotlinx.coroutines.AbstractC1812au
    /* renamed from: a */
    public void mo2730a() {
        J j = this.f4596b;
        if (j != null) {
            ((C1858bq) j).m2785a((AbstractC1857bp<?>) this);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.JobSupport");
    }

    @Override // kotlinx.coroutines.AbstractC1845bf
    /* renamed from: b */
    public boolean mo2732b() {
        return true;
    }

    @Override // kotlinx.coroutines.AbstractC1845bf
    /* renamed from: m_ */
    public C1867bv mo2731m_() {
        return null;
    }
}
