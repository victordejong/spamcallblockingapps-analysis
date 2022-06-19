package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$scan$1$$anonfun$apply$3.class */
public final class ParIterableLike$$anonfun$scan$1$$anonfun$apply$3 extends AbstractFunction0<Combiner<U, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike$$anonfun$scan$1 $outer;

    public ParIterableLike$$anonfun$scan$1$$anonfun$apply$3(ParIterableLike$$anonfun$scan$1 parIterableLike$$anonfun$scan$1) {
        Objects.requireNonNull(parIterableLike$$anonfun$scan$1);
        this.$outer = parIterableLike$$anonfun$scan$1;
    }

    @Override // scala.Function0
    public final Combiner<U, That> apply() {
        return this.$outer.$outer.builder2ops(this.$outer.bf$6.apply(this.$outer.$outer.repr())).asCombiner();
    }
}
