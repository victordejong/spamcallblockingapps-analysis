package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function3$$anonfun$tupled$1.class */
public final class Function3$$anonfun$tupled$1 extends AbstractFunction1<Tuple3<T1, T2, T3>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function3 $outer;

    public Function3$$anonfun$tupled$1(Function3<T1, T2, T3, R> function3) {
        Objects.requireNonNull(function3);
        this.$outer = function3;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple3<T1, T2, T3> tuple3) {
        if (tuple3 != 0) {
            return this.$outer.apply(tuple3.mo240_1(), tuple3.mo239_2(), tuple3.mo238_3());
        }
        throw new MatchError(tuple3);
    }
}
