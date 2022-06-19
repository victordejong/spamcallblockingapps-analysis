package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function13$$anonfun$tupled$1.class */
public final class Function13$$anonfun$tupled$1 extends AbstractFunction1<Tuple13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function13 $outer;

    public Function13$$anonfun$tupled$1(Function13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, R> function13) {
        Objects.requireNonNull(function13);
        this.$outer = function13;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple13<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13> tuple13) {
        if (tuple13 != 0) {
            return this.$outer.apply(tuple13.mo332_1(), tuple13.mo331_2(), tuple13.mo330_3(), tuple13.mo329_4(), tuple13.mo328_5(), tuple13.mo327_6(), tuple13.mo326_7(), tuple13.mo325_8(), tuple13.mo324_9(), tuple13._10(), tuple13._11(), tuple13._12(), tuple13._13());
        }
        throw new MatchError(tuple13);
    }
}
