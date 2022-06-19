package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.collection.TraversableOnce;
import scala.collection.immutable.VectorBuilder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/LazyParVectorCombiner$$anonfun$result$1.class */
public final class LazyParVectorCombiner$$anonfun$result$1 extends AbstractFunction1<VectorBuilder<T>, VectorBuilder<T>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final VectorBuilder rvb$1;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyParVectorCombiner$$anonfun$result$1(LazyParVectorCombiner lazyParVectorCombiner, LazyParVectorCombiner<T> lazyParVectorCombiner2) {
        this.rvb$1 = lazyParVectorCombiner2;
    }

    public final VectorBuilder<T> apply(VectorBuilder<T> vectorBuilder) {
        return this.rvb$1.$plus$plus$eq((TraversableOnce) vectorBuilder.result());
    }
}
