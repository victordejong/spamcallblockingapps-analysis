package scala.collection;

import scala.Serializable;
import scala.Some;
import scala.runtime.AbstractFunction1;
import scala.runtime.NonLocalReturnControl;
import scala.runtime.Nothing$;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$$anonfun$1.class */
public final class TraversableOnce$$anonfun$1 extends AbstractFunction1<B, Nothing$> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object nonLocalReturnKey1$1;

    public TraversableOnce$$anonfun$1(TraversableOnce traversableOnce, TraversableOnce<A> traversableOnce2) {
        this.nonLocalReturnKey1$1 = traversableOnce2;
    }

    @Override // scala.Function1
    public final Nothing$ apply(B b) {
        throw new NonLocalReturnControl(this.nonLocalReturnKey1$1, new Some(b));
    }
}
