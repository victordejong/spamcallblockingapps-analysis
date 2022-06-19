package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$$anon$2$$anonfun$splitter$1.class */
public final class ParMapLike$$anon$2$$anonfun$splitter$1 extends AbstractFunction1<Tuple2<K, V>, Tuple2<K, S>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParMapLike$$anon$2 $outer;

    public ParMapLike$$anon$2$$anonfun$splitter$1(ParMapLike$$anon$2 parMapLike$$anon$2) {
        Objects.requireNonNull(parMapLike$$anon$2);
        this.$outer = parMapLike$$anon$2;
    }

    public final Tuple2<K, S> apply(Tuple2<K, V> tuple2) {
        return new Tuple2<>(tuple2.mo269_1(), this.$outer.f$4.apply(tuple2.mo268_2()));
    }
}
