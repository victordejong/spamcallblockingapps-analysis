package kotlinx.coroutines;

import kotlin.NoWhenBranchMatchedException;
import kotlin.p075c.AbstractC1641c;
import kotlin.p075c.C1645e;
import kotlin.p081e.p082a.AbstractC1674m;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.p089a.C1779a;
import kotlinx.coroutines.p089a.C1780b;
/* renamed from: kotlinx.coroutines.ae */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/ae.class */
public enum EnumC1787ae {
    DEFAULT,
    LAZY,
    ATOMIC,
    UNDISPATCHED;

    /* renamed from: a */
    public final <R, T> void m2957a(AbstractC1674m<? super R, ? super AbstractC1641c<? super T>, ? extends Object> abstractC1674m, R r, AbstractC1641c<? super T> abstractC1641c) {
        C1694h.m3117b(abstractC1674m, "block");
        C1694h.m3117b(abstractC1641c, "completion");
        int i = C1788af.f4469b[ordinal()];
        if (i == 1) {
            C1779a.m2970a(abstractC1674m, r, abstractC1641c);
        } else if (i == 2) {
            C1645e.m3146a(abstractC1674m, r, abstractC1641c);
        } else if (i == 3) {
            C1780b.m2969a(abstractC1674m, r, abstractC1641c);
        } else if (i != 4) {
            throw new NoWhenBranchMatchedException();
        }
    }

    /* renamed from: a */
    public final boolean m2958a() {
        return this == LAZY;
    }
}
