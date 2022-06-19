package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.collection.GenTraversableOnce;
import scala.collection.generic.CanBuildFrom;
import scala.runtime.AbstractFunction0;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$6.class */
public final class ParIterableLike$$anonfun$6 extends AbstractFunction0<Combiner<U, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParIterableLike $outer;
    private final CanBuildFrom bf$5;
    private final GenTraversableOnce that$1;

    public ParIterableLike$$anonfun$6(ParIterableLike parIterableLike, GenTraversableOnce genTraversableOnce, CanBuildFrom canBuildFrom) {
        Objects.requireNonNull(parIterableLike);
        this.$outer = parIterableLike;
        this.that$1 = genTraversableOnce;
        this.bf$5 = canBuildFrom;
    }

    @Override // scala.Function0
    public final Combiner<U, That> apply() {
        ParIterableLike parIterableLike = this.$outer;
        Combiner<U, That> asCombiner = parIterableLike.builder2ops(this.bf$5.apply(parIterableLike.repr())).asCombiner();
        this.that$1.seq().foreach(new ParIterableLike$$anonfun$6$$anonfun$apply$1(this, asCombiner));
        return asCombiner;
    }
}
