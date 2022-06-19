package scala.collection;

import scala.Function2;
import scala.Serializable;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$$anonfun$foldRight$1.class */
public final class TraversableOnce$$anonfun$foldRight$1 extends AbstractFunction2<B, A, B> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function2 op$2;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableOnce$$anonfun$foldRight$1(TraversableOnce traversableOnce, TraversableOnce<A> traversableOnce2) {
        this.op$2 = traversableOnce2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [B, java.lang.Object] */
    @Override // scala.Function2
    public final B apply(B b, A a) {
        return this.op$2.apply(a, b);
    }
}
