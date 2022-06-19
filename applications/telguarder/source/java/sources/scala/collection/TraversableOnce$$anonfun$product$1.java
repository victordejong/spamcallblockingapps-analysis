package scala.collection;

import scala.Serializable;
import scala.math.Numeric;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$$anonfun$product$1.class */
public final class TraversableOnce$$anonfun$product$1 extends AbstractFunction2<B, B, B> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Numeric num$2;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableOnce$$anonfun$product$1(TraversableOnce traversableOnce, TraversableOnce<A> traversableOnce2) {
        this.num$2 = traversableOnce2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [B, java.lang.Object] */
    @Override // scala.Function2
    public final B apply(B b, B b2) {
        return this.num$2.times(b, b2);
    }
}
