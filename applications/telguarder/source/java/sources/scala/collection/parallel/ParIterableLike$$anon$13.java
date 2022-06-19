package scala.collection.parallel;

import java.util.Objects;
import scala.Function0;
import scala.Function1;
import scala.collection.mutable.Builder;
import scala.collection.parallel.ParIterableLike;
import scala.reflect.ClassTag;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anon$13.class */
public final class ParIterableLike$$anon$13 implements ParIterableLike<T, Repr, Sequential>.BuilderOps<Elem, To> {
    private final /* synthetic */ ParIterableLike $outer;
    public final Builder cb$2;

    /* JADX WARN: Multi-variable type inference failed */
    public ParIterableLike$$anon$13(ParIterableLike parIterableLike, ParIterableLike<T, Repr, Sequential> parIterableLike2) {
        Objects.requireNonNull(parIterableLike);
        this.$outer = parIterableLike;
        this.cb$2 = parIterableLike2;
        ParIterableLike.BuilderOps.Cclass.$init$(this);
    }

    @Override // scala.collection.parallel.ParIterableLike.BuilderOps
    public Combiner<Elem, To> asCombiner() {
        return (Combiner) this.cb$2;
    }

    @Override // scala.collection.parallel.ParIterableLike.BuilderOps
    public <Cmb> Object ifIs(Function1<Cmb, BoxedUnit> function1) {
        return new ParIterableLike<T, Repr, Sequential>.Otherwise<Elem, To>.Otherwise<Cmb>(this, function1) { // from class: scala.collection.parallel.ParIterableLike$$anon$13$$anon$14
            private final /* synthetic */ ParIterableLike$$anon$13 $outer;
            private final Function1 isbody$1;

            /* JADX WARN: Incorrect inner types in method signature: (Lscala/collection/parallel/ParIterableLike<TT;TRepr;TSequential;>.$anon$13;)V */
            {
                Objects.requireNonNull(this);
                this.$outer = this;
                this.isbody$1 = function1;
            }

            @Override // scala.collection.parallel.ParIterableLike.BuilderOps.Otherwise
            public void otherwise(Function0<BoxedUnit> function0, ClassTag<Cmb> classTag) {
                Class<?> cls = this.$outer.cb$2.getClass();
                Class<?> runtimeClass = classTag.runtimeClass();
                if (cls != null ? !cls.equals(runtimeClass) : runtimeClass != null) {
                    function0.apply$mcV$sp();
                } else {
                    this.isbody$1.apply(this.$outer.cb$2);
                }
            }
        };
    }

    @Override // scala.collection.parallel.ParIterableLike.BuilderOps
    public boolean isCombiner() {
        return this.cb$2 instanceof Combiner;
    }

    @Override // scala.collection.parallel.ParIterableLike.BuilderOps
    public /* synthetic */ ParIterableLike scala$collection$parallel$ParIterableLike$BuilderOps$$$outer() {
        return this.$outer;
    }
}
