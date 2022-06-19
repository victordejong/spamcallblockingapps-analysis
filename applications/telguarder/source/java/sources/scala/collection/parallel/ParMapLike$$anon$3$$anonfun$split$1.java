package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParMapLike$$anon$3$$anonfun$split$1.class */
public final class ParMapLike$$anon$3$$anonfun$split$1 extends AbstractFunction1<IterableSplitter<K>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ ParMapLike$$anon$3 $outer;

    public ParMapLike$$anon$3$$anonfun$split$1(ParMapLike$$anon$3 parMapLike$$anon$3) {
        Objects.requireNonNull(parMapLike$$anon$3);
        this.$outer = parMapLike$$anon$3;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((IterableSplitter) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(IterableSplitter<K> iterableSplitter) {
        iterableSplitter.signalDelegate_$eq(this.$outer.signalDelegate());
    }
}
