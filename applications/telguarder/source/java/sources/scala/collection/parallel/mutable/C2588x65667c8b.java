package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* renamed from: scala.collection.parallel.mutable.ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$4 */
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$1$$anonfun$apply$mcV$sp$4.class */
public final class C2588x65667c8b extends AbstractFunction1<UnrolledParArrayCombiner<T>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParArray$ParArrayIterator$$anonfun$reverse2combiner$1 $outer;

    public C2588x65667c8b(ParArray$ParArrayIterator$$anonfun$reverse2combiner$1 parArray$ParArrayIterator$$anonfun$reverse2combiner$1) {
        Objects.requireNonNull(parArray$ParArrayIterator$$anonfun$reverse2combiner$1);
        this.$outer = parArray$ParArrayIterator$$anonfun$reverse2combiner$1;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((UnrolledParArrayCombiner) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(UnrolledParArrayCombiner<T> unrolledParArrayCombiner) {
        int remaining = this.$outer.$outer.remaining();
        unrolledParArrayCombiner.sizeHint(remaining);
        this.$outer.$outer.m88xe20c010((Object[]) unrolledParArrayCombiner.buff().lastPtr().array(), this.$outer.$outer.arr(), 0, this.$outer.m92x23990fab().m91i(), this.$outer.m92x23990fab().until());
        unrolledParArrayCombiner.buff().size_$eq(unrolledParArrayCombiner.buff().size() + remaining);
        unrolledParArrayCombiner.buff().lastPtr().size_$eq(remaining);
    }
}
