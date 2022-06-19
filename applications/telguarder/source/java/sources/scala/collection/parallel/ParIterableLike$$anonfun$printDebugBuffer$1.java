package scala.collection.parallel;

import java.util.Objects;
import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$printDebugBuffer$1.class */
public final class ParIterableLike$$anonfun$printDebugBuffer$1 extends AbstractFunction1<Function1<Object, BoxedUnit>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike $outer;

    public ParIterableLike$$anonfun$printDebugBuffer$1(ParIterableLike<T, Repr, Sequential> parIterableLike) {
        Objects.requireNonNull(parIterableLike);
        this.$outer = parIterableLike;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Function1) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Function1<Object, BoxedUnit> function1) {
        this.$outer.debugBuffer().foreach(new ParIterableLike$$anonfun$printDebugBuffer$1$$anonfun$apply$5(this, function1));
    }
}
