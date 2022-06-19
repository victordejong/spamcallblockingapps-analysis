package scala.collection.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayOps$$anonfun$transpose$1$$anonfun$apply$1.class */
public final class ArrayOps$$anonfun$transpose$1$$anonfun$apply$1 extends AbstractFunction1<U, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ArrayOps$$anonfun$transpose$1 $outer;
    private final IntRef i$1;

    public ArrayOps$$anonfun$transpose$1$$anonfun$apply$1(ArrayOps$$anonfun$transpose$1 arrayOps$$anonfun$transpose$1, IntRef intRef) {
        Objects.requireNonNull(arrayOps$$anonfun$transpose$1);
        this.$outer = arrayOps$$anonfun$transpose$1;
        this.i$1 = intRef;
    }

    @Override // scala.Function1
    public final void apply(U u) {
        this.$outer.bs$1[this.i$1.elem].$plus$eq((ArrayBuilder) u);
        this.i$1.elem++;
    }
}
