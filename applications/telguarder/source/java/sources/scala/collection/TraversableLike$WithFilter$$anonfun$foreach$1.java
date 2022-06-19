package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.TraversableLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$WithFilter$$anonfun$foreach$1.class */
public final class TraversableLike$WithFilter$$anonfun$foreach$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableLike.WithFilter $outer;
    private final Function1 f$3;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableLike$WithFilter$$anonfun$foreach$1(TraversableLike.WithFilter withFilter, TraversableLike<A, Repr>.WithFilter withFilter2) {
        Objects.requireNonNull(withFilter);
        this.$outer = withFilter;
        this.f$3 = withFilter2;
    }

    @Override // scala.Function1
    public final Object apply(A a) {
        return BoxesRunTime.unboxToBoolean(this.$outer.scala$collection$TraversableLike$WithFilter$$p.apply(a)) ? this.f$3.apply(a) : BoxedUnit.UNIT;
    }
}
