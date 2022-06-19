package scala.collection.mutable;

import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/History$$anonfun$events$1.class */
public final class History$$anonfun$events$1 extends AbstractFunction1<Tuple2<Pub, Evt>, Evt> implements Serializable {
    public static final long serialVersionUID = 0;

    public History$$anonfun$events$1(History<Evt, Pub> history) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return apply((Tuple2<Pub, Object>) obj);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [Evt, java.lang.Object] */
    public final Evt apply(Tuple2<Pub, Evt> tuple2) {
        return tuple2.mo268_2();
    }
}
