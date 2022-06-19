package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function7$$anonfun$tupled$1.class */
public final class Function7$$anonfun$tupled$1 extends AbstractFunction1<Tuple7<T1, T2, T3, T4, T5, T6, T7>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function7 $outer;

    public Function7$$anonfun$tupled$1(Function7<T1, T2, T3, T4, T5, T6, T7, R> function7) {
        Objects.requireNonNull(function7);
        this.$outer = function7;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple7<T1, T2, T3, T4, T5, T6, T7> tuple7) {
        if (tuple7 != 0) {
            return this.$outer.apply(tuple7.mo222_1(), tuple7.mo221_2(), tuple7.mo220_3(), tuple7.mo219_4(), tuple7.mo218_5(), tuple7.mo217_6(), tuple7.mo216_7());
        }
        throw new MatchError(tuple7);
    }
}
