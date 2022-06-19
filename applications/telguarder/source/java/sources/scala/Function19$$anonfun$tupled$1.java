package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function19$$anonfun$tupled$1.class */
public final class Function19$$anonfun$tupled$1 extends AbstractFunction1<Tuple19<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function19 $outer;

    public Function19$$anonfun$tupled$1(Function19<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19, R> function19) {
        Objects.requireNonNull(function19);
        this.$outer = function19;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple19<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, T17, T18, T19> tuple19) {
        if (tuple19 != 0) {
            return this.$outer.apply(tuple19.mo278_1(), tuple19.mo277_2(), tuple19.mo276_3(), tuple19.mo275_4(), tuple19.mo274_5(), tuple19.mo273_6(), tuple19.mo272_7(), tuple19.mo271_8(), tuple19.mo270_9(), tuple19._10(), tuple19._11(), tuple19._12(), tuple19._13(), tuple19._14(), tuple19._15(), tuple19._16(), tuple19._17(), tuple19._18(), tuple19._19());
        }
        throw new MatchError(tuple19);
    }
}
