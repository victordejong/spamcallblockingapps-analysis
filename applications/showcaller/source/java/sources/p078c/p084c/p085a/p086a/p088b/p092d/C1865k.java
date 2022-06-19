package p078c.p084c.p085a.p086a.p088b.p092d;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.util.List;
import java.util.Vector;
import java.util.concurrent.ConcurrentHashMap;
/* renamed from: c.c.a.a.b.d.k */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/d/k.class */
final class C1865k {

    /* renamed from: a */
    private final ConcurrentHashMap<C1864j, List<Throwable>> f6767a = new ConcurrentHashMap<>(16, 0.75f, 10);

    /* renamed from: b */
    private final ReferenceQueue<Throwable> f6768b = new ReferenceQueue<>();

    /* renamed from: a */
    public final List<Throwable> m28783a(Throwable th, boolean z) {
        ReferenceQueue<Throwable> referenceQueue = this.f6768b;
        while (true) {
            Reference<? extends Throwable> poll = referenceQueue.poll();
            if (poll == null) {
                break;
            }
            this.f6767a.remove(poll);
            referenceQueue = this.f6768b;
        }
        List<Throwable> list = this.f6767a.get(new C1864j(th, null));
        if (list != null) {
            return list;
        }
        Vector vector = new Vector(2);
        List<Throwable> putIfAbsent = this.f6767a.putIfAbsent(new C1864j(th, this.f6768b), vector);
        return putIfAbsent == null ? vector : putIfAbsent;
    }
}
