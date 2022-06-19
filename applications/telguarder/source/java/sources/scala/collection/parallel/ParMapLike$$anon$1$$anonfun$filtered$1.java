package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$$anon$1$$anonfun$filtered$1.class */
public final class ParMapLike$$anon$1$$anonfun$filtered$1 extends AbstractFunction1<Tuple2<K, V>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParMapLike$$anon$1 $outer;

    public ParMapLike$$anon$1$$anonfun$filtered$1(ParMapLike$$anon$1 parMapLike$$anon$1) {
        Objects.requireNonNull(parMapLike$$anon$1);
        this.$outer = parMapLike$$anon$1;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<K, V> tuple2) {
        return BoxesRunTime.unboxToBoolean(this.$outer.p$1.apply(tuple2.mo269_1()));
    }
}
