package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/SeqSplitter$Appended$$anonfun$10.class */
public final class SeqSplitter$Appended$$anonfun$10 extends AbstractFunction1<Tuple2<Object, Object>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public SeqSplitter$Appended$$anonfun$10(SeqSplitter<T>.Appended<U, PI> appended) {
    }

    public final int apply(Tuple2<Object, Object> tuple2) {
        return tuple2._1$mcI$sp();
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply((Tuple2) obj));
    }
}
