package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$$anonfun$splitWithSignalling$1.class */
public final class IterableSplitter$$anonfun$splitWithSignalling$1 extends AbstractFunction1<IterableSplitter<T>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ IterableSplitter $outer;

    public IterableSplitter$$anonfun$splitWithSignalling$1(IterableSplitter<T> iterableSplitter) {
        Objects.requireNonNull(iterableSplitter);
        this.$outer = iterableSplitter;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((IterableSplitter) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(IterableSplitter<T> iterableSplitter) {
        iterableSplitter.signalDelegate_$eq(this.$outer.signalDelegate());
    }
}
