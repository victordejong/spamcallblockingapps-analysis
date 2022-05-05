package p081h.p203i.p204a.p224e.p259j.p271l;

import androidx.annotation.GuardedBy;
import java.util.HashMap;
import java.util.Map;
/* renamed from: h.i.a.e.j.l.l6 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/l/l6.class */
public abstract class AbstractC8225l6<K, V> {
    @GuardedBy("instances")

    /* renamed from: a */
    public final Map<K, V> f19060a = new HashMap();

    /* renamed from: a */
    public abstract V mo18119a(K k);

    /* renamed from: b */
    public final V m18363b(K k) {
        synchronized (this.f19060a) {
            if (this.f19060a.containsKey(k)) {
                return this.f19060a.get(k);
            }
            V a = mo18119a(k);
            this.f19060a.put(k, a);
            return a;
        }
    }
}
