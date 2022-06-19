package scala.collection.parallel.mutable;

import java.util.Objects;
import scala.Serializable;
import scala.collection.parallel.mutable.ParArray;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$ParArrayIterator$$anonfun$reverse2combiner$2.class */
public final class ParArray$ParArrayIterator$$anonfun$reverse2combiner$2 extends AbstractFunction1<ResizableParArrayCombiner<T>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParArray.ParArrayIterator $outer;

    public ParArray$ParArrayIterator$$anonfun$reverse2combiner$2(ParArray<T>.ParArrayIterator parArrayIterator) {
        Objects.requireNonNull(parArrayIterator);
        this.$outer = parArrayIterator;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((ResizableParArrayCombiner) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(ResizableParArrayCombiner<T> resizableParArrayCombiner) {
        int remaining = this.$outer.remaining();
        resizableParArrayCombiner.sizeHint(remaining);
        Object[] internalArray = ((ExposedArrayBuffer) resizableParArrayCombiner.lastbuff()).internalArray();
        ParArray.ParArrayIterator parArrayIterator = this.$outer;
        parArrayIterator.m88xe20c010(internalArray, parArrayIterator.arr(), 0, this.$outer.m91i(), this.$outer.until());
        ((ExposedArrayBuffer) resizableParArrayCombiner.lastbuff()).setInternalSize(remaining);
    }
}
