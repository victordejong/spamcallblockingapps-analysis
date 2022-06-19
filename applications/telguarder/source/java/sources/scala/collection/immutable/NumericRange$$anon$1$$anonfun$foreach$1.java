package scala.collection.immutable;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/NumericRange$$anon$1$$anonfun$foreach$1.class */
public final class NumericRange$$anon$1$$anonfun$foreach$1 extends AbstractFunction1<T, U> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ NumericRange$$anon$1 $outer;
    private final Function1 f$1;

    public NumericRange$$anon$1$$anonfun$foreach$1(NumericRange$$anon$1 numericRange$$anon$1, Function1 function1) {
        Objects.requireNonNull(numericRange$$anon$1);
        this.$outer = numericRange$$anon$1;
        this.f$1 = function1;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [U, java.lang.Object] */
    @Override // scala.Function1
    public final U apply(T t) {
        return this.f$1.apply(this.$outer.fm$1.apply(t));
    }
}
