package scala.collection;

import scala.Serializable;
import scala.Some;
import scala.collection.TraversableViewLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.NonLocalReturnControl;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$Transformed$$anonfun$headOption$1.class */
public final class TraversableViewLike$Transformed$$anonfun$headOption$1 extends AbstractFunction1<B, Nothing$> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object nonLocalReturnKey1$1;

    public TraversableViewLike$Transformed$$anonfun$headOption$1(TraversableViewLike.Transformed transformed, TraversableViewLike<A, Coll, This>.Transformed<B> transformed2) {
        this.nonLocalReturnKey1$1 = transformed2;
    }

    @Override // scala.Function1
    public final Nothing$ apply(B b) {
        throw new NonLocalReturnControl(this.nonLocalReturnKey1$1, new Some(b));
    }
}
