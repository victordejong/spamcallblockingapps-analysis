package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function14$$anonfun$tupled$1.class */
public final class Function14$$anonfun$tupled$1 extends AbstractFunction1<Tuple14<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function14 $outer;

    public Function14$$anonfun$tupled$1(Function14<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, R> function14) {
        Objects.requireNonNull(function14);
        this.$outer = function14;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple14<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14> tuple14) {
        if (tuple14 != 0) {
            return this.$outer.apply(tuple14.mo323_1(), tuple14.mo322_2(), tuple14.mo321_3(), tuple14.mo320_4(), tuple14.mo319_5(), tuple14.mo318_6(), tuple14.mo317_7(), tuple14.mo316_8(), tuple14.mo315_9(), tuple14._10(), tuple14._11(), tuple14._12(), tuple14._13(), tuple14._14());
        }
        throw new MatchError(tuple14);
    }
}
