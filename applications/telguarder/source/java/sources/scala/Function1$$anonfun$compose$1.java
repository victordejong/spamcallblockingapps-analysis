package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function1$$anonfun$compose$1.class */
public final class Function1$$anonfun$compose$1 extends AbstractFunction1<A, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function1 $outer;
    private final Function1 g$1;

    public Function1$$anonfun$compose$1(Function1 function1, Function1<T1, R> function12) {
        Objects.requireNonNull(function1);
        this.$outer = function1;
        this.g$1 = function12;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [R, java.lang.Object] */
    @Override // scala.Function1
    public final R apply(A a) {
        return this.$outer.apply(this.g$1.apply(a));
    }
}
