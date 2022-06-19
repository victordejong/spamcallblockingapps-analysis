package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.TraversableViewLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
import scala.runtime.NonLocalReturnControl$mcV$sp;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Sliced$$anonfun$foreach$1.class */
public final class TraversableViewLike$Sliced$$anonfun$foreach$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableViewLike.Sliced $outer;
    private final Function1 f$6;
    private final IntRef index$1;
    private final Object nonLocalReturnKey2$1;

    public TraversableViewLike$Sliced$$anonfun$foreach$1(TraversableViewLike.Sliced sliced, IntRef intRef, Object obj, Function1 function1) {
        Objects.requireNonNull(sliced);
        this.$outer = sliced;
        this.index$1 = intRef;
        this.nonLocalReturnKey2$1 = obj;
        this.f$6 = function1;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        if (this.$outer.from() > this.index$1.elem) {
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        } else if (this.$outer.until() <= this.index$1.elem) {
            throw new NonLocalReturnControl$mcV$sp(this.nonLocalReturnKey2$1, BoxedUnit.UNIT);
        } else {
            this.f$6.apply(a);
        }
        this.index$1.elem++;
    }
}
