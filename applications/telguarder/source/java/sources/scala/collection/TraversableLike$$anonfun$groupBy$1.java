package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.collection.mutable.Map;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$groupBy$1.class */
public final class TraversableLike$$anonfun$groupBy$1 extends AbstractFunction1<A, Builder<A, Repr>> implements Serializable {
    public static final long serialVersionUID = 0;
    public final /* synthetic */ TraversableLike $outer;
    private final Function1 f$6;
    private final Map m$1;

    public TraversableLike$$anonfun$groupBy$1(TraversableLike traversableLike, Map map, Function1 function1) {
        Objects.requireNonNull(traversableLike);
        this.$outer = traversableLike;
        this.m$1 = map;
        this.f$6 = function1;
    }

    @Override // scala.Function1
    public final Builder<A, Repr> apply(A a) {
        return ((Builder) this.m$1.getOrElseUpdate(this.f$6.apply(a), new TraversableLike$$anonfun$groupBy$1$$anonfun$1(this))).$plus$eq((Builder) a);
    }

    public /* synthetic */ TraversableLike scala$collection$TraversableLike$$anonfun$$$outer() {
        return this.$outer;
    }
}
