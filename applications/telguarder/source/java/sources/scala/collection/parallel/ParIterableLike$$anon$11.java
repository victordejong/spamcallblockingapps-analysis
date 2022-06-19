package scala.collection.parallel;

import java.util.Objects;
import scala.Function1;
import scala.Function2;
import scala.collection.parallel.ParIterableLike;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anon$11.class */
public final class ParIterableLike$$anon$11 implements ParIterableLike<T, Repr, Sequential>.TaskOps<R, Tp> {
    private final /* synthetic */ ParIterableLike $outer;
    public final ParIterableLike.StrictSplitterCheckTask tsk$1;

    /* JADX WARN: Multi-variable type inference failed */
    public ParIterableLike$$anon$11(ParIterableLike parIterableLike, ParIterableLike<T, Repr, Sequential> parIterableLike2) {
        Objects.requireNonNull(parIterableLike);
        this.$outer = parIterableLike;
        this.tsk$1 = parIterableLike2;
    }

    @Override // scala.collection.parallel.ParIterableLike.TaskOps
    public <R3, R2, Tp2> ParIterableLike<T, Repr, Sequential>.SeqComposite<R, R2, R3, ParIterableLike<T, Repr, Sequential>.StrictSplitterCheckTask<R, Tp>, ParIterableLike<T, Repr, Sequential>.StrictSplitterCheckTask<R2, Tp2>> compose(ParIterableLike<T, Repr, Sequential>.StrictSplitterCheckTask<R2, Tp2> strictSplitterCheckTask, Function2<R, R2, R3> function2) {
        return new ParIterableLike<T, Repr, Sequential>.SeqComposite<R, R2, R3, ParIterableLike<T, Repr, Sequential>.StrictSplitterCheckTask<R, Tp>, ParIterableLike<T, Repr, Sequential>.StrictSplitterCheckTask<R2, Tp2>>(this, strictSplitterCheckTask, function2) { // from class: scala.collection.parallel.ParIterableLike$$anon$11$$anon$1
            private final Function2 resCombiner$1;

            /* JADX WARN: Incorrect inner types in method signature: (Lscala/collection/parallel/ParIterableLike<TT;TRepr;TSequential;>.$anon$11;)V */
            {
                this.resCombiner$1 = function2;
                ParIterableLike scala$collection$parallel$ParIterableLike$$anon$$$outer = this.scala$collection$parallel$ParIterableLike$$anon$$$outer();
                ParIterableLike.StrictSplitterCheckTask strictSplitterCheckTask2 = this.tsk$1;
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [R3, java.lang.Object] */
            @Override // scala.collection.parallel.ParIterableLike.Composite
            public R3 combineResults(R r, R2 r2) {
                return this.resCombiner$1.apply(r, r2);
            }
        };
    }

    @Override // scala.collection.parallel.ParIterableLike.TaskOps
    public <R1> ParIterableLike<T, Repr, Sequential>.ResultMapping<R, Tp, R1> mapResult(Function1<R, R1> function1) {
        return new ParIterableLike<T, Repr, Sequential>.ResultMapping<R, Tp, R1>(this, function1) { // from class: scala.collection.parallel.ParIterableLike$$anon$11$$anon$3
            private final Function1 mapping$1;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Incorrect inner types in method signature: (Lscala/collection/parallel/ParIterableLike<TT;TRepr;TSequential;>.$anon$11;)V */
            {
                super(this.scala$collection$parallel$ParIterableLike$$anon$$$outer(), this.tsk$1);
                this.mapping$1 = function1;
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, R1] */
            @Override // scala.collection.parallel.ParIterableLike.ResultMapping
            public R1 map(R r) {
                return this.mapping$1.apply(r);
            }
        };
    }

    @Override // scala.collection.parallel.ParIterableLike.TaskOps
    public <R3, R2, Tp2> ParIterableLike<T, Repr, Sequential>.ParComposite<R, R2, R3, ParIterableLike<T, Repr, Sequential>.StrictSplitterCheckTask<R, Tp>, ParIterableLike<T, Repr, Sequential>.StrictSplitterCheckTask<R2, Tp2>> parallel(ParIterableLike<T, Repr, Sequential>.StrictSplitterCheckTask<R2, Tp2> strictSplitterCheckTask, Function2<R, R2, R3> function2) {
        return new ParIterableLike<T, Repr, Sequential>.ParComposite<R, R2, R3, ParIterableLike<T, Repr, Sequential>.StrictSplitterCheckTask<R, Tp>, ParIterableLike<T, Repr, Sequential>.StrictSplitterCheckTask<R2, Tp2>>(this, strictSplitterCheckTask, function2) { // from class: scala.collection.parallel.ParIterableLike$$anon$11$$anon$2
            private final Function2 resCombiner$2;

            /* JADX WARN: Incorrect inner types in method signature: (Lscala/collection/parallel/ParIterableLike<TT;TRepr;TSequential;>.$anon$11;)V */
            {
                this.resCombiner$2 = function2;
                ParIterableLike scala$collection$parallel$ParIterableLike$$anon$$$outer = this.scala$collection$parallel$ParIterableLike$$anon$$$outer();
                ParIterableLike.StrictSplitterCheckTask strictSplitterCheckTask2 = this.tsk$1;
            }

            /* JADX WARN: Type inference failed for: r0v2, types: [R3, java.lang.Object] */
            @Override // scala.collection.parallel.ParIterableLike.Composite
            public R3 combineResults(R r, R2 r2) {
                return this.resCombiner$2.apply(r, r2);
            }
        };
    }

    public /* synthetic */ ParIterableLike scala$collection$parallel$ParIterableLike$$anon$$$outer() {
        return this.$outer;
    }
}
