package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function15$$anonfun$tupled$1.class */
public final class Function15$$anonfun$tupled$1 extends AbstractFunction1<Tuple15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function15 $outer;

    public Function15$$anonfun$tupled$1(Function15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15, R> function15) {
        Objects.requireNonNull(function15);
        this.$outer = function15;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [R, java.lang.Object] */
    public final R apply(Tuple15<T1, T2, T3, T4, T5, T6, T7, T8, T9, T10, T11, T12, T13, T14, T15> tuple15) {
        if (tuple15 != 0) {
            return this.$outer.apply(tuple15.mo314_1(), tuple15.mo313_2(), tuple15.mo312_3(), tuple15.mo311_4(), tuple15.mo310_5(), tuple15.mo309_6(), tuple15.mo308_7(), tuple15.mo307_8(), tuple15.mo306_9(), tuple15._10(), tuple15._11(), tuple15._12(), tuple15._13(), tuple15._14(), tuple15._15());
        }
        throw new MatchError(tuple15);
    }
}
