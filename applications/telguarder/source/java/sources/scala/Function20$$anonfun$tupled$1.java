package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function20$$anonfun$tupled$1.class */
public final class Function20$$anonfun$tupled$1 extends AbstractFunction1<Tuple20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function20 $outer;

    public Function20$$anonfun$tupled$1(Function20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20, R> function20) {
        Objects.requireNonNull(function20);
        this.$outer = function20;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple20<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, T20> tuple20) {
        if (tuple20 != 0) {
            return this.$outer.apply(tuple20.mo267_1(), tuple20.mo266_2(), tuple20.mo265_3(), tuple20.mo264_4(), tuple20.mo263_5(), tuple20.mo262_6(), tuple20.mo261_7(), tuple20.mo260_8(), tuple20.mo259_9(), tuple20._10(), tuple20._11(), tuple20._12(), tuple20._13(), tuple20._14(), tuple20._15(), tuple20._16(), tuple20._17(), tuple20._18(), tuple20._19(), tuple20._20());
        }
        throw new MatchError(tuple20);
    }
}
