package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction2;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter$Taken$$anonfun$psplit$1.class */
public final class SeqSplitter$Taken$$anonfun$psplit$1 extends AbstractFunction2<SeqSplitter<T>, Object, SeqSplitter<T>> implements Serializable {
    public static final long serialVersionUID = 0;

    public SeqSplitter$Taken$$anonfun$psplit$1(SeqSplitter<T>.Taken taken) {
    }

    @Override // scala.Function2
    public final /* bridge */ /* synthetic */ Object apply(Object obj, Object obj2) {
        return apply((SeqSplitter) obj, BoxesRunTime.unboxToInt(obj2));
    }

    public final SeqSplitter<T> apply(SeqSplitter<T> seqSplitter, int i) {
        return seqSplitter.take(i);
    }
}
