package p131c.p161d.p170b.p224d.p252g.p258f;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: c.d.b.d.g.f.c2 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/f/c2.class */
public final class C4470c2 extends WeakReference<Throwable> {

    /* renamed from: a */
    public final int f16698a;

    public C4470c2(Throwable th, ReferenceQueue<Throwable> referenceQueue) {
        super(th, referenceQueue);
        if (th != null) {
            this.f16698a = System.identityHashCode(th);
            return;
        }
        throw new NullPointerException("The referent cannot be null");
    }

    public final boolean equals(Object obj) {
        if (obj == null || obj.getClass() != C4470c2.class) {
            return false;
        }
        if (this == obj) {
            return true;
        }
        C4470c2 c2Var = (C4470c2) obj;
        return this.f16698a == c2Var.f16698a && get() == c2Var.get();
    }

    public final int hashCode() {
        return this.f16698a;
    }
}
