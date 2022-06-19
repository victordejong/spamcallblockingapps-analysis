package scala.collection.parallel;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.collection.GenTraversableOnce;
import scala.collection.Parallel;
import scala.collection.parallel.TraversableOps;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParallelCollectionImplicits$$anon$2.class */
public final class ParallelCollectionImplicits$$anon$2 implements TraversableOps<T> {
    private final GenTraversableOnce t$1;

    public ParallelCollectionImplicits$$anon$2(GenTraversableOnce genTraversableOnce) {
        this.t$1 = genTraversableOnce;
        TraversableOps.Cclass.$init$(this);
    }

    @Override // scala.collection.parallel.TraversableOps
    public ParIterable<T> asParIterable() {
        return (ParIterable) this.t$1;
    }

    @Override // scala.collection.parallel.TraversableOps
    public ParSeq<T> asParSeq() {
        return (ParSeq) this.t$1;
    }

    @Override // scala.collection.parallel.TraversableOps
    public <R> Object ifParSeq(Function1<ParSeq<T>, R> function1) {
        return new TraversableOps<T>.Otherwise<R>(this, function1) { // from class: scala.collection.parallel.ParallelCollectionImplicits$$anon$2$$anon$3
            private final /* synthetic */ ParallelCollectionImplicits$$anon$2 $outer;
            private final Function1 isbody$1;

            {
                Objects.requireNonNull(this);
                this.$outer = this;
                this.isbody$1 = function1;
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // scala.collection.parallel.TraversableOps.Otherwise
            public R otherwise(Function0<R> function0) {
                return this.$outer.isParallel() ? this.isbody$1.apply(this.$outer.asParSeq()) : function0.apply();
            }
        };
    }

    @Override // scala.collection.parallel.TraversableOps
    public boolean isParIterable() {
        return this.t$1 instanceof ParIterable;
    }

    @Override // scala.collection.parallel.TraversableOps
    public boolean isParSeq() {
        return this.t$1 instanceof ParSeq;
    }

    @Override // scala.collection.parallel.TraversableOps
    public boolean isParallel() {
        return this.t$1 instanceof Parallel;
    }
}
