package scala;

import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/Responder$$anonfun$run$1.class */
public final class Responder$$anonfun$run$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef result$1;

    public Responder$$anonfun$run$1(ObjectRef objectRef) {
        this.result$1 = objectRef;
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [scala.Some, T] */
    @Override // scala.Function1
    public final void apply(A a) {
        this.result$1.elem = new Some(a);
    }
}
