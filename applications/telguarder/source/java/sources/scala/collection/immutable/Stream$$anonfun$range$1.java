package scala.collection.immutable;

import scala.Serializable;
import scala.math.Integral;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stream$$anonfun$range$1.class */
public final class Stream$$anonfun$range$1 extends AbstractFunction0<Stream<T>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object end$1;
    private final Integral evidence$1$1;
    private final Integral num$1;
    private final Object start$3;
    private final Object step$2;

    public Stream$$anonfun$range$1(Object obj, Object obj2, Object obj3, Integral integral, Integral integral2) {
        this.start$3 = obj;
        this.end$1 = obj2;
        this.step$2 = obj3;
        this.evidence$1$1 = integral;
        this.num$1 = integral2;
    }

    @Override // scala.Function0
    public final Stream<T> apply() {
        return Stream$.MODULE$.range(this.num$1.mkNumericOps((Integral) this.start$3).$plus(this.step$2), this.end$1, this.step$2, (Integral<Object>) this.evidence$1$1);
    }
}
