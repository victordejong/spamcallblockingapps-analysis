package p1727n3.p1758e.p1767b.p1768j1;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import p1727n3.p1758e.p1759a.p1761e.C25713a1;
import p1727n3.p1758e.p1767b.C26079n0;
import p1727n3.p1758e.p1767b.C26101x0;
import p1727n3.p1758e.p1767b.C26103y0;
import p1727n3.p1790h.p1791a.C26247b;
/* renamed from: n3.e.b.j1.c0 */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/c0.class */
public final class C25942c0 {

    /* renamed from: a */
    public final Object f72545a = new Object();

    /* renamed from: b */
    public final Map<String, AbstractC25938b0> f72546b = new LinkedHashMap();

    /* renamed from: c */
    public final Set<AbstractC25938b0> f72547c = new HashSet();

    /* renamed from: d */
    public ListenableFuture<Void> f72548d;

    /* renamed from: e */
    public C26247b<Void> f72549e;

    /* renamed from: a */
    public LinkedHashSet<AbstractC25938b0> m2873a() {
        LinkedHashSet<AbstractC25938b0> linkedHashSet;
        synchronized (this.f72545a) {
            linkedHashSet = new LinkedHashSet<>(this.f72546b.values());
        }
        return linkedHashSet;
    }

    /* renamed from: b */
    public void m2872b(AbstractC26056y abstractC26056y) throws C26101x0 {
        synchronized (this.f72545a) {
            C25713a1 c25713a1 = (C25713a1) abstractC26056y;
            try {
                for (String str : c25713a1.m3037a()) {
                    C26103y0.m2724a("CameraRepository", "Added camera: " + str, null);
                    this.f72546b.put(str, c25713a1.m3036b(str));
                }
            } catch (C26079n0 e) {
                throw new C26101x0(e);
            }
        }
    }
}
