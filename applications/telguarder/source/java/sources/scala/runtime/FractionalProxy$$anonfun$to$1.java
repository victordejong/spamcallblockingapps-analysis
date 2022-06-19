package scala.runtime;

import java.util.Objects;
import scala.Serializable;
import scala.collection.immutable.NumericRange;
import scala.collection.immutable.NumericRange$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/FractionalProxy$$anonfun$to$1.class */
public final class FractionalProxy$$anonfun$to$1 extends AbstractFunction1<T, NumericRange.Inclusive<T>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ FractionalProxy $outer;
    private final Object end$2;

    public FractionalProxy$$anonfun$to$1(FractionalProxy fractionalProxy, FractionalProxy<T> fractionalProxy2) {
        Objects.requireNonNull(fractionalProxy);
        this.$outer = fractionalProxy;
        this.end$2 = fractionalProxy2;
    }

    @Override // scala.Function1
    public final NumericRange.Inclusive<T> apply(T t) {
        return NumericRange$.MODULE$.inclusive(this.$outer.self(), this.end$2, t, this.$outer.integralNum());
    }
}
