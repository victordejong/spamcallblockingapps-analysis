package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/IterableSplitter$Taken$$anonfun$4.class */
public final class IterableSplitter$Taken$$anonfun$4 extends AbstractFunction1<Tuple2<PI, Tuple2<Object, Object>>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public IterableSplitter$Taken$$anonfun$4(IterableSplitter<T>.Taken taken) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<PI, Tuple2<Object, Object>> tuple2) {
        return (tuple2 == 0 || tuple2.mo268_2() == null) ? false : true;
    }
}
