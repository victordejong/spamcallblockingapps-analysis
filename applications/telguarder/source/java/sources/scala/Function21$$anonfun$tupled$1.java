package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function21$$anonfun$tupled$1.class */
public final class Function21$$anonfun$tupled$1 extends AbstractFunction1<Tuple21<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function21 $outer;

    public Function21$$anonfun$tupled$1(Function21<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, R> function21) {
        Objects.requireNonNull(function21);
        this.$outer = function21;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple21<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21> tuple21) {
        if (tuple21 != 0) {
            return this.$outer.apply(tuple21.mo258_1(), tuple21.mo257_2(), tuple21.mo256_3(), tuple21.mo255_4(), tuple21.mo254_5(), tuple21.mo253_6(), tuple21.mo252_7(), tuple21.mo251_8(), tuple21.mo250_9(), tuple21._10(), tuple21._11(), tuple21._12(), tuple21._13(), tuple21._14(), tuple21._15(), tuple21._16(), tuple21._17(), tuple21._18(), tuple21._19(), tuple21._20(), tuple21._21());
        }
        throw new MatchError(tuple21);
    }
}
