package scala.concurrent;

import scala.Function2;
import scala.Serializable;
import scala.collection.TraversableOnce;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$reduce$1.class */
public final class Future$$anonfun$reduce$1 extends AbstractFunction1<TraversableOnce<T>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function2 op$2;

    public Future$$anonfun$reduce$1(Function2 function2) {
        this.op$2 = function2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [R, java.lang.Object] */
    public final R apply(TraversableOnce<T> traversableOnce) {
        return traversableOnce.reduceLeft(this.op$2);
    }
}
