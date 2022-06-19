package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function6$$anonfun$tupled$1.class */
public final class Function6$$anonfun$tupled$1 extends AbstractFunction1<Tuple6<T1, T2, T3, T4, T5, T6>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function6 $outer;

    public Function6$$anonfun$tupled$1(Function6<T1, T2, T3, T4, T5, T6, R> function6) {
        Objects.requireNonNull(function6);
        this.$outer = function6;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple6<T1, T2, T3, T4, T5, T6> tuple6) {
        if (tuple6 != 0) {
            return this.$outer.apply(tuple6.mo228_1(), tuple6.mo227_2(), tuple6.mo226_3(), tuple6.mo225_4(), tuple6.mo224_5(), tuple6.mo223_6());
        }
        throw new MatchError(tuple6);
    }
}
