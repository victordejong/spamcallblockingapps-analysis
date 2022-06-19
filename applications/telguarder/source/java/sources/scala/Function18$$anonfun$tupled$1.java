package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function18$$anonfun$tupled$1.class */
public final class Function18$$anonfun$tupled$1 extends AbstractFunction1<Tuple18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function18 $outer;

    public Function18$$anonfun$tupled$1(Function18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, R> function18) {
        Objects.requireNonNull(function18);
        this.$outer = function18;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple18<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18> tuple18) {
        if (tuple18 != 0) {
            return this.$outer.apply(tuple18.mo287_1(), tuple18.mo286_2(), tuple18.mo285_3(), tuple18.mo284_4(), tuple18.mo283_5(), tuple18.mo282_6(), tuple18.mo281_7(), tuple18.mo280_8(), tuple18.mo279_9(), tuple18._10(), tuple18._11(), tuple18._12(), tuple18._13(), tuple18._14(), tuple18._15(), tuple18._16(), tuple18._17(), tuple18._18());
        }
        throw new MatchError(tuple18);
    }
}
