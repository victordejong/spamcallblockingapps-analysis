package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function11$$anonfun$tupled$1.class */
public final class Function11$$anonfun$tupled$1 extends AbstractFunction1<Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function11 $outer;

    public Function11$$anonfun$tupled$1(Function11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, R> function11) {
        Objects.requireNonNull(function11);
        this.$outer = function11;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple11<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11> tuple11) {
        if (tuple11 != 0) {
            return this.$outer.apply(tuple11.mo350_1(), tuple11.mo349_2(), tuple11.mo348_3(), tuple11.mo347_4(), tuple11.mo346_5(), tuple11.mo345_6(), tuple11.mo344_7(), tuple11.mo343_8(), tuple11.mo342_9(), tuple11._10(), tuple11._11());
        }
        throw new MatchError(tuple11);
    }
}
