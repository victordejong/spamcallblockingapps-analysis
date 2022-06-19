package p1727n3.p1758e.p1759a.p1761e;

import android.content.Context;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import p1727n3.p1758e.p1759a.p1761e.p1762k2.C25795k;
import p1727n3.p1758e.p1767b.C26079n0;
import p1727n3.p1758e.p1767b.p1768j1.AbstractC26051x;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.C26015a;
/* renamed from: n3.e.a.e.g1 */
/* loaded from: classes-dex2jar.jar:n3/e/a/e/g1.class */
public final class C25742g1 implements AbstractC26051x {

    /* renamed from: a */
    public final Map<String, C25714a2> f72113a = new HashMap();

    /* renamed from: b */
    public final AbstractC25874x0 f72114b;

    public C25742g1(Context context, Object obj, Set<String> set) throws C26079n0 {
        C25711a c25711a = C25711a.f72000a;
        this.f72114b = c25711a;
        C25795k m2991a = obj instanceof C25795k ? (C25795k) obj : C25795k.m2991a(context, C26015a.m2789a());
        Objects.requireNonNull(context);
        for (String str : set) {
            this.f72113a.put(str, new C25714a2(context, str, m2991a, this.f72114b));
        }
    }
}
