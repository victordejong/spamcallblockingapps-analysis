package p078c.p084c.p085a.p086a.p088b.p092d;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: c.c.a.a.b.d.j */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/d/j.class */
final class C1864j extends WeakReference<Throwable> {

    /* renamed from: a */
    private final int f6766a;

    public C1864j(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        this.f6766a = System.identityHashCode(th);
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != C1864j.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C1864j c1864j = (C1864j) obj;
        return this.f6766a == c1864j.f6766a && get() == c1864j.get();
    }

    public final int hashCode() {
        return this.f6766a;
    }
}
