package p1727n3.p1758e.p1767b.p1768j1;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* renamed from: n3.e.b.j1.g1 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/g1.class */
public class C25959g1 {

    /* renamed from: a */
    public final List<AbstractC25954f1> f72584a;

    public C25959g1(List<AbstractC25954f1> list) {
        this.f72584a = new ArrayList(list);
    }

    /* renamed from: a */
    public <T extends AbstractC25954f1> T m2863a(Class<T> cls) {
        Iterator<AbstractC25954f1> it = this.f72584a.iterator();
        while (it.hasNext()) {
            T t = (T) it.next();
            if (t.getClass() == cls) {
                return t;
            }
        }
        return null;
    }
}
