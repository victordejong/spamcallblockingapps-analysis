package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/Responder$$anon$4$$anonfun$respond$3.class */
public final class Responder$$anon$4$$anonfun$respond$3 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Responder$$anon$4 $outer;
    private final Function1 k$3;

    public Responder$$anon$4$$anonfun$respond$3(Responder$$anon$4 responder$$anon$4, Function1 function1) {
        Objects.requireNonNull(responder$$anon$4);
        this.$outer = responder$$anon$4;
        this.k$3 = function1;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        if (BoxesRunTime.unboxToBoolean(this.$outer.p$1.apply(a))) {
            this.k$3.apply(a);
        }
    }
}
