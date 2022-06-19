package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function16$$anonfun$tupled$1.class */
public final class Function16$$anonfun$tupled$1 extends AbstractFunction1<Tuple16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function16 $outer;

    public Function16$$anonfun$tupled$1(Function16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16, R> function16) {
        Objects.requireNonNull(function16);
        this.$outer = function16;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple16<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, T16> tuple16) {
        if (tuple16 != 0) {
            return this.$outer.apply(tuple16.mo305_1(), tuple16.mo304_2(), tuple16.mo303_3(), tuple16.mo302_4(), tuple16.mo301_5(), tuple16.mo300_6(), tuple16.mo299_7(), tuple16.mo298_8(), tuple16.mo297_9(), tuple16._10(), tuple16._11(), tuple16._12(), tuple16._13(), tuple16._14(), tuple16._15(), tuple16._16());
        }
        throw new MatchError(tuple16);
    }
}
