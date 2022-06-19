package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function8$$anonfun$tupled$1.class */
public final class Function8$$anonfun$tupled$1 extends AbstractFunction1<Tuple8<T1, T2, T3, T4, T5, T6, T7, T8>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function8 $outer;

    public Function8$$anonfun$tupled$1(Function8<T1, T2, T3, T4, T5, T6, T7, T8, R> function8) {
        Objects.requireNonNull(function8);
        this.$outer = function8;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple8<T1, T2, T3, T4, T5, T6, T7, T8> tuple8) {
        if (tuple8 != 0) {
            return this.$outer.apply(tuple8.mo215_1(), tuple8.mo214_2(), tuple8.mo213_3(), tuple8.mo212_4(), tuple8.mo211_5(), tuple8.mo210_6(), tuple8.mo209_7(), tuple8.mo208_8());
        }
        throw new MatchError(tuple8);
    }
}
