package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.TraversableLike;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$WithFilter$$anonfun$flatMap$2.class */
public final class TraversableLike$WithFilter$$anonfun$flatMap$2 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ TraversableLike.WithFilter $outer;
    private final Builder b$13;
    private final Function1 f$2;

    public TraversableLike$WithFilter$$anonfun$flatMap$2(TraversableLike.WithFilter withFilter, Function1 function1, Builder builder) {
        Objects.requireNonNull(withFilter);
        this.$outer = withFilter;
        this.f$2 = function1;
        this.b$13 = builder;
    }

    @Override // scala.Function1
    public final Object apply(A a) {
        return BoxesRunTime.unboxToBoolean(this.$outer.scala$collection$TraversableLike$WithFilter$$p.apply(a)) ? this.b$13.$plus$plus$eq(((GenTraversableOnce) this.f$2.apply(a)).seq()) : BoxedUnit.UNIT;
    }
}
