package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$8$$anonfun$apply$2.class */
public final class ParIterableLike$$anonfun$8$$anonfun$apply$2 extends AbstractFunction0<Combiner<T, Repr>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike$$anonfun$8 $outer;

    public ParIterableLike$$anonfun$8$$anonfun$apply$2(ParIterableLike$$anonfun$8 parIterableLike$$anonfun$8) {
        Objects.requireNonNull(parIterableLike$$anonfun$8);
        this.$outer = parIterableLike$$anonfun$8;
    }

    @Override // scala.Function0
    public final Combiner<T, Repr> apply() {
        return this.$outer.$outer.combinerFactory().apply();
    }
}
