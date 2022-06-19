package scala.runtime;

import java.util.Objects;
import scala.Serializable;
import scala.collection.immutable.NumericRange;
import scala.collection.immutable.NumericRange$;
/* loaded from: classes3-dex2jar.jar:scala/runtime/FractionalProxy$$anonfun$until$1.class */
public final class FractionalProxy$$anonfun$until$1 extends AbstractFunction1<T, NumericRange.Exclusive<T>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ FractionalProxy $outer;
    private final Object end$1;

    public FractionalProxy$$anonfun$until$1(FractionalProxy fractionalProxy, FractionalProxy<T> fractionalProxy2) {
        Objects.requireNonNull(fractionalProxy);
        this.$outer = fractionalProxy;
        this.end$1 = fractionalProxy2;
    }

    @Override // scala.Function1
    public final NumericRange.Exclusive<T> apply(T t) {
        return NumericRange$.MODULE$.apply(this.$outer.self(), this.end$1, t, this.$outer.integralNum());
    }
}
