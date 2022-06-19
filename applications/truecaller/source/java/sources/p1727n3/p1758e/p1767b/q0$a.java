package p1727n3.p1758e.p1767b;

import com.tenor.android.core.constant.StringConstant;
import java.util.UUID;
import n3.e.b.j1.a1;
import n3.e.b.k1.f;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC25968j0;
/* renamed from: n3.e.b.q0$a */
/* loaded from: classes-dex2jar.jar:n3/e/b/q0$a.class */
public final class q0$a {

    /* renamed from: a */
    public final a1 f72788a;

    public q0$a() {
        a1 x = a1.x();
        this.f72788a = x;
        AbstractC25968j0.AbstractC25969a abstractC25969a = f.o;
        Class cls = (Class) x.mo2850b(abstractC25969a, null);
        if (cls != null && !cls.equals(C26083p0.class)) {
            throw new IllegalArgumentException("Invalid target class configuration for " + this + ": " + cls);
        }
        AbstractC25968j0.EnumC25971c enumC25971c = AbstractC25968j0.EnumC25971c.OPTIONAL;
        x.z(abstractC25969a, enumC25971c, C26083p0.class);
        AbstractC25968j0.AbstractC25969a abstractC25969a2 = f.n;
        if (x.mo2850b(abstractC25969a2, null) != null) {
            return;
        }
        x.z(abstractC25969a2, enumC25971c, C26083p0.class.getCanonicalName() + StringConstant.DASH + UUID.randomUUID());
    }
}
