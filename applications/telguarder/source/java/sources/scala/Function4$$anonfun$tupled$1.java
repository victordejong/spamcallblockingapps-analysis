package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function4$$anonfun$tupled$1.class */
public final class Function4$$anonfun$tupled$1 extends AbstractFunction1<Tuple4<T1, T2, T3, T4>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function4 $outer;

    public Function4$$anonfun$tupled$1(Function4<T1, T2, T3, T4, R> function4) {
        Objects.requireNonNull(function4);
        this.$outer = function4;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple4<T1, T2, T3, T4> tuple4) {
        if (tuple4 != 0) {
            return this.$outer.apply(tuple4.mo237_1(), tuple4.mo236_2(), tuple4.mo235_3(), tuple4.mo234_4());
        }
        throw new MatchError(tuple4);
    }
}
