package scala.collection.parallel;

import java.util.Objects;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.ParIterableLike;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$Drop$$anonfun$split$6.class */
public final class ParIterableLike$Drop$$anonfun$split$6 extends AbstractFunction1<Tuple2<IterableSplitter<T>, Object>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike.Drop $outer;

    public ParIterableLike$Drop$$anonfun$split$6(ParIterableLike<T, Repr, Sequential>.Drop<U, This> drop) {
        Objects.requireNonNull(drop);
        this.$outer = drop;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<IterableSplitter<T>, Object> tuple2) {
        if (tuple2 != 0) {
            return tuple2._2$mcI$sp() >= this.$outer.scala$collection$parallel$ParIterableLike$Drop$$n;
        }
        throw new MatchError(tuple2);
    }
}
