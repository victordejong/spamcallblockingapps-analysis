package scala.collection;

import scala.Serializable;
import scala.math.Ordering;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$$anonfun$min$1.class */
public final class TraversableOnce$$anonfun$min$1 extends AbstractFunction2<A, A, A> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Ordering cmp$1;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableOnce$$anonfun$min$1(TraversableOnce traversableOnce, TraversableOnce<A> traversableOnce2) {
        this.cmp$1 = traversableOnce2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.Function2
    public final A apply(A a, A a2) {
        boolean lteq = this.cmp$1.lteq(a, a2);
        boolean z = a;
        if (!lteq) {
            z = a2;
        }
        return z;
    }
}
