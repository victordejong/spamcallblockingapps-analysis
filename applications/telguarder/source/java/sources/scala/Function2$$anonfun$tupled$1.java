package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function2$$anonfun$tupled$1.class */
public final class Function2$$anonfun$tupled$1 extends AbstractFunction1<Tuple2<T1, T2>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function2 $outer;

    public Function2$$anonfun$tupled$1(Function2<T1, T2, R> function2) {
        Objects.requireNonNull(function2);
        this.$outer = function2;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple2<T1, T2> tuple2) {
        if (tuple2 != 0) {
            return this.$outer.apply(tuple2.mo269_1(), tuple2.mo268_2());
        }
        throw new MatchError(tuple2);
    }
}
