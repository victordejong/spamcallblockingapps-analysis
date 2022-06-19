package p1727n3.p1758e.p1767b.p1768j1;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* renamed from: n3.e.b.j1.y0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/y0.class */
public abstract class AbstractC26058y0<C> {

    /* renamed from: a */
    public Set<C> f72730a = new HashSet();

    /* renamed from: a */
    public abstract AbstractC26058y0<C> clone();

    /* renamed from: b */
    public List<C> m2767b() {
        return Collections.unmodifiableList(new ArrayList(this.f72730a));
    }
}
