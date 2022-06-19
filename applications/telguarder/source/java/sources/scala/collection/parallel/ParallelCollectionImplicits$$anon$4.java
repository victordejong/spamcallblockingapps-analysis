package scala.collection.parallel;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.collection.Parallel;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.CanCombineFrom;
import scala.collection.parallel.FactoryOps;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParallelCollectionImplicits$$anon$4.class */
public final class ParallelCollectionImplicits$$anon$4 implements FactoryOps<From, Elem, To> {
    private final CanBuildFrom bf$1;

    public ParallelCollectionImplicits$$anon$4(CanBuildFrom canBuildFrom) {
        this.bf$1 = canBuildFrom;
        FactoryOps.Cclass.$init$(this);
    }

    @Override // scala.collection.parallel.FactoryOps
    public CanCombineFrom<From, Elem, To> asParallel() {
        return (CanCombineFrom) this.bf$1;
    }

    @Override // scala.collection.parallel.FactoryOps
    public <R> Object ifParallel(Function1<CanCombineFrom<From, Elem, To>, R> function1) {
        return new FactoryOps<From, Elem, To>.Otherwise<R>(this, function1) { // from class: scala.collection.parallel.ParallelCollectionImplicits$$anon$4$$anon$5
            private final /* synthetic */ ParallelCollectionImplicits$$anon$4 $outer;
            private final Function1 isbody$2;

            {
                Objects.requireNonNull(this);
                this.$outer = this;
                this.isbody$2 = function1;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // scala.collection.parallel.FactoryOps.Otherwise
            public R otherwise(Function0<R> function0) {
                return this.$outer.isParallel() ? this.isbody$2.apply(this.$outer.asParallel()) : function0.apply();
            }
        };
    }

    @Override // scala.collection.parallel.FactoryOps
    public boolean isParallel() {
        return this.bf$1 instanceof Parallel;
    }
}
