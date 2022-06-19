package scala.collection;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* renamed from: scala.collection.TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1$$anonfun$apply$mcV$sp$6 */
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$scala$collection$TraversableLike$$sliceInternal$1$$anonfun$apply$mcV$sp$6.class */
public final class C2574xe2f31145 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ C2575xfc37236b $outer;

    public C2574xe2f31145(C2575xfc37236b c2575xfc37236b) {
        Objects.requireNonNull(c2575xfc37236b);
        this.$outer = c2575xfc37236b;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        if (this.$outer.i$1.elem >= this.$outer.from$1) {
            this.$outer.b$9.$plus$eq((Builder) a);
        } else {
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        this.$outer.i$1.elem++;
        if (this.$outer.i$1.elem < this.$outer.until$1) {
            return;
        }
        throw Traversable$.MODULE$.breaks().m6462break();
    }
}
