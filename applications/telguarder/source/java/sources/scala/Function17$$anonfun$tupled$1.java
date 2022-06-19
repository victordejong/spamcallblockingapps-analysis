package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function17$$anonfun$tupled$1.class */
public final class Function17$$anonfun$tupled$1 extends AbstractFunction1<Tuple17<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function17 $outer;

    public Function17$$anonfun$tupled$1(Function17<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, R> function17) {
        Objects.requireNonNull(function17);
        this.$outer = function17;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple17<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17> tuple17) {
        if (tuple17 != 0) {
            return this.$outer.apply(tuple17.mo296_1(), tuple17.mo295_2(), tuple17.mo294_3(), tuple17.mo293_4(), tuple17.mo292_5(), tuple17.mo291_6(), tuple17.mo290_7(), tuple17.mo289_8(), tuple17.mo288_9(), tuple17._10(), tuple17._11(), tuple17._12(), tuple17._13(), tuple17._14(), tuple17._15(), tuple17._16(), tuple17._17());
        }
        throw new MatchError(tuple17);
    }
}
