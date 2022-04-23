package p081h.p203i.p204a.p224e.p259j.p270k;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: h.i.a.e.j.k.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/k/m.class */
public final class C7985m {

    /* renamed from: a */
    public final ConcurrentHashMap<C7988p, List<Throwable>> f18707a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    public final ReferenceQueue<Throwable> f18708b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m18703a(Throwable th, boolean z) {
        Reference<? extends Throwable> poll = this.f18708b.poll();
        while (poll != null) {
            this.f18707a.remove(poll);
            poll = this.f18708b.poll();
        }
        List<Throwable> list = this.f18707a.get(new C7988p(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f18707a.putIfAbsent(new C7988p(th, this.f18708b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}
