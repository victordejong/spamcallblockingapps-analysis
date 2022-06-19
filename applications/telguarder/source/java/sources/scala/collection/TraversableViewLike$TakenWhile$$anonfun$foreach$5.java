package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.TraversableViewLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
import scala.runtime.NonLocalReturnControl$mcV$sp;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$TakenWhile$$anonfun$foreach$5.class */
public final class TraversableViewLike$TakenWhile$$anonfun$foreach$5 extends AbstractFunction1<A, U> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableViewLike.TakenWhile $outer;
    private final Function1 f$8;
    private final Object nonLocalReturnKey3$1;

    public TraversableViewLike$TakenWhile$$anonfun$foreach$5(TraversableViewLike.TakenWhile takenWhile, Object obj, Function1 function1) {
        Objects.requireNonNull(takenWhile);
        this.$outer = takenWhile;
        this.nonLocalReturnKey3$1 = obj;
        this.f$8 = function1;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [U, java.lang.Object] */
    @Override // scala.Function1
    public final U apply(A a) {
        if (BoxesRunTime.unboxToBoolean(this.$outer.pred().apply(a))) {
            return this.f$8.apply(a);
        }
        throw new NonLocalReturnControl$mcV$sp(this.nonLocalReturnKey3$1, BoxedUnit.UNIT);
    }
}
