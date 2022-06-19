package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$Taken$$anonfun$takeSeq$1.class */
public final class IterableSplitter$Taken$$anonfun$takeSeq$1 extends AbstractFunction1<PI, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public IterableSplitter$Taken$$anonfun$takeSeq$1(IterableSplitter<T>.Taken taken) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((IterableSplitter) obj));
    }

    public final boolean apply(IterableSplitter iterableSplitter) {
        return iterableSplitter.remaining() > 0;
    }
}
