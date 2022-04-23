package p131c.p161d.p170b.p224d.p252g.p258f;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: c.d.b.d.g.f.d2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/d2.class */
public final class C4477d2 {

    /* renamed from: a */
    public final ConcurrentHashMap<C4470c2, List<Throwable>> f16724a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    public final ReferenceQueue<Throwable> f16725b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m25519a(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.f16725b.poll();
        while (poll != null) {
            this.f16724a.remove(poll);
            poll = this.f16725b.poll();
        }
        List<Throwable> list = this.f16724a.get(new C4470c2(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f16724a.putIfAbsent(new C4470c2(th, this.f16725b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}
