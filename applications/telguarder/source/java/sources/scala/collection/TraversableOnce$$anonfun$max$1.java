package scala.collection;

import scala.Serializable;
import scala.math.Ordering;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$$anonfun$max$1.class */
public final class TraversableOnce$$anonfun$max$1 extends AbstractFunction2<A, A, A> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Ordering cmp$2;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableOnce$$anonfun$max$1(TraversableOnce traversableOnce, TraversableOnce<A> traversableOnce2) {
        this.cmp$2 = traversableOnce2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.Function2
    public final A apply(A a, A a2) {
        boolean gteq = this.cmp$2.gteq(a, a2);
        boolean z = a;
        if (!gteq) {
            z = a2;
        }
        return z;
    }
}
