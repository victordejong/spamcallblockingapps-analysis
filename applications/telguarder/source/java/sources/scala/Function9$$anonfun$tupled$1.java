package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function9$$anonfun$tupled$1.class */
public final class Function9$$anonfun$tupled$1 extends AbstractFunction1<Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function9 $outer;

    public Function9$$anonfun$tupled$1(Function9<T1, T2, T3, T4, T5, T6, T7, T8, T9, R> function9) {
        Objects.requireNonNull(function9);
        this.$outer = function9;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple9<T1, T2, T3, T4, T5, T6, T7, T8, T9> tuple9) {
        if (tuple9 != 0) {
            return this.$outer.apply(tuple9.mo207_1(), tuple9.mo206_2(), tuple9.mo205_3(), tuple9.mo204_4(), tuple9.mo203_5(), tuple9.mo202_6(), tuple9.mo201_7(), tuple9.mo200_8(), tuple9.mo199_9());
        }
        throw new MatchError(tuple9);
    }
}
