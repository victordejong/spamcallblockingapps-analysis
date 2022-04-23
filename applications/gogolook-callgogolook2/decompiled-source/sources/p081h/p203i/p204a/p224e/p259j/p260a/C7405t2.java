package p081h.p203i.p204a.p224e.p259j.p260a;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: h.i.a.e.j.a.t2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/t2.class */
public final class C7405t2 extends WeakReference<Throwable> {

    /* renamed from: a */
    public final int f17462a;

    public C7405t2(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, null);
        if (th != null) {
            this.f17462a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != C7405t2.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C7405t2 t2Var = (C7405t2) obj;
        return this.f17462a == t2Var.f17462a && get() == t2Var.get();
    }

    public final int hashCode() {
        return this.f17462a;
    }
}
