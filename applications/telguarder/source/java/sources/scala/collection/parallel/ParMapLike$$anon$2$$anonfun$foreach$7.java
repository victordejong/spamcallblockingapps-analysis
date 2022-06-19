package scala.collection.parallel;

import java.util.Objects;
import scala.Function1;
import scala.MatchError;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$$anon$2$$anonfun$foreach$7.class */
public final class ParMapLike$$anon$2$$anonfun$foreach$7 extends AbstractFunction1<Tuple2<K, V>, Q> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParMapLike$$anon$2 $outer;
    private final Function1 g$1;

    public ParMapLike$$anon$2$$anonfun$foreach$7(ParMapLike$$anon$2 parMapLike$$anon$2, Function1 function1) {
        Objects.requireNonNull(parMapLike$$anon$2);
        this.$outer = parMapLike$$anon$2;
        this.g$1 = function1;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [Q, java.lang.Object] */
    public final Q apply(Tuple2<K, V> tuple2) {
        if (tuple2 != 0) {
            return this.g$1.apply(new Tuple2(tuple2.mo269_1(), this.$outer.f$4.apply(tuple2.mo268_2())));
        }
        throw new MatchError(tuple2);
    }
}
