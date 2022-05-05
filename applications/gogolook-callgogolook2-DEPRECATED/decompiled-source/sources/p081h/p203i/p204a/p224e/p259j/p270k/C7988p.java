package p081h.p203i.p204a.p224e.p259j.p270k;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: h.i.a.e.j.k.p */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/k/p.class */
public final class C7988p extends WeakReference<Throwable> {

    /* renamed from: a */
    public final int f18710a;

    public C7988p(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f18710a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != C7988p.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C7988p pVar = (C7988p) obj;
        return this.f18710a == pVar.f18710a && get() == pVar.get();
    }

    public final int hashCode() {
        return this.f18710a;
    }
}
