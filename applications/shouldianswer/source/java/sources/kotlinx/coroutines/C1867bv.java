package kotlinx.coroutines;

import kotlin.TypeCastException;
import kotlin.p081e.p083b.C1694h;
import kotlinx.coroutines.internal.C1906g;
import kotlinx.coroutines.internal.C1908i;
/* renamed from: kotlinx.coroutines.bv */
/* loaded from: classes-dex2jar.jar:kotlinx/coroutines/bv.class */
public final class C1867bv extends C1906g implements AbstractC1845bf {
    /* renamed from: a */
    public final String m2733a(String str) {
        C1694h.m3117b(str, "state");
        StringBuilder sb = new StringBuilder();
        sb.append("List{");
        sb.append(str);
        sb.append("}[");
        Object e = m2648e();
        if (e != null) {
            C1908i c1908i = (C1908i) e;
            boolean z = true;
            while (true) {
                boolean z2 = z;
                if (!(!C1694h.m3123a(c1908i, this))) {
                    sb.append("]");
                    String sb2 = sb.toString();
                    C1694h.m3122a((Object) sb2, "StringBuilder().apply(builderAction).toString()");
                    return sb2;
                }
                boolean z3 = z2;
                if (c1908i instanceof AbstractC1857bp) {
                    AbstractC1857bp abstractC1857bp = (AbstractC1857bp) c1908i;
                    if (z2) {
                        z2 = false;
                    } else {
                        sb.append(", ");
                    }
                    sb.append(abstractC1857bp);
                    z3 = z2;
                }
                c1908i = c1908i.m2647f();
                z = z3;
            }
        } else {
            throw new TypeCastException("null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        }
    }

    @Override // kotlinx.coroutines.AbstractC1845bf
    /* renamed from: b */
    public boolean mo2732b() {
        return true;
    }

    @Override // kotlinx.coroutines.AbstractC1845bf
    /* renamed from: m_ */
    public C1867bv mo2731m_() {
        return this;
    }

    @Override // kotlinx.coroutines.internal.C1908i
    public String toString() {
        return m2733a("Active");
    }
}
