package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function12$$anonfun$tupled$1.class */
public final class Function12$$anonfun$tupled$1 extends AbstractFunction1<Tuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function12 $outer;

    public Function12$$anonfun$tupled$1(Function12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, R> function12) {
        Objects.requireNonNull(function12);
        this.$outer = function12;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple12<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12> tuple12) {
        if (tuple12 != 0) {
            return this.$outer.apply(tuple12.mo341_1(), tuple12.mo340_2(), tuple12.mo339_3(), tuple12.mo338_4(), tuple12.mo337_5(), tuple12.mo336_6(), tuple12.mo335_7(), tuple12.mo334_8(), tuple12.mo333_9(), tuple12._10(), tuple12._11(), tuple12._12());
        }
        throw new MatchError(tuple12);
    }
}
