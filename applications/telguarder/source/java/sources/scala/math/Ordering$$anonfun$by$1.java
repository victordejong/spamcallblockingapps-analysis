package scala.math;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/math/Ordering$$anonfun$by$1.class */
public final class Ordering$$anonfun$by$1 extends AbstractFunction2<T, T, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 f$1;
    private final Ordering ord$3;

    public Ordering$$anonfun$by$1(Function1 function1, Ordering ordering) {
        this.f$1 = function1;
        this.ord$3 = ordering;
    }

    @Override // scala.Function2
    public final boolean apply(T t, T t2) {
        return this.ord$3.mo36lt(this.f$1.apply(t), this.f$1.apply(t2));
    }
}
