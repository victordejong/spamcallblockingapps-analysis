package scala.collection.parallel;

import scala.Function1;
import scala.Serializable;
import scala.math.Ordering;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$minBy$1.class */
public final class ParIterableLike$$anonfun$minBy$1 extends AbstractFunction2<T, T, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Ordering cmp$2;
    private final Function1 f$2;

    public ParIterableLike$$anonfun$minBy$1(ParIterableLike parIterableLike, Function1 function1, Ordering ordering) {
        this.f$2 = function1;
        this.cmp$2 = ordering;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.Function2
    public final T apply(T t, T t2) {
        boolean lteq = this.cmp$2.lteq(this.f$2.apply(t), this.f$2.apply(t2));
        boolean z = t;
        if (!lteq) {
            z = t2;
        }
        return z;
    }
}
