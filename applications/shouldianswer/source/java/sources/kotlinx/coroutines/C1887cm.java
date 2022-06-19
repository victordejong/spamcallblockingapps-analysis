package kotlinx.coroutines;

import kotlin.p075c.AbstractC1646f;
import kotlin.p081e.p083b.C1694h;
/* renamed from: kotlinx.coroutines.cm */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/cm.class */
public final class C1887cm extends AbstractC1950y {

    /* renamed from: b */
    public static final C1887cm f4629b = new C1887cm();

    private C1887cm() {
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    /* renamed from: a */
    public void mo2512a(AbstractC1646f abstractC1646f, Runnable runnable) {
        C1694h.m3117b(abstractC1646f, "context");
        C1694h.m3117b(runnable, "block");
        throw new UnsupportedOperationException();
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    /* renamed from: a */
    public boolean mo2513a(AbstractC1646f abstractC1646f) {
        C1694h.m3117b(abstractC1646f, "context");
        return false;
    }

    @Override // kotlinx.coroutines.AbstractC1950y
    public String toString() {
        return "Unconfined";
    }
}
