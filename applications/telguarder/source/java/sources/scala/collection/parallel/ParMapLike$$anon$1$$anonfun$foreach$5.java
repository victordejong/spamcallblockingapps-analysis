package scala.collection.parallel;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$$anon$1$$anonfun$foreach$5.class */
public final class ParMapLike$$anon$1$$anonfun$foreach$5 extends AbstractFunction1<Tuple2<K, V>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParMapLike$$anon$1 $outer;
    private final Function1 f$3;

    public ParMapLike$$anon$1$$anonfun$foreach$5(ParMapLike$$anon$1 parMapLike$$anon$1, Function1 function1) {
        Objects.requireNonNull(parMapLike$$anon$1);
        this.$outer = parMapLike$$anon$1;
        this.f$3 = function1;
    }

    public final Object apply(Tuple2<K, V> tuple2) {
        return BoxesRunTime.unboxToBoolean(this.$outer.p$1.apply(tuple2.mo269_1())) ? this.f$3.apply(tuple2) : BoxedUnit.UNIT;
    }
}
