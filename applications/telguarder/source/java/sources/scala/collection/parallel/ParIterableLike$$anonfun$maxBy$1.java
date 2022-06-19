package scala.collection.parallel;

import scala.Function1;
import scala.Serializable;
import scala.math.Ordering;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$maxBy$1.class */
public final class ParIterableLike$$anonfun$maxBy$1 extends AbstractFunction2<T, T, T> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Ordering cmp$1;
    private final Function1 f$1;

    public ParIterableLike$$anonfun$maxBy$1(ParIterableLike parIterableLike, Function1 function1, Ordering ordering) {
        this.f$1 = function1;
        this.cmp$1 = ordering;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.Function2
    public final T apply(T t, T t2) {
        boolean gteq = this.cmp$1.gteq(this.f$1.apply(t), this.f$1.apply(t2));
        boolean z = t;
        if (!gteq) {
            z = t2;
        }
        return z;
    }
}
