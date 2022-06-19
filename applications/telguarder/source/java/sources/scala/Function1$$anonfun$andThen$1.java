package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/Function1$$anonfun$andThen$1.class */
public final class Function1$$anonfun$andThen$1 extends AbstractFunction1<T1, A> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Function1 $outer;
    private final Function1 g$2;

    public Function1$$anonfun$andThen$1(Function1 function1, Function1<T1, R> function12) {
        Objects.requireNonNull(function1);
        this.$outer = function1;
        this.g$2 = function12;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [A, java.lang.Object] */
    @Override // scala.Function1
    public final A apply(T1 t1) {
        return this.g$2.apply(this.$outer.apply(t1));
    }
}
