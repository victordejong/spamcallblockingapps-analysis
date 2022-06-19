package scala.collection.parallel;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter$$anonfun$splitWithSignalling$2.class */
public final class SeqSplitter$$anonfun$splitWithSignalling$2 extends AbstractFunction1<SeqSplitter<T>, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ SeqSplitter $outer;

    public SeqSplitter$$anonfun$splitWithSignalling$2(SeqSplitter<T> seqSplitter) {
        Objects.requireNonNull(seqSplitter);
        this.$outer = seqSplitter;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((SeqSplitter) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(SeqSplitter<T> seqSplitter) {
        seqSplitter.signalDelegate_$eq(this.$outer.signalDelegate());
    }
}
