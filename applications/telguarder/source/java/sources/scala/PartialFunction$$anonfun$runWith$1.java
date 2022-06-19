package scala;

import java.util.Objects;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/PartialFunction$$anonfun$runWith$1.class */
public final class PartialFunction$$anonfun$runWith$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ PartialFunction $outer;
    private final Function1 action$1;

    public PartialFunction$$anonfun$runWith$1(PartialFunction partialFunction, PartialFunction<A, B> partialFunction2) {
        Objects.requireNonNull(partialFunction);
        this.$outer = partialFunction;
        this.action$1 = partialFunction2;
    }

    @Override // scala.Function1
    public final boolean apply(A a) {
        boolean z;
        Object applyOrElse = this.$outer.applyOrElse(a, PartialFunction$.MODULE$.scala$PartialFunction$$checkFallback());
        if (PartialFunction$.MODULE$.scala$PartialFunction$$fallbackOccurred(applyOrElse)) {
            z = false;
        } else {
            this.action$1.apply(applyOrElse);
            z = true;
        }
        return z;
    }
}
