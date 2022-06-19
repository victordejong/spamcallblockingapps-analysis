package scala.collection.immutable;

import scala.Function1;
import scala.math.Integral;
import scala.runtime.BoxedUnit;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/NumericRange$$anon$1.class */
public final class NumericRange$$anon$1 extends NumericRange<A> {
    private volatile boolean bitmap$0;
    public final Function1 fm$1;
    private final NumericRange self$1;
    private NumericRange<T> underlyingRange;
    private final Integral unum$1;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NumericRange$$anon$1(NumericRange numericRange, Function1 function1, Integral integral, NumericRange numericRange2) {
        super(function1.apply(numericRange.start()), function1.apply(numericRange.end()), function1.apply(numericRange.step()), numericRange.isInclusive(), integral);
        this.fm$1 = function1;
        this.unum$1 = integral;
        this.self$1 = numericRange2;
    }

    private NumericRange<T> underlyingRange() {
        return this.bitmap$0 ? this.underlyingRange : underlyingRange$lzycompute();
    }

    private NumericRange underlyingRange$lzycompute() {
        synchronized (this) {
            if (!this.bitmap$0) {
                this.underlyingRange = this.self$1;
                this.bitmap$0 = true;
            }
            BoxedUnit boxedUnit = BoxedUnit.UNIT;
        }
        this.self$1 = null;
        return this.underlyingRange;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [A, java.lang.Object] */
    @Override // scala.collection.immutable.NumericRange, scala.collection.GenSeqLike
    public A apply(int i) {
        return this.fm$1.apply(underlyingRange().apply(i));
    }

    @Override // scala.collection.immutable.NumericRange, scala.Function1
    public /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply(BoxesRunTime.unboxToInt(obj));
    }

    @Override // scala.collection.immutable.NumericRange
    public boolean containsTyped(A a) {
        return underlyingRange().exists(new NumericRange$$anon$1$$anonfun$containsTyped$1(this, a));
    }

    @Override // scala.collection.immutable.NumericRange
    public NumericRange<A> copy(A a, A a2, A a3) {
        return isInclusive() ? NumericRange$.MODULE$.inclusive(a, a2, a3, this.unum$1) : NumericRange$.MODULE$.apply(a, a2, a3, this.unum$1);
    }

    @Override // scala.collection.immutable.NumericRange, scala.collection.AbstractIterable, scala.collection.TraversableLike, scala.collection.generic.FilterMonadic, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.GenTraversableLike, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public <U> void foreach(Function1<A, U> function1) {
        underlyingRange().foreach(new NumericRange$$anon$1$$anonfun$foreach$1(this, function1));
    }

    @Override // scala.collection.immutable.NumericRange, scala.collection.AbstractSeq, scala.collection.AbstractIterable, scala.collection.AbstractTraversable, scala.collection.TraversableLike, scala.collection.TraversableOnce, scala.collection.GenTraversableOnce, scala.collection.generic.GenericTraversableTemplate, scala.collection.IterableLike
    public boolean isEmpty() {
        return underlyingRange().isEmpty();
    }
}
