package p193e.p1451f.p1452a.p1473o;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.p1476r.AbstractC22587d;
/* renamed from: e.f.a.o.n */
/* loaded from: classes-dex2jar.jar:e/f/a/o/n.class */
public class C22569n {

    /* renamed from: a */
    public final Set<AbstractC22587d> f62503a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    public final List<AbstractC22587d> f62504b = new ArrayList();

    /* renamed from: c */
    public boolean f62505c;

    /* renamed from: a */
    public boolean m8122a(AbstractC22587d abstractC22587d) {
        if (abstractC22587d == null) {
            return true;
        }
        boolean remove = this.f62503a.remove(abstractC22587d);
        boolean z = true;
        if (!this.f62504b.remove(abstractC22587d)) {
            z = remove;
        }
        if (z) {
            abstractC22587d.clear();
        }
        return z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("{numRequests=");
        sb.append(this.f62503a.size());
        sb.append(", isPaused=");
        return C22128a.m8590o(sb, this.f62505c, "}");
    }
}
