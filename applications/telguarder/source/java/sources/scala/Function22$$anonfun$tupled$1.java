package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function22$$anonfun$tupled$1.class */
public final class Function22$$anonfun$tupled$1 extends AbstractFunction1<Tuple22<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function22 $outer;

    public Function22$$anonfun$tupled$1(Function22<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22, R> function22) {
        Objects.requireNonNull(function22);
        this.$outer = function22;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple22<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, T21, T22> tuple22) {
        if (tuple22 != 0) {
            return this.$outer.apply(tuple22.mo249_1(), tuple22.mo248_2(), tuple22.mo247_3(), tuple22.mo246_4(), tuple22.mo245_5(), tuple22.mo244_6(), tuple22.mo243_7(), tuple22.mo242_8(), tuple22.mo241_9(), tuple22._10(), tuple22._11(), tuple22._12(), tuple22._13(), tuple22._14(), tuple22._15(), tuple22._16(), tuple22._17(), tuple22._18(), tuple22._19(), tuple22._20(), tuple22._21(), tuple22._22());
        }
        throw new MatchError(tuple22);
    }
}
