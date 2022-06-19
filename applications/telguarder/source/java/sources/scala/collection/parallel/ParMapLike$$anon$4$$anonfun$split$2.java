package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$$anon$4$$anonfun$split$2.class */
public final class ParMapLike$$anon$4$$anonfun$split$2 extends AbstractFunction1<IterableSplitter<V>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParMapLike$$anon$4 $outer;

    public ParMapLike$$anon$4$$anonfun$split$2(ParMapLike$$anon$4 parMapLike$$anon$4) {
        Objects.requireNonNull(parMapLike$$anon$4);
        this.$outer = parMapLike$$anon$4;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((IterableSplitter) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(IterableSplitter<V> iterableSplitter) {
        iterableSplitter.signalDelegate_$eq(this.$outer.signalDelegate());
    }
}
