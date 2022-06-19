package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.TraversableViewLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Filtered$$anonfun$foreach$4.class */
public final class TraversableViewLike$Filtered$$anonfun$foreach$4 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableViewLike.Filtered $outer;
    private final Function1 f$5;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableViewLike$Filtered$$anonfun$foreach$4(TraversableViewLike.Filtered filtered, TraversableViewLike<A, Coll, This>.Filtered filtered2) {
        Objects.requireNonNull(filtered);
        this.$outer = filtered;
        this.f$5 = filtered2;
    }

    @Override // scala.Function1
    public final Object apply(A a) {
        return BoxesRunTime.unboxToBoolean(this.$outer.pred().apply(a)) ? this.f$5.apply(a) : BoxedUnit.UNIT;
    }
}
