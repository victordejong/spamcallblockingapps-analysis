package scala.concurrent;

import scala.Function2;
import scala.Serializable;
import scala.collection.TraversableOnce;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$fold$1.class */
public final class Future$$anonfun$fold$1 extends AbstractFunction1<TraversableOnce<T>, R> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function2 op$1;
    private final Object zero$1;

    public Future$$anonfun$fold$1(Object obj, Function2 function2) {
        this.zero$1 = obj;
        this.op$1 = function2;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [R, java.lang.Object] */
    public final R apply(TraversableOnce<T> traversableOnce) {
        return traversableOnce.foldLeft(this.zero$1, this.op$1);
    }
}
