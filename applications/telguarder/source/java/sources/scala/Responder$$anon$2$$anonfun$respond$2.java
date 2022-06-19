package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/Responder$$anon$2$$anonfun$respond$2.class */
public final class Responder$$anon$2$$anonfun$respond$2 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Responder$$anon$2 $outer;
    private final Function1 k$1;

    public Responder$$anon$2$$anonfun$respond$2(Responder$$anon$2 responder$$anon$2, Function1 function1) {
        Objects.requireNonNull(responder$$anon$2);
        this.$outer = responder$$anon$2;
        this.k$1 = function1;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        ((Responder) this.$outer.f$1.apply(a)).respond(this.k$1);
    }
}
