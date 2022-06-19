package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function5$$anonfun$tupled$1.class */
public final class Function5$$anonfun$tupled$1 extends AbstractFunction1<Tuple5<T1, T2, T3, T4, T5>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function5 $outer;

    public Function5$$anonfun$tupled$1(Function5<T1, T2, T3, T4, T5, R> function5) {
        Objects.requireNonNull(function5);
        this.$outer = function5;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple5<T1, T2, T3, T4, T5> tuple5) {
        if (tuple5 != 0) {
            return this.$outer.apply(tuple5.mo233_1(), tuple5.mo232_2(), tuple5.mo231_3(), tuple5.mo230_4(), tuple5.mo229_5());
        }
        throw new MatchError(tuple5);
    }
}
