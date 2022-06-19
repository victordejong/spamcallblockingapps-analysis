package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Array$;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* renamed from: scala.collection.parallel.mutable.ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3 */
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$1$$anonfun$apply$mcV$sp$3.class */
public final class C2586xceb1fb45 extends AbstractFunction1<UnrolledParArrayCombiner<T>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParArray$ParArrayIterator$$anonfun$copy2builder$1 $outer;

    public C2586xceb1fb45(ParArray$ParArrayIterator$$anonfun$copy2builder$1 parArray$ParArrayIterator$$anonfun$copy2builder$1) {
        Objects.requireNonNull(parArray$ParArrayIterator$$anonfun$copy2builder$1);
        this.$outer = parArray$ParArrayIterator$$anonfun$copy2builder$1;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((UnrolledParArrayCombiner) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(UnrolledParArrayCombiner<T> unrolledParArrayCombiner) {
        Array$.MODULE$.copy(this.$outer.$outer.arr(), this.$outer.$outer.m91i(), (Object[]) unrolledParArrayCombiner.buff().lastPtr().array(), 0, this.$outer.$outer.until() - this.$outer.m93x23990fab().m91i());
        unrolledParArrayCombiner.buff().size_$eq((unrolledParArrayCombiner.buff().size() + this.$outer.m93x23990fab().until()) - this.$outer.m93x23990fab().m91i());
        unrolledParArrayCombiner.buff().lastPtr().size_$eq(this.$outer.m93x23990fab().until() - this.$outer.m93x23990fab().m91i());
    }
}
