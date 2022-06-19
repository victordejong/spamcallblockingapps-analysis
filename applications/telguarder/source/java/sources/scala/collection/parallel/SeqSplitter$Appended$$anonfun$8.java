package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.parallel.SeqSplitter;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter$Appended$$anonfun$8.class */
public final class SeqSplitter$Appended$$anonfun$8 extends AbstractFunction1<Tuple2<Object, Object>, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final int selfrem$1;

    /* JADX WARN: Multi-variable type inference failed */
    public SeqSplitter$Appended$$anonfun$8(SeqSplitter.Appended appended, SeqSplitter<T>.Appended<U, PI> appended2) {
        this.selfrem$1 = appended2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<Object, Object> tuple2) {
        return tuple2._2$mcI$sp() < this.selfrem$1;
    }
}
