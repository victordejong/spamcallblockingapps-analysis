package kotlinx.coroutines;

import kotlin.C1775o;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.p089a.C1779a;
/* renamed from: kotlinx.coroutines.bt */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bt.class */
final class C1865bt extends C1876cd {

    /* renamed from: c */
    private AbstractC1674m<? super AbstractC1786ad, ? super AbstractC1641c<? super C1775o>, ? extends Object> f4611c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1865bt(AbstractC1646f abstractC1646f, AbstractC1674m<? super AbstractC1786ad, ? super AbstractC1641c<? super C1775o>, ? extends Object> abstractC1674m) {
        super(abstractC1646f, false);
        C1694h.m3117b(abstractC1646f, "parentContext");
        C1694h.m3117b(abstractC1674m, "block");
        this.f4611c = abstractC1674m;
    }

    @Override // kotlinx.coroutines.AbstractC1778a
    /* renamed from: g */
    protected void mo2734g() {
        AbstractC1674m<? super AbstractC1786ad, ? super AbstractC1641c<? super C1775o>, ? extends Object> abstractC1674m = this.f4611c;
        if (abstractC1674m != null) {
            this.f4611c = null;
            C1779a.m2970a(abstractC1674m, this, this);
            return;
        }
        throw new IllegalStateException("Already started".toString());
    }
}
