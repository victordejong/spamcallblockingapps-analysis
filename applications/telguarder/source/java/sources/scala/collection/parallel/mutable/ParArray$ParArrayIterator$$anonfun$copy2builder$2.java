package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Array$;
import scala.Serializable;
import scala.collection.SeqLike;
import scala.collection.parallel.mutable.ParArray;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$copy2builder$2.class */
public final class ParArray$ParArrayIterator$$anonfun$copy2builder$2 extends AbstractFunction1<ResizableParArrayCombiner<T>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParArray.ParArrayIterator $outer;

    public ParArray$ParArrayIterator$$anonfun$copy2builder$2(ParArray<T>.ParArrayIterator parArrayIterator) {
        Objects.requireNonNull(parArrayIterator);
        this.$outer = parArrayIterator;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((ResizableParArrayCombiner) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(ResizableParArrayCombiner<T> resizableParArrayCombiner) {
        Array$.MODULE$.copy(this.$outer.arr(), this.$outer.m91i(), ((ExposedArrayBuffer) resizableParArrayCombiner.lastbuff()).internalArray(), ((SeqLike) resizableParArrayCombiner.lastbuff()).size(), this.$outer.until() - this.$outer.m91i());
        ((ExposedArrayBuffer) resizableParArrayCombiner.lastbuff()).setInternalSize(this.$outer.remaining());
    }
}
