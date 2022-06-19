package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.TraversableViewLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BooleanRef;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$DroppedWhile$$anonfun$foreach$6.class */
public final class TraversableViewLike$DroppedWhile$$anonfun$foreach$6 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableViewLike.DroppedWhile $outer;
    private final Function1 f$7;
    private final BooleanRef go$1;

    public TraversableViewLike$DroppedWhile$$anonfun$foreach$6(TraversableViewLike.DroppedWhile droppedWhile, BooleanRef booleanRef, Function1 function1) {
        Objects.requireNonNull(droppedWhile);
        this.$outer = droppedWhile;
        this.go$1 = booleanRef;
        this.f$7 = function1;
    }

    @Override // scala.Function1
    public final Object apply(A a) {
        if (!this.go$1.elem && !BoxesRunTime.unboxToBoolean(this.$outer.pred().apply(a))) {
            this.go$1.elem = true;
        }
        return this.go$1.elem ? this.f$7.apply(a) : BoxedUnit.UNIT;
    }
}
