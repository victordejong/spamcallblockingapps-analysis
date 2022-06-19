package scala.collection;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractPartialFunction;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/SortedMapLike$$anon$1$$anonfun$valuesIteratorFrom$1.class */
public final class SortedMapLike$$anon$1$$anonfun$valuesIteratorFrom$1 extends AbstractPartialFunction<Tuple2<A, B>, B> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SortedMapLike$$anon$1 $outer;

    public SortedMapLike$$anon$1$$anonfun$valuesIteratorFrom$1(SortedMapLike$$anon$1 sortedMapLike$$anon$1) {
        Objects.requireNonNull(sortedMapLike$$anon$1);
        this.$outer = sortedMapLike$$anon$1;
    }

    @Override // scala.runtime.AbstractPartialFunction, scala.PartialFunction
    public final /* bridge */ /* synthetic */ Object applyOrElse(Object obj, Function1 function1) {
        return applyOrElse((SortedMapLike$$anon$1$$anonfun$valuesIteratorFrom$1) ((Tuple2) obj), (Function1<SortedMapLike$$anon$1$$anonfun$valuesIteratorFrom$1, Object>) function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <A1 extends Tuple2<A, B>, B1> B1 applyOrElse(A1 a1, Function1<A1, B1> function1) {
        return (a1 == null || !BoxesRunTime.unboxToBoolean(this.$outer.p$1.apply(a1.mo269_1()))) ? function1.apply(a1) : a1.mo268_2();
    }

    public final boolean isDefinedAt(Tuple2<A, B> tuple2) {
        return tuple2 != 0 && BoxesRunTime.unboxToBoolean(this.$outer.p$1.apply(tuple2.mo269_1()));
    }
}
