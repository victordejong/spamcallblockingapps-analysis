package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function10$$anonfun$tupled$1.class */
public final class Function10$$anonfun$tupled$1 extends AbstractFunction1<Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function10 $outer;

    public Function10$$anonfun$tupled$1(Function10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, R> function10) {
        Objects.requireNonNull(function10);
        this.$outer = function10;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple10<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10> tuple10) {
        if (tuple10 != 0) {
            return this.$outer.apply(tuple10.mo359_1(), tuple10.mo358_2(), tuple10.mo357_3(), tuple10.mo356_4(), tuple10.mo355_5(), tuple10.mo354_6(), tuple10.mo353_7(), tuple10.mo352_8(), tuple10.mo351_9(), tuple10._10());
        }
        throw new MatchError(tuple10);
    }
}
