package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/Responder$$anon$3$$anonfun$respond$1.class */
public final class Responder$$anon$3$$anonfun$respond$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Responder$$anon$3 $outer;
    private final Function1 k$2;

    public Responder$$anon$3$$anonfun$respond$1(Responder$$anon$3 responder$$anon$3, Function1 function1) {
        Objects.requireNonNull(responder$$anon$3);
        this.$outer = responder$$anon$3;
        this.k$2 = function1;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        this.k$2.apply(this.$outer.f$2.apply(a));
    }
}
