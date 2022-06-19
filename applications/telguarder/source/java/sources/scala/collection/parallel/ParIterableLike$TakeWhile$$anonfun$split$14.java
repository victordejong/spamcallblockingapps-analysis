package scala.collection.parallel;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$TakeWhile$$anonfun$split$14.class */
public final class ParIterableLike$TakeWhile$$anonfun$split$14 extends AbstractFunction1<Tuple2<IterableSplitter<T>, Object>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$TakeWhile$$anonfun$split$14(ParIterableLike<T, Repr, Sequential>.TakeWhile<U, This> takeWhile) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<IterableSplitter<T>, Object> tuple2) {
        return tuple2 != 0;
    }
}
