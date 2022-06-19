package scala.util;

import java.util.Objects;
import scala.PartialFunction;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/util/Failure$$anonfun$recover$1.class */
public final class Failure$$anonfun$recover$1 extends AbstractFunction0<U> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Failure $outer;
    private final PartialFunction rescueException$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Failure$$anonfun$recover$1(Failure failure, Failure<T> failure2) {
        Objects.requireNonNull(failure);
        this.$outer = failure;
        this.rescueException$1 = failure2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [U, java.lang.Object] */
    @Override // scala.Function0
    public final U apply() {
        return this.rescueException$1.apply(this.$outer.exception());
    }
}
